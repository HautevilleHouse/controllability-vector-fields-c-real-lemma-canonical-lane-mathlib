import HautevilleHouse.ControllabilityVectorFieldsCRealLemmaCanonicalLaneLean.VectorFieldsPackage
import HautevilleHouse.ControllabilityVectorFieldsCRealLemmaCanonicalLaneLean.CRealLemmaPackage

namespace HautevilleHouse
namespace ControllabilityVectorFieldsCRealLemmaCanonicalLaneLean

def ConstrainedControllabilityCRealClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_controllability_c_real_endgame (A : AdmissibleClass) :
    ConstrainedControllabilityCRealClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ControllabilityVectorFieldsCRealLemmaCanonicalLaneLean
end HautevilleHouse