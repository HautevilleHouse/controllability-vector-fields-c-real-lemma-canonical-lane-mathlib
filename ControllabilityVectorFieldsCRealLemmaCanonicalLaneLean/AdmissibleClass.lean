import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControllabilityVectorFieldsCRealLemmaCanonicalLaneLean

structure AdmittedObject where
  controlSystem : Type u
  stateSpace : Type v
  vectorFields : controlSystem → (stateSpace → stateSpace)
  controllabilityProperty : Prop

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

end ControllabilityVectorFieldsCRealLemmaCanonicalLaneLean
end HautevilleHouse
