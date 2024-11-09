class AllPokemonsEntity {
  final int? count;
  final String? next;
  final String? previous;
  final List<AllPokemonsItemEntity>? results;

  AllPokemonsEntity(
      {required this.count,
      required this.next,
      required this.previous,
      required this.results});
}

class AllPokemonsItemEntity {
  final String? name;
  final String? url;

  AllPokemonsItemEntity({required this.name, required this.url});
}
