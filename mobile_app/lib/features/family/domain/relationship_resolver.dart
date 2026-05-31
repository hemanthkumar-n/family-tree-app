import '../models/founder_identity_claims.dart';
import '../domain/identity_claim.dart';

class RelationshipResolver {
  static String? relationshipBetween(
    String sourceId,
    String targetId,
  ) {
    try {
      final IdentityClaim claim =
          FounderIdentityClaims.claims.firstWhere(
        (c) =>
            c.claimantIdentityId == sourceId &&
            c.targetIdentityId == targetId,
      );

      return claim.relationship;
    } catch (_) {
      return null;
    }
  }
}
