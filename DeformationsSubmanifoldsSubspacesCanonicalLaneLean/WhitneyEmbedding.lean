import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DeformationsSubmanifoldsSubspacesCanonicalLaneLean

structure WhitneyEmbeddingPackage where
  sourceManifold : Type u
  targetEuclideanSpace : ℕ → Type v
  embedding : sourceManifold → targetEuclideanSpace 2
  injective : Prop
  immersion : Prop
  proper : Prop
  injectiveTerm : injective
  immersionTerm : immersion
  properTerm : proper

structure WhitneyEmbeddingEvidence (W : WhitneyEmbeddingPackage) where
  injectiveClosed : W.injective
  immersionClosed : W.immersion
  properClosed : W.proper

def WhitneyEmbeddingClosed (W : WhitneyEmbeddingPackage) : Prop :=
  W.injective ∧ W.immersion ∧ W.proper

theorem whitney_embedding_closed_from_evidence (W : WhitneyEmbeddingPackage)
    (E : WhitneyEmbeddingEvidence W) : WhitneyEmbeddingClosed W := by
  exact And.intro E.injectiveClosed
    (And.intro E.immersionClosed E.properClosed)

end DeformationsSubmanifoldsSubspacesCanonicalLaneLean
end HautevilleHouse
