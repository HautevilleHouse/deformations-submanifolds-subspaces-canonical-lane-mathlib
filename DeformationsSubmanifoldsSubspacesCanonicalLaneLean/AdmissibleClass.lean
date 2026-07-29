import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DeformationsSubmanifoldsSubspacesCanonicalLaneLean

structure AdmissibleClass where
  object : SubmanifoldAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  SubmanifoldWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DeformationsSubmanifoldsSubspacesCanonicalLaneLean
end HautevilleHouse