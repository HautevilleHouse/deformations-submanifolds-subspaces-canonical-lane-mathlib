import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DeformationsSubmanifoldsSubspaces

structure NormalBundleDecompositionPackage where
  ambientManifold : Type
  submanifold : Type
  normalBundle : Type
  orthogonalDecomposition : Prop
  decompositionSmooth : Prop

def NormalBundleDecompositionClosed (N : NormalBundleDecompositionPackage) : Prop :=
  N.orthogonalDecomposition ∧ N.decompositionSmooth

theorem normal_bundle_decomposition_closed (N : NormalBundleDecompositionPackage)
    (h1 : N.orthogonalDecomposition) (h2 : N.decompositionSmooth) : NormalBundleDecompositionClosed N := by
  exact And.intro h1 h2

end DeformationsSubmanifoldsSubspaces
end HautevilleHouse