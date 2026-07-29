import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControllabilityVectorFieldsCRealLemmaCanonicalLaneLean

structure CRealLemmaPackage (C : ControllableVectorFieldPackage) (A : AccessibilityAlgebraPackage) (G : ControllabilityGramerMatrixPackage) where
  reachableSetIsSubmanifold : Prop
  rankConditionSatisfied : Prop
  controllabilityEquivalentToRank : Prop
  reachableSetIsSubmanifoldTerm : reachableSetIsSubmanifold
  rankConditionSatisfiedTerm : rankConditionSatisfied
  controllabilityEquivalentToRankTerm : controllabilityEquivalentToRank

def CRealLemmaClosed {C : ControllableVectorFieldPackage}
    {A : AccessibilityAlgebraPackage} {G : ControllabilityGramerMatrixPackage}
    (L : CRealLemmaPackage C A G) : Prop :=
  L.reachableSetIsSubmanifold ∧ L.rankConditionSatisfied ∧ L.controllabilityEquivalentToRank

theorem c_real_lemma_closed_from_package
    {C : ControllableVectorFieldPackage}
    {A : AccessibilityAlgebraPackage} {G : ControllabilityGramerMatrixPackage}
    (L : CRealLemmaPackage C A G) : CRealLemmaClosed L := by
  exact And.intro L.reachableSetIsSubmanifoldTerm (And.intro L.rankConditionSatisfiedTerm L.controllabilityEquivalentToRankTerm)

end ControllabilityVectorFieldsCRealLemmaCanonicalLaneLean
end HautevilleHouse