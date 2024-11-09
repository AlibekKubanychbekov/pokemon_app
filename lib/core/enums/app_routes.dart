// import 'package:flutter/cupertino.dart';
// import 'package:pocemon_app/modules/all_pokemons/presentation/all_pokemons_screen.dart';
// import 'package:pocemon_app/modules/pokemon_dateils/presentation/pokemon_details_screen.dart';
// import 'package:pocemon_app/modules/welcome/welcome_screen.dart';

// enum AppRoutes {
//   welcome,
//   allPokemons,
//   pokemonDetails;

//   Future<void> push({required BuildContext context, int? id, int? maxLength}) {
//     switch (this) {
//       case AppRoutes.welcome:
//         return _getRoute(context: context, screen: const WelcomeScreen());
//       case AppRoutes.allPokemons:
//         return _getRoute(context: context, screen: AllPokemonsScreen());
//       case AppRoutes.pokemonDetails:
//         return _getRoute(
//           context: context,
//           screen: PokemonDetailsScreen(
//             id: id ?? 0,
//             maxlength: maxLength ?? 0,
//           ),
//         );
//     }
//   }

//   Future<void> _getRoute(BuildContext context, Widget screen) {
//     return Navigator.push<Object?>(
//         context: context,
//         route: CupertinoPageRoute<Object?>(
//             builder: (BuildContext context) => screen));
//   }
// }
