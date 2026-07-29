import ControllabilityVectorFieldsCRealLemmaCanonicalLaneLean.VectorFieldAdmissibleClass

namespace HautevilleHouse
namespace ControllabilityVectorFieldsCRealLemmaCanonicalLaneLean

structure ControllabilityPDEPackage (V : ControllableVectorField) where
  timeParameter : Type u
  stateAt : timeParameter → V.carrier
  controlAt : timeParameter → V.controlSet
  differentialEquation : Prop
  initialCondition : Prop
  finalCondition : Prop

structure ControllabilityPDEEvidence {V : ControllableVectorField}
    (P : ControllabilityPDEPackage V) where
  differentialEquationClosed : P.differentialEquation
  initialConditionClosed : P.initialCondition
  finalConditionClosed : P.finalCondition

def ControllabilityPDEClosed {V : ControllableVectorField}
    (P : ControllabilityPDEPackage V) : Prop :=
  P.differentialEquation ∧ P.initialCondition ∧ P.finalCondition

theorem controllability_pde_closed_from_evidence
    {V : ControllableVectorField} (P : ControllabilityPDEPackage V)
    (E : ControllabilityPDEEvidence P) : ControllabilityPDEClosed P := by
  exact And.intro E.differentialEquationClosed
    (And.intro E.initialConditionClosed E.finalConditionClosed)

end ControllabilityVectorFieldsCRealLemmaCanonicalLaneLean
end HautevilleHouse
