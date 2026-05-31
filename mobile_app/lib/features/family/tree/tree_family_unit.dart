class TreeFamilyUnit {
  final String id;

  final String partner1Id;
  final String partner2Id;

  final List<String> childIds;

  const TreeFamilyUnit({
    required this.id,
    required this.partner1Id,
    required this.partner2Id,
    required this.childIds,
  });
}
