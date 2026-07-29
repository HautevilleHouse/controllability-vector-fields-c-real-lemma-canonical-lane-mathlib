import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControllabilityVectorFieldsCRealLemmaCanonicalLaneLean

structure CRealLemmaPackage where
  lieAlgebraicCondition : Prop
  realLieAlgebraSolvable : Prop
  controllabilityEquivalent : Prop

structure CRealLemmaEvidence (C : CRealLemmaPackage) where
  lieAlgebraicConditionClosed : C.lieAlgebraicCondition
  realLieAlgebraSolvableClosed : C.realLieAlgebraSolvable
  controllabilityEquivalentClosed : C.controllabilityEquivalent

def CRealLemmaClosed (C : CRealLemmaPackage) : Prop :=
  C.lieAlgebraicCondition ∧ C.realLieAlgebraSolvable ∧ C.controllabilityEquivalent

theorem c_real_lemma_closed_from_evidence (C : CRealLemmaPackage)
    (E : CRealLemmaEvidence C) : CRealLemmaClosed C := by
  exact And.intro E.lieAlgebraicConditionClosed
    (And.intro E.realLieAlgebraSolvableClosed E.controllabilityEquivalentClosed)

end ControllabilityVectorFieldsCRealLemmaCanonicalLaneLean
end HautevilleHouse