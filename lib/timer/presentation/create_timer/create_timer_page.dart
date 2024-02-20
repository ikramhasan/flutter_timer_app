import 'package:flutter/material.dart';
import 'package:flutter_timer_app/core/constants/constants.dart';
import 'package:flutter_timer_app/core/presentation/components/primary_dropdown_button.dart';
import 'package:flutter_timer_app/core/presentation/components/primary_scaffold.dart';
import 'package:flutter_timer_app/core/presentation/components/primary_text_field.dart';
import 'package:flutter_timer_app/core/presentation/styles/spacings.dart';
import 'package:flutter_timer_app/core/presentation/styles/text_styles.dart';

class CreateTimerPage extends StatelessWidget {
  const CreateTimerPage({super.key});

  static const String route = '/create-timer';

  @override
  Widget build(BuildContext context) {
    return PrimaryScaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const BackButton(
          color: Colors.white,
        ),
        title: const Text('Create Timer'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppConstants.defaultPadding),
        child: Column(
          children: [
            const Spacer(),
            PrimaryDropdownButton(
              hint: 'Project',
              options: const ['Project 1', 'Project 2'],
              onChanged: (value) {},
            ),
            Spacings.verticalSpacing28,
            PrimaryDropdownButton(
              hint: 'Task',
              options: const ['Task 1', 'Task 2'],
              onChanged: (value) {},
            ),
            Spacings.verticalSpacing28,
            PrimaryTextField(
              label: 'Description',
              maxLines: 3,
              onChanged: (value) {},
            ),
            Spacings.verticalSpacing28,
            CheckboxListTile(
              value: false,
              controlAffinity: ListTileControlAffinity.leading,
              dense: true,
              contentPadding: EdgeInsets.zero,
              title: Text(
                'Make Favorite',
                style: AppTextStyles.bodyLarge,
              ),
              onChanged: (value) {},
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Create Timer'),
            ),
            Spacings.verticalSpacing32,
          ],
        ),
      ),
    );
  }
}
