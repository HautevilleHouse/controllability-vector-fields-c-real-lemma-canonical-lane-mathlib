import ControllabilityVectorFieldsCRealLemmaCanonicalLaneLean.ControllabilityPDE

namespace HautevilleHouse
namespace ControllabilityVectorFieldsCRealLemmaCanonicalLaneLean

structure AdjointPairingPackage {V : ControllableVectorField}
    (P : ControllabilityPDEPackage V) where
  adjointSystem : Prop
  pairingIdentity : Prop
  observabilityCondition : Prop

structure AdjointPairingEvidence {V : ControllableVectorField}
    {P : ControllabilityPDEPackage V} (A : AdjointPairingPackage P) where
  adjointSystemClosed : A.adjointSystem
  pairingIdentityClosed : A.pairingIdentity
  observabilityConditionClosed : A.observabilityCondition

def AdjointPairingClosed {V : ControllableVectorField}
    {P : ControllabilityPDEPackage V} (A : AdjointPairingPackage P) : Prop :=
  A.adjointSystem ∧ A.pairingIdentity ∧ A.observabilityCondition

theorem adjoint_pairing_closed_from_evidence
    {V : ControllableVectorField} {P : ControllabilityPDEPackage V}
    (A : AdjointPairingPackage P) (E : AdjointPairingEvidence A) :
    AdjointPairingClosed A := by
  exact And.intro E.adjointSystemClosed
    (And.intro E.pairingIdentityClosed E.observabilityConditionClosed)

end ControllabilityVectorFieldsCRealLemmaCanonicalLaneLean
end HautevilleHouse
