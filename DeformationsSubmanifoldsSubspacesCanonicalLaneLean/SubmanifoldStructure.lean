import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DeformationsSubmanifoldsSubspacesCanonicalLaneLean

structure SubmanifoldAdmittedObject where
  ambientSpace : Type u
  submanifold : Type v
  embedding : submanifold → ambientSpace
  smoothEmbedding : Prop
  closedSubmanifold : Prop
  conclusion : smoothEmbedding ∧ closedSubmanifold

def SubmanifoldWitnessClosed (O : SubmanifoldAdmittedObject) : Prop :=
  O.smoothEmbedding ∧ O.closedSubmanifold

end DeformationsSubmanifoldsSubspacesCanonicalLaneLean
end HautevilleHouse