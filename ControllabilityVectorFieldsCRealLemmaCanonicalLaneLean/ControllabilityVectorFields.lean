import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControllabilityVectorFieldsCRealLemmaCanonicalLaneLean

structure ControllableVectorFieldPackage where
  controlSystem : Type u
  stateSpace : Type v
  inputSpace : Type w
  driftVectorField : controlSystem → stateSpace → stateSpace → Prop
  controlMatrix : controlSystem → stateSpace → inputSpace → stateSpace → Prop
  lieBracketClosed : Prop
  controllabilityRankCondition : Prop

structure ControllableVectorFieldEvidence (C : ControllableVectorFieldPackage) where
  lieBracketClosedTerm : C.lieBracketClosed
  controllabilityRankConditionTerm : C.controllabilityRankCondition

def ControllableVectorFieldClosed (C : ControllableVectorFieldPackage) : Prop :=
  C.lieBracketClosed ∧ C.controllabilityRankCondition

theorem controllable_vector_field_closed_from_evidence
    (C : ControllableVectorFieldPackage) (E : ControllableVectorFieldEvidence C) :
    ControllableVectorFieldClosed C := by
  exact And.intro E.lieBracketClosedTerm E.controllabilityRankConditionTerm

end ControllabilityVectorFieldsCRealLemmaCanonicalLaneLean
end HautevilleHouse