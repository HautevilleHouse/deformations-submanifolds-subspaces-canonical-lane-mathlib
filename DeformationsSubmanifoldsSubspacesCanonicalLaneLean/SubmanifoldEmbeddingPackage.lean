import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DeformationsSubmanifoldsSubspacesCanonicalLaneLean

structure SubmanifoldEmbeddingPackage where
  ambientManifold : Type u
  ambientTopology : TopologicalSpace ambientManifold
  submanifold : Type v
  subTopology : TopologicalSpace submanifold
  embedding : submanifold → ambientManifold
  embeddingSmooth : Prop
  embeddingImmersion : Prop
  embeddingClosed : embeddingSmooth ∧ embeddingImmersion

structure SubmanifoldEmbeddingEvidence (S : SubmanifoldEmbeddingPackage) where
  embeddingSmoothClosed : S.embeddingSmooth
  embeddingImmersionClosed : S.embeddingImmersion

def SubmanifoldEmbeddingClosed (S : SubmanifoldEmbeddingPackage) : Prop :=
  S.embeddingSmooth ∧ S.embeddingImmersion

theorem submanifold_embedding_closed_from_evidence
    (S : SubmanifoldEmbeddingPackage) (E : SubmanifoldEmbeddingEvidence S) :
    SubmanifoldEmbeddingClosed S := by
  exact And.intro E.embeddingSmoothClosed E.embeddingImmersionClosed

end DeformationsSubmanifoldsSubspacesCanonicalLaneLean
end HautevilleHouse