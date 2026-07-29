import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControllabilityVectorFieldsCRealLemmaCanonicalLaneLean

structure VectorFieldControlPackage where
  controlSet : Type u
  vectorField : controlSet → Type v
  chowCondition : Prop
  jurdjevicQuinnCondition : Prop
  saturationCondition : Prop

structure VectorFieldControlEvidence (V : VectorFieldControlPackage) where
  chowConditionClosed : V.chowCondition
  jurdjevicQuinnConditionClosed : V.jurdjevicQuinnCondition
  saturationConditionClosed : V.saturationCondition

def VectorFieldControlClosed (V : VectorFieldControlPackage) : Prop :=
  V.chowCondition ∧ V.jurdjevicQuinnCondition ∧ V.saturationCondition

theorem vector_field_control_closed_from_evidence (V : VectorFieldControlPackage)
    (E : VectorFieldControlEvidence V) : VectorFieldControlClosed V := by
  exact And.intro E.chowConditionClosed
    (And.intro E.jurdjevicQuinnConditionClosed E.saturationConditionClosed)

end ControllabilityVectorFieldsCRealLemmaCanonicalLaneLean
end HautevilleHouse