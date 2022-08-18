import 'dart:async';
import 'dart:ffi';

import 'package:chat_app/components/rounded_button.dart';
import 'package:chat_app/screens/chat_screen.dart';
import 'package:chat_app/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class VerifyEmailPage extends StatefulWidget {
  VerifyEmailPage({Key? key}) : super(key: key);

  @override
  State<VerifyEmailPage> createState() => _VerifyEmailPageState();
}

class _VerifyEmailPageState extends State<VerifyEmailPage> {
  bool isEmailVerified = false;
  bool canResendEmail = false;
  Timer? timer;

  @override
  void initState() {
    super.initState();

    ///User need to be created before
    isEmailVerified = FirebaseAuth.instance.currentUser!.emailVerified;

    if (!isEmailVerified) {
      sendEmailVerification();

      timer = Timer.periodic(
        const Duration(seconds: 3),
        (_) => checkEmailVerified(),
      );
    }
  }

  Future<void> sendEmailVerification() async {
    try {
      final user = FirebaseAuth.instance.currentUser!;
      await user.sendEmailVerification();

      setState(() => canResendEmail = false);
      await Future.delayed(const Duration(seconds: 4));
      setState(() => canResendEmail = true);
    } catch (e) {
      Utils.showSnackBar(e.toString());
    }
  }

  Future checkEmailVerified() async {
    await FirebaseAuth.instance.currentUser!.reload();

    setState(() {
      isEmailVerified = FirebaseAuth.instance.currentUser!.emailVerified;
    });

    if (isEmailVerified) {
      timer?.cancel();
    }
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => isEmailVerified
      ? const ChatScreen()
      : Scaffold(
          appBar: AppBar(
            title: const Text('Verify Email'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const Text(
                'A varification email has been sent to your email.',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 24),
              RoundedButton(
                title: 'Resent Email',
                color: Colors.lightBlueAccent,
                onPressed: sendEmailVerification,
              ),
              RoundedButton(
                title: 'Cancel',
                color: Colors.grey,
                onPressed: () => FirebaseAuth.instance.signOut(),
              ),
            ],
          ),
        );
}
