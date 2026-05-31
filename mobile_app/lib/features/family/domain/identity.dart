class Identity {
  final String id;

  final String displayName;

  final bool claimed;

  const Identity({
    required this.id,
    required this.displayName,
    this.claimed = false,
  });
}
