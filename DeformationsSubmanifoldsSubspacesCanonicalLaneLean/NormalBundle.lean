import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DeformationsSubmanifoldsSubspacesCanonicalLaneLean

structure RiemannianMetricPackage where
  manifold : Type u
  metric : Type v
  smooth : Prop
  positiveDefinite : Prop
  smoothTerm : smooth
  positiveDefiniteTerm : positiveDefinite

structure NormalBundlePackage {M : Type u} (g : RiemannianMetricPackage) where
  submanifold : Type v
  immersion : submanifold → M
  fiber : submanifold → Type w
  projection : Σ x : submanifold, fiber x → M
  orthogonalComplement : Prop
  exponentialMapDefined : Prop
  orthogonalComplementTerm : orthogonalComplement
  exponentialMapDefinedTerm : exponentialMapDefined

structure NormalBundleEvidence {M : Type u} {g : RiemannianMetricPackage}
    (N : NormalBundlePackage M g) where
  orthogonalComplementClosed : N.orthogonalComplement
  exponentialMapDefinedClosed : N.exponentialMapDefined

def NormalBundleClosed {M : Type u} {g : RiemannianMetricPackage}
    (N : NormalBundlePackage M g) : Prop :=
  N.orthogonalComplement ∧ N.exponentialMapDefined

theorem normal_bundle_closed_from_evidence {M : Type u} {g : RiemannianMetricPackage}
    (N : NormalBundlePackage M g) (E : NormalBundleEvidence N) : NormalBundleClosed N := by
  exact And.intro E.orthogonalComplementClosed E.exponentialMapDefinedClosed

end DeformationsSubmanifoldsSubspacesCanonicalLaneLean
end HautevilleHouse
