import 'package:flutter/material.dart';
import 'package:pocemon_app/core/assets/app_images.dart';
import 'package:pocemon_app/core/presentation/widgets/common_background/common_background.dart';
import 'package:pocemon_app/core/presentation/widgets/common_sliver_appbar.dart';
import 'package:pocemon_app/core/services/dio_setting.dart';
import 'package:pocemon_app/core/theme/app_colors.dart';
import 'package:pocemon_app/modules/all_pokemons/data/mapper/all_pokemons_mapper.dart';
import 'package:pocemon_app/modules/all_pokemons/domain/repository/all_pokemons_repository_impl.dart';
import 'package:pocemon_app/modules/all_pokemons/domain/usecase/fetch_all_pokemons_usecase.dart';

class AllPokemonsScreen extends StatefulWidget {
  const AllPokemonsScreen({super.key});

  @override
  State<AllPokemonsScreen> createState() => _AllPokemonsScreenState();
}

class _AllPokemonsScreenState extends State<AllPokemonsScreen> {
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
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: CustomScrollView(
              slivers: [
                CommonSliverAppbar(),
                SliverToBoxAdapter(
                    child: Text(
                  'Select Your Pokèmon',
                  style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.w300,
                      color: AppColors.mainText),
                )),
                SliverToBoxAdapter(
                  child: ElevatedButton(
                      onPressed: () {
                        FetchAllPokemonsUsecase(
                                repository: AllPokemonsRepositoryImpl(
                                    dio: DioSetting().dio,
                                    mapper: AllPokemonsMapper()))
                            .execute();
                      },
                      child: Text('data')),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
