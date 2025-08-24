import 'package:admin_db/cubits/toggle_button/toggle_button_cubit.dart';
import 'package:admin_db/cubits/toggle_button/toggle_button_state.dart';
import 'package:admin_db/views/widgets/custom_toggle_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ToggleButtonList extends StatelessWidget {
  const ToggleButtonList({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return BlocBuilder<ToggleButtonCubit, ToggleButtonState>(
      builder: (context, state) {
        final cubit = context.read<ToggleButtonCubit>();

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 24),
          child:
              width <= 1015 && width >= 800
                  ? Column(
                    children: [
                      CutsomToggleButton(
                        text1: 'EN',
                        text2: 'AR',

                        onPressed: (index) {
                          cubit.selectLanguage(index);
                          if (index == 0) {
                            const Locale('en');
                          } else {
                            const Locale('ar');
                          }
                        },
                        isSelected: cubit.selectionsLang,
                      ),

                      const SizedBox(height: 8),

                      CutsomToggleButton(
                        text1: 'Light',
                        text2: 'Dark',

                        onPressed: (index) {
                          cubit.selectTheme(context, index);
                        },
                        isSelected: cubit.selectionsTheme,
                      ),
                    ],
                  )
                  : Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: CutsomToggleButton(
                          text1: 'EN',
                          text2: 'AR',

                          onPressed: (index) {
                            cubit.selectLanguage(index);
                            if (index == 0) {
                              const Locale('en');
                            } else {
                              const Locale('ar');
                            }
                          },
                          isSelected: cubit.selectionsLang,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: CutsomToggleButton(
                          text1: 'Light',
                          text2: 'Dark',

                          onPressed: (index) {
                            cubit.selectTheme(context, index);
                          },
                          isSelected: cubit.selectionsTheme,
                        ),
                      ),
                    ],
                  ),
        );
      },
    );
  }
}
