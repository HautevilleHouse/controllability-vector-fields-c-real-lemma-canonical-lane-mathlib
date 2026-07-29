import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControllabilityVectorFieldsCRealLemmaCanonicalLaneLean

structure ControllabilityGramerMatrixPackage where
  gramMatrix : Type u
  positiveDefiniteness : Prop
  inverseBounds : Prop
  determinantNonZero : Prop
  positiveDefinitenessTerm : positiveDefiniteness
  inverseBoundsTerm : inverseBounds
  determinantNonZeroTerm : determinantNonZero

def ControllabilityGramerMatrixClosed (G : ControllabilityGramerMatrixPackage) : Prop :=
  G.positiveDefiniteness ∧ G.inverseBounds ∧ G.determinantNonZero

theorem controllability_gramer_matrix_closed_from_package (G : ControllabilityGramerMatrixPackage) :
    ControllabilityGramerMatrixClosed G := by
  exact And.intro G.positiveDefinitenessTerm (And.intro G.inverseBoundsTerm G.determinantNonZeroTerm)

end ControllabilityVectorFieldsCRealLemmaCanonicalLaneLean
end HautevilleHouse