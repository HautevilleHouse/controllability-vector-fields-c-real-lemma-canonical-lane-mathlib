import ControllabilityVectorFieldsCRealLemmaCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore

namespace HautevilleHouse
namespace ControllabilityVectorFieldsCRealLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ControllabilitySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ControllabilityAdmittedObject where
  space : ControllabilitySpace
  vectorField : carrier → carrier
  controllabilityCondition : Prop
  reachableSet : Set carrier
  denseReachable : Prop
  conclusion : denseReachable

structure ControllabilityEndgameState where
  object : ControllabilityAdmittedObject

def ControllabilityWitnessClosed (O : ControllabilityAdmittedObject) : Prop :=
  O.denseReachable

end ControllabilityVectorFieldsCRealLemmaCanonicalLaneLean
end HautevilleHouse
