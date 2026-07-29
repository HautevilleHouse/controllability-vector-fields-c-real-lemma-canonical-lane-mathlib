import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControllabilityVectorFieldsCRealLemmaCanonicalLaneLean

structure AccessibilityAlgebraPackage where
  vectorFields : Type u
  lieAlgebraStructure : Type v
  derivedFlag : Type w
  accessibilityRank : Prop
  flagStabilization : Prop
  accessibilityRankTerm : accessibilityRank
  flagStabilizationTerm : flagStabilization

def AccessibilityAlgebraClosed (A : AccessibilityAlgebraPackage) : Prop :=
  A.accessibilityRank ∧ A.flagStabilization

theorem accessibility_algebra_closed_from_package (A : AccessibilityAlgebraPackage) :
    AccessibilityAlgebraClosed A := by
  exact And.intro A.accessibilityRankTerm A.flagStabilizationTerm

end ControllabilityVectorFieldsCRealLemmaCanonicalLaneLean
end HautevilleHouse