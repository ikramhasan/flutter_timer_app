import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_timer_app/core/constants/constants.dart';
import 'package:flutter_timer_app/core/presentation/components/primary_dropdown_button.dart';
import 'package:flutter_timer_app/core/presentation/components/primary_scaffold.dart';
import 'package:flutter_timer_app/core/presentation/components/primary_text_field.dart';
import 'package:flutter_timer_app/core/presentation/styles/spacings.dart';
import 'package:flutter_timer_app/core/presentation/styles/text_styles.dart';
import 'package:flutter_timer_app/timer/application/timer_form/timer_form_cubit.dart';
import 'package:flutter_timer_app/timer/application/timer_list/timer_list_cubit.dart';
import 'package:go_router/go_router.dart';

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
      body: BlocBuilder<TimerFormCubit, TimerFormState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(AppConstants.defaultPadding),
            child: Form(
              autovalidateMode: state.showErrorMessages
                  ? AutovalidateMode.always
                  : AutovalidateMode.disabled,
              child: Column(
                children: [
                  const Spacer(),
                  PrimaryDropdownButton(
                    hint: 'Project',
                    value: state.project,
                    options: const [
                      'iOS app deployment',
                      'iOS app deployment with odd',
                      'Android app deployment',
                      'Android app deployment with odd',
                    ],
                    onChanged: (value) {
                      if (value != null) {
                        context.read<TimerFormCubit>().projectChanged(value);
                      }
                    },
                  ),
                  Spacings.verticalSpacing28,
                  PrimaryDropdownButton(
                    hint: 'Task',
                    value: state.task,
                    options: const ['Task 1', 'Task 2'],
                    onChanged: (value) {
                      if (value != null) {
                        context.read<TimerFormCubit>().taskChanged(value);
                      }
                    },
                  ),
                  Spacings.verticalSpacing28,
                  PrimaryTextField(
                    label: 'Description',
                    maxLines: 3,
                    onChanged: (value) {
                      context.read<TimerFormCubit>().descriptionChanged(value);
                    },
                  ),
                  Spacings.verticalSpacing28,
                  CheckboxListTile(
                    value: state.isFavorite,
                    controlAffinity: ListTileControlAffinity.leading,
                    dense: true,
                    contentPadding: EdgeInsets.zero,
                    title: Text(
                      'Make Favorite',
                      style: AppTextStyles.bodyLarge,
                    ),
                    onChanged: (value) {
                      context
                          .read<TimerFormCubit>()
                          .isFavoriteChanged(value ?? false);
                    },
                  ),
                  const Spacer(),
                  ElevatedButton(
                    onPressed: () {
                      context.read<TimerFormCubit>().createTimerButtonPressed();

                      if (state.project != null &&
                          state.task != null &&
                          state.description != null) {
                        context.read<TimerListCubit>().addTimer(
                              project: state.project!,
                              task: state.task!,
                              description: state.description!,
                              isFavorite: state.isFavorite,
                            );
                        context.pop();
                      }
                    },
                    child: const Text('Create Timer'),
                  ),
                  Spacings.verticalSpacing32,
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
