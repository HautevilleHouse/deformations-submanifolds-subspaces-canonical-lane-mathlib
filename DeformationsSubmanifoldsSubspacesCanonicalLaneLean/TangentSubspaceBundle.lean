import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DeformationsSubmanifoldsSubspacesCanonicalLaneLean

structure TangentSubspaceBundle where
  baseManifold : Type u
  fiberAtPoint : baseManifold → Type v
  projection : (x : baseManifold) → fiberAtPoint x → baseManifold
  linearStructure : Prop
  smoothStructure : Prop
  rank : ℕ

structure TangentSubspaceBundleEvidence (T : TangentSubspaceBundle) where
  linearStructureClosed : T.linearStructure
  smoothStructureClosed : T.smoothStructure

def TangentSubspaceBundleClosed (T : TangentSubspaceBundle) : Prop :=
  T.linearStructure ∧ T.smoothStructure

theorem tangent_subspace_bundle_closed_from_evidence (T : TangentSubspaceBundle)
    (E : TangentSubspaceBundleEvidence T) : TangentSubspaceBundleClosed T := by
  exact And.intro E.linearStructureClosed E.smoothStructureClosed

end DeformationsSubmanifoldsSubspacesCanonicalLaneLean
end HautevilleHouse