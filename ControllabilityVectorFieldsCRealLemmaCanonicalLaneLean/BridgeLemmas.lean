import ControllabilityVectorFieldsCRealLemmaCanonicalLaneLean.VectorFieldAdmissibleClass

namespace HautevilleHouse
namespace ControllabilityVectorFieldsCRealLemmaCanonicalLaneLean

def bridgeClosed (A : AdmittedControlObject) : Prop :=
  A.reachableSetCondition

theorem bridge_from_admissible_class (A : AdmittedControlObject) :
    bridgeClosed A := by
  exact A.conclusion.left

end ControllabilityVectorFieldsCRealLemmaCanonicalLaneLean
end HautevilleHouse
