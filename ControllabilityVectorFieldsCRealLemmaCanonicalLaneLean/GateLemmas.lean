import ControllabilityVectorFieldsCRealLemmaCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace ControllabilityVectorFieldsCRealLemmaCanonicalLaneLean

def gateClosed (A : AdmittedControlObject) : Prop :=
  A.closureCondition

theorem gate_from_admissible_class (A : AdmittedControlObject) :
    gateClosed A := by
  exact A.conclusion.right

end ControllabilityVectorFieldsCRealLemmaCanonicalLaneLean
end HautevilleHouse
