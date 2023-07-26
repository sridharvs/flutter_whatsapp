import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_whatsapp/colors.dart';
import 'package:flutter_whatsapp/features/status/controller/status_contoller.dart';

class ConfirmStatusScreen extends ConsumerWidget {
  static const String routeName = '/confirm-status-screen';
  final File file;
  const ConfirmStatusScreen({
    required this.file,
    super.key,
  });

  void addStatus(WidgetRef ref, BuildContext context) {
    ref.read(statusControllerProvider).addStatus(file, context);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: AspectRatio(
          aspectRatio: 9 / 16,
          child: Image.file(file),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => addStatus(ref, context),
        backgroundColor: tabColor,
        child: const Icon(
          Icons.done,
          color: Colors.white,
        ),
      ),
    );
  }
}
