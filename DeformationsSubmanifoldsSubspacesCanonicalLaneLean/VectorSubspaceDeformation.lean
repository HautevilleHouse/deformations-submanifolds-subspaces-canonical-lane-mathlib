import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DeformationsSubmanifoldsSubspacesCanonicalLaneLean

structure VectorSubspaceDeformationPackage (V : Type u) [AddCommGroup V] [Module ℝ V] [TopologicalSpace V] [TopologicalAddGroup V] [ContinuousSMul ℝ V] (U : Subspace ℝ V) where
  deformationMap : ℝ → V → V
  fixesU : ∀ u : U, ∀ t : ℝ, deformationMap t (u.val) = u.val
  linearAtEachT : ∀ t : ℝ, IsLinearMap ℝ (deformationMap t)
  continuousDeformation : Continuous (uncurry deformationMap)

structure VectorSubspaceDeformationEvidence (V : Type u) [AddCommGroup V] [Module ℝ V] [TopologicalSpace V] [TopologicalAddGroup V] [ContinuousSMul ℝ V] (U : Subspace ℝ V) (P : VectorSubspaceDeformationPackage V U) where
  fixesUClosed : P.fixesU
  linearAtEachTClosed : P.linearAtEachT
  continuousDeformationClosed : P.continuousDeformation

def VectorSubspaceDeformationClosed (V : Type u) [AddCommGroup V] [Module ℝ V] [TopologicalSpace V] [TopologicalAddGroup V] [ContinuousSMul ℝ V] (U : Subspace ℝ V) (P : VectorSubspaceDeformationPackage V U) : Prop :=
  P.fixesU ∧ P.linearAtEachT ∧ P.continuousDeformation

theorem vector_subspace_deformation_closed_from_evidence (V : Type u) [AddCommGroup V] [Module ℝ V] [TopologicalSpace V] [TopologicalAddGroup V] [ContinuousSMul ℝ V] (U : Subspace ℝ V) (P : VectorSubspaceDeformationPackage V U) (E : VectorSubspaceDeformationEvidence V U P) : VectorSubspaceDeformationClosed V U P := by
  exact And.intro E.fixesUClosed (And.intro E.linearAtEachTClosed E.continuousDeformationClosed)

end DeformationsSubmanifoldsSubspacesCanonicalLaneLean
end HautevilleHouse