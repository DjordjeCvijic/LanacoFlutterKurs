// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CommonMethod {
  static callMethodWithLoadingDialog({
    required BuildContext context,
    required Function callback,
    required Function onFinished,
    String? message,
  }) async {
    showDialog(
      context: context,
      builder: (_) => PopScope(
        canPop: false,
        child: Center(
          child: Material(
            color: Colors.transparent,
            child: Container(
              height: 120,
              width: MediaQuery.of(context).size.width * 0.8,
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(16),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (message != null) ...[
                    Text(message),
                    const Gap(16),
                  ],
                  const CircularProgressIndicator()
                ],
              ),
            ),
          ),
        ),
      ),
    );
    await callback();
    Navigator.of(context).pop();
    onFinished();
  }
}
