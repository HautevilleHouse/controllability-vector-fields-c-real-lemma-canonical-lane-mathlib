import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControllabilityVectorFieldsCRealLemmaCanonicalLaneLean

structure VectorFieldsClosurePackage where
  controlSystem : Type u
  vectorFieldsSet : Set (controlSystem → controlSystem)
  closureCondition : Prop
  invariantSubspace : Prop

structure VectorFieldsClosureEvidence (P : VectorFieldsClosurePackage) where
  closureConditionClosed : P.closureCondition
  invariantSubspaceClosed : P.invariantSubspace

def VectorFieldsClosureClosed (P : VectorFieldsClosurePackage) : Prop :=
  P.closureCondition ∧ P.invariantSubspace

theorem vector_fields_closure_closed_from_evidence (P : VectorFieldsClosurePackage)
    (E : VectorFieldsClosureEvidence P) : VectorFieldsClosureClosed P := by
  exact And.intro E.closureConditionClosed E.invariantSubspaceClosed

end ControllabilityVectorFieldsCRealLemmaCanonicalLaneLean
end HautevilleHouse
