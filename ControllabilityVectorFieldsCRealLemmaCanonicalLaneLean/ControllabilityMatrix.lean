import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControllabilityVectorFieldsCRealLemmaCanonicalLaneLean

structure ControllabilityMatrixPackage where
  systemOrder : ℕ
  controllabilityMatrix : Matrix (Fin systemOrder) (Fin (systemOrder * systemOrder)) ℝ
  rankCondition : Prop
  fullRowRank : Prop

structure ControllabilityMatrixEvidence (P : ControllabilityMatrixPackage) where
  rankConditionClosed : P.rankCondition
  fullRowRankClosed : P.fullRowRank

def ControllabilityMatrixClosed (P : ControllabilityMatrixPackage) : Prop :=
  P.rankCondition ∧ P.fullRowRank

theorem controllability_matrix_closed_from_evidence (P : ControllabilityMatrixPackage)
    (E : ControllabilityMatrixEvidence P) : ControllabilityMatrixClosed P := by
  exact And.intro E.rankConditionClosed E.fullRowRankClosed

end ControllabilityVectorFieldsCRealLemmaCanonicalLaneLean
end HautevilleHouse
