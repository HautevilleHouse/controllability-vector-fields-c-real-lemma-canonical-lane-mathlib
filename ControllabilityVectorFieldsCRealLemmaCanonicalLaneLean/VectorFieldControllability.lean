import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ControllabilityVectorFieldsCRealLemmaCanonicalLaneLean.ControlSystemStructure

namespace HautevilleHouse
namespace ControllabilityVectorFieldsCRealLemmaCanonicalLaneLean

structure VectorFieldControllabilityPackage (C : ControlSystem) where
  lieBracketClosure : Prop
  involutiveCondition : Prop
  frobeniusTheoremApplied : Prop

structure VectorFieldControllabilityEvidence {C : ControlSystem}
    (V : VectorFieldControllabilityPackage C) where
  lieBracketClosureClosed : V.lieBracketClosure
  involutiveConditionClosed : V.involutiveCondition
  frobeniusTheoremAppliedClosed : V.frobeniusTheoremApplied

def VectorFieldControllabilityClosed {C : ControlSystem}
    (V : VectorFieldControllabilityPackage C) : Prop :=
  V.lieBracketClosure ∧ V.involutiveCondition ∧ V.frobeniusTheoremApplied

theorem vector_field_controllability_closed_from_evidence {C : ControlSystem}
    (V : VectorFieldControllabilityPackage C)
    (E : VectorFieldControllabilityEvidence V) : VectorFieldControllabilityClosed V := by
  exact And.intro E.lieBracketClosureClosed
    (And.intro E.involutiveConditionClosed E.frobeniusTheoremAppliedClosed)

end ControllabilityVectorFieldsCRealLemmaCanonicalLaneLean
end HautevilleHouse