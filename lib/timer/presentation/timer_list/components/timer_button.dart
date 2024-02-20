import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_timer_app/core/presentation/assets/svg_assets.dart';
import 'package:flutter_timer_app/core/presentation/styles/colors.dart';
import 'package:flutter_timer_app/core/presentation/styles/spacings.dart';
import 'package:flutter_timer_app/timer/application/ticker/ticker_cubit.dart';

class TimerButton extends StatelessWidget {
  const TimerButton({super.key, this.onTap});

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TickerCubit, TickerState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: onTap,
          child: Container(
            height: 48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(64),
              color: AppColors.surfaceColor,
            ),
            child: BlocBuilder<TickerCubit, TickerState>(
              builder: (context, state) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        state.duration.toString(),
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                      Spacings.horizontalSpacing8,
                      SvgPicture.asset(
                        state.isRunning ? SvgAssets.pause : SvgAssets.play,
                        height: 24,
                        width: 24,
                        color: Colors.white,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
