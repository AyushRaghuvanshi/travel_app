import 'package:flutter/material.dart';
import 'package:travel/utils/constants/textstyles.dart';

class PrimaryButton extends StatelessWidget {
  final String label;
  final bool isLoading;
  final bool isSmall;
  final void Function() onTap;
  const PrimaryButton(
      {super.key,
      required this.label,
      required this.onTap,
      this.isLoading = false,
      this.isSmall = false});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: isSmall ? 92 : null,
      height: isSmall ? 48 : null,
      child: ElevatedButton(
        onPressed: isLoading ? null : onTap,
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: isSmall ? 8 : 12, horizontal: isSmall ? 4 : 24),
          child: isLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : Text(
                  label,
                  style: TT.f16w400,
                ),
        ),
      ),
    );
  }
}
