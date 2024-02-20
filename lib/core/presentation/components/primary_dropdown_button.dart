import 'package:flutter/material.dart';
import 'package:flutter_timer_app/core/presentation/styles/colors.dart';
import 'package:flutter_timer_app/core/presentation/styles/text_styles.dart';

class PrimaryDropdownButton extends StatelessWidget {
  const PrimaryDropdownButton({
    super.key,
    required this.hint,
    required this.options,
    this.value,
    this.onChanged,
  });

  final String hint;
  final String? value;
  final List<String> options;
  final void Function(String? value)? onChanged;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: AppColors.secondaryContainer,
            width: 2,
          ),
        ),
        child: DropdownButtonFormField<String>(
          value: value,
          isExpanded: true,
          icon: const Icon(
            Icons.expand_more,
            color: Colors.white,
            size: 32,
          ),
          dropdownColor: Colors.black,
          borderRadius: BorderRadius.circular(8),

          hint: Text(
            hint,
            style: AppTextStyles.bodyLarge,
          ),
          // style: AppTextStyles.bodyLarge,
          items: <String>[...options]
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: const TextStyle(color: Colors.white),
              ),
            );
          }).toList(),
          onChanged: onChanged,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please select a value';
            }
            return null;
          },
          decoration: InputDecoration(
            isDense: true,
            border: InputBorder.none,
            errorStyle: AppTextStyles.bodySmall.copyWith(
              color: Colors.redAccent,
            ),
          ),
        ),
      ),
    );
  }
}
