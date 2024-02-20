import 'package:flutter/material.dart';
import 'package:flutter_timer_app/core/constants/constants.dart';
import 'package:flutter_timer_app/core/presentation/styles/colors.dart';
import 'package:flutter_timer_app/core/presentation/styles/text_styles.dart';

class PrimaryTextField extends StatelessWidget {
  const PrimaryTextField({
    super.key,
    required this.label,
    this.value,
    this.maxLines,
    this.onChanged,
  });

  final String label;
  final String? value;
  final int? maxLines;
  final void Function(String value)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppConstants.defaultPadding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: AppColors.secondaryContainer,
          width: 2,
        ),
      ),
      child: TextFormField(
        onChanged: onChanged,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter a value';
          }
          return null;
        },
        initialValue: value,
        maxLines: maxLines,
        decoration: InputDecoration(
          isDense: true,
          contentPadding: EdgeInsets.zero,
          errorStyle: AppTextStyles.bodySmall.copyWith(
            color: Colors.redAccent,
          ),
          isCollapsed: true,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          labelText: 'Description',
          labelStyle: AppTextStyles.bodyLarge,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
