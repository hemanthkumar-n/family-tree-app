import '../domain/identity_claim.dart';

class FounderIdentityClaims {
  static const claims = <IdentityClaim>[
    IdentityClaim(
      claimantIdentityId: 'hemanth',
      targetIdentityId: 'prasad',
      relationship: 'father',
    ),

    IdentityClaim(
      claimantIdentityId: 'hemanth',
      targetIdentityId: 'sudharani',
      relationship: 'mother',
    ),

    IdentityClaim(
      claimantIdentityId: 'hemanth',
      targetIdentityId: 'divya',
      relationship: 'younger_sister',
    ),

    IdentityClaim(
      claimantIdentityId: 'hemanth',
      targetIdentityId: 'keerthi',
      relationship: 'spouse',
    ),

    IdentityClaim(
      claimantIdentityId: 'hemanth',
      targetIdentityId: 'yuvan',
      relationship: 'son',
    ),

    IdentityClaim(
      claimantIdentityId: 'divya',
      targetIdentityId: 'kamesh',
      relationship: 'spouse',
    ),
  ];
}
