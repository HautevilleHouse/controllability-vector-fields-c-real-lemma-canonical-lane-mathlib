import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControllabilityVectorFieldsCRealLemmaCanonicalLaneLean

structure CRealStructurePackage where
  systemDynamics : Type u
  vectorFieldFamily : Type v
  spanCondition : Prop
  lieBracketGeneration : Prop
  dimensionCondition : Prop

structure CRealStructureEvidence (P : CRealStructurePackage) where
  spanConditionClosed : P.spanCondition
  lieBracketGenerationClosed : P.lieBracketGeneration
  dimensionConditionClosed : P.dimensionCondition

def CRealStructureClosed (P : CRealStructurePackage) : Prop :=
  P.spanCondition ∧ P.lieBracketGeneration ∧ P.dimensionCondition

theorem c_real_structure_closed_from_evidence (P : CRealStructurePackage)
    (E : CRealStructureEvidence P) : CRealStructureClosed P := by
  exact And.intro E.spanConditionClosed
    (And.intro E.lieBracketGenerationClosed E.dimensionConditionClosed)

end ControllabilityVectorFieldsCRealLemmaCanonicalLaneLean
end HautevilleHouse
