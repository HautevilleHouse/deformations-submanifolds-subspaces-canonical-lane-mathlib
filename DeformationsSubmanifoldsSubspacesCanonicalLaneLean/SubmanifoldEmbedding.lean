import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DeformationsSubmanifoldsSubspacesCanonicalLaneLean

structure SubmanifoldEmbeddingPackage (M N : Type u) [TopologicalSpace M] [TopologicalSpace N] [Manifold M] [Manifold N] where
  embeddingMap : M → N
  isEmbedding : IsEmbedding embeddingMap
  isSubmanifold : IsSubmanifold (Set.range embeddingMap)

structure SubmanifoldEmbeddingEvidence (M N : Type u) [TopologicalSpace M] [TopologicalSpace N] [Manifold M] [Manifold N] (P : SubmanifoldEmbeddingPackage M N) where
  isEmbeddingClosed : P.isEmbedding
  isSubmanifoldClosed : P.isSubmanifold

def SubmanifoldEmbeddingClosed (M N : Type u) [TopologicalSpace M] [TopologicalSpace N] [Manifold M] [Manifold N] (P : SubmanifoldEmbeddingPackage M N) : Prop :=
  P.isEmbedding ∧ P.isSubmanifold

theorem submanifold_embedding_closed_from_evidence (M N : Type u) [TopologicalSpace M] [TopologicalSpace N] [Manifold M] [Manifold N] (P : SubmanifoldEmbeddingPackage M N) (E : SubmanifoldEmbeddingEvidence M N P) : SubmanifoldEmbeddingClosed M N P := by
  exact And.intro E.isEmbeddingClosed E.isSubmanifoldClosed

end DeformationsSubmanifoldsSubspacesCanonicalLaneLean
end HautevilleHouse