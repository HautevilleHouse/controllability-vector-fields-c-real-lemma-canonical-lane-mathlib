import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControllabilityVectorFieldsCRealLemmaCanonicalLaneLean

structure ControllableVectorField where
  carrier : Type u
  stateSpace : TopologicalSpace carrier
  controlSet : Type v
  controlTopology : TopologicalSpace controlSet
  vectorField : controlSet → carrier → carrier
  continuousInControl : ∀ s : carrier, Continuous (λ c : controlSet => vectorField c s)
  continuousInState : ∀ c : controlSet, Continuous (vectorField c)

structure AdmittedControlObject where
  vectorField : ControllableVectorField
  reachableSetCondition : Prop
  closureCondition : Prop
  conclusion : reachableSetCondition ∧ closureCondition

def AdmittedClosure (A : AdmittedControlObject) : Prop :=
  A.reachableSetCondition ∧ A.closureCondition

end ControllabilityVectorFieldsCRealLemmaCanonicalLaneLean
end HautevilleHouse
