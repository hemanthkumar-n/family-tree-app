class IdentityClaim {
  final String claimantIdentityId;

  final String targetIdentityId;

  final String relationship;

  final bool verified;

  const IdentityClaim({
    required this.claimantIdentityId,
    required this.targetIdentityId,
    required this.relationship,
    this.verified = false,
  });
}
