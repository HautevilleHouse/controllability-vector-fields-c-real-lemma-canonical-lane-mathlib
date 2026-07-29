import ControllabilityVectorFieldsCRealLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ControllabilityVectorFieldsCRealLemmaCanonicalLaneLean

structure ControllabilityCondition where
  dim : Nat
  vectorFields : List (ℝ → ℝ)
  lieBracketClosure : Prop
  rankCondition : Prop
  positiveTimeCondition : Prop
  controllability : Prop

structure ControllabilityConditionEvidence (C : ControllabilityCondition) where
  lieBracketClosureClosed : C.lieBracketClosure
  rankConditionClosed : C.rankCondition
  positiveTimeConditionClosed : C.positiveTimeCondition
  controllabilityClosed : C.controllability

def ControllabilityConditionClosed (C : ControllabilityCondition) : Prop :=
  C.lieBracketClosure ∧ C.rankCondition ∧ C.positiveTimeCondition ∧ C.controllability

theorem controllability_condition_closed_from_evidence (C : ControllabilityCondition) (E : ControllabilityConditionEvidence C) :
    ControllabilityConditionClosed C := by
  exact And.intro E.lieBracketClosureClosed (And.intro E.rankConditionClosed (And.intro E.positiveTimeConditionClosed E.controllabilityClosed))

end ControllabilityVectorFieldsCRealLemmaCanonicalLaneLean
end HautevilleHouse
