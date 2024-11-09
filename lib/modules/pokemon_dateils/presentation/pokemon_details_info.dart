import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pocemon_app/core/assets/app_images.dart';
import 'package:pocemon_app/core/presentation/widgets/common_background/common_background.dart';
import 'package:pocemon_app/core/presentation/widgets/common_sliver_appbar.dart';
import 'package:pocemon_app/core/theme/app_colors.dart';
import 'package:pocemon_app/modules/pokemon_dateils/presentation/cubit/pokemon_details_cubit.dart';
import 'package:pocemon_app/modules/pokemon_dateils/presentation/cubit/pokemon_details_state.dart';
import 'package:pocemon_app/modules/pokemon_dateils/presentation/widgets/pokemon_details_buttons.dart';

class PokemonDetailsInfo extends StatefulWidget {
  const PokemonDetailsInfo({
    required this.id,
    required this.maxLength,
    super.key,
  });
  final int id;
  final int maxLength;

  @override
  State<PokemonDetailsInfo> createState() => _PokemonDetailsInfoState();
}

class _PokemonDetailsInfoState extends State<PokemonDetailsInfo> {
  late int _currentId;
  final _isLeftButtonActive = ValueNotifier<bool>(true);
  final _isRightButtonActive = ValueNotifier<bool>(true);

  @override
  void initState() {
    _currentId = widget.id;
    if (widget.id == 1) {
      _isLeftButtonActive.value = false;
    }
    if (_currentId == widget.maxLength) {
      _isRightButtonActive.value = false;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Stack(
        children: [
          Image.asset(
            AppImages.satinAsh,
            opacity: const AlwaysStoppedAnimation(0.7),
          ),
          const CommonBackground(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: CustomScrollView(slivers: [
              const CommonSliverAppbar(),
              SliverToBoxAdapter(
                child: BlocBuilder<PokemonDetailsCubit, PokemonDetailsState>(
                    builder: (context, state) {
                  if (state is PokemonDetailsLoadingState) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (state is PokemonDetailsSuccessState) {
                    return SizedBox(
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            state.details.name?.toUpperCase() ?? 'null',
                            style: const TextStyle(
                                color: AppColors.mainText,
                                fontSize: 36,
                                fontWeight: FontWeight.w700),
                          ),
                          Image.network(
                            state.details.sprites?.frontDefault ?? '',
                            scale: 0.8,
                          ),
                        ],
                      ),
                    );
                  } else if (state is PokemonDetailsErrorState) {
                    return const Center(
                      child: Text('Error'),
                    );
                  } else {
                    return const Center(
                      child: Text('No data'),
                    );
                  }
                }),
              ),
            ]),
          ),
          Positioned(
            bottom: 100,
            left: 15,
            right: 15,
            child: PokemonDetailsButtons(
              onleftTap: () {
                if (_currentId > 1) {
                  context
                      .read<PokemonDetailsCubit>()
                      .fetchPokemonDetails(id: _currentId - 1);
                  _currentId--;
                  _isLeftButtonActive.value = _currentId > 1;
                  if (_currentId != widget.maxLength) {
                    _isRightButtonActive.value = true;
                  }
                }
              },
              onRightTap: () {
                if (_currentId < widget.maxLength) {
                  context
                      .read<PokemonDetailsCubit>()
                      .fetchPokemonDetails(id: _currentId + 1);
                  _currentId++;
                  _isRightButtonActive.value = _currentId < widget.maxLength;
                  if (_currentId != 1) {
                    _isLeftButtonActive.value = true;
                  }
                }
              },
              onCenterTap: () {},
              isLeftButtonActive: _isLeftButtonActive,
              isRightButtonActive: _isRightButtonActive,
            ),
          )
        ],
      ),
    );
  }
}
