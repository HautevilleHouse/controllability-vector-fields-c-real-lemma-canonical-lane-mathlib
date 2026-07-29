import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControllabilityVectorFieldsCRealLemmaCanonicalLaneLean

structure ControlSystem where
  stateSpace : Type u
  controlSpace : Type v
  vectorFields : (controlSpace → stateSpace → TangentSpace stateSpace)
  reachableSet : stateSpace → Set stateSpace
  controllabilityProperty : Prop

structure ControlSystemEvidence (C : ControlSystem) where
  reachableSetClosed : C.controllabilityProperty

end ControllabilityVectorFieldsCRealLemmaCanonicalLaneLean
end HautevilleHouse