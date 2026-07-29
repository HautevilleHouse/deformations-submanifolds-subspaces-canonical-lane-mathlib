import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DeformationsSubmanifoldsSubspacesCanonicalLaneLean

structure NormalSubspaceStructure where
  ambientSpace : Type u
  submanifold : Type v
  normalSpaceAtPoint : submanifold → Type w
  orthogonalDecomposition : Prop
  metricCompatible : Prop
  dimensionConsistent : Prop

structure NormalSubspaceStructureEvidence (N : NormalSubspaceStructure) where
  orthogonalDecompositionClosed : N.orthogonalDecomposition
  metricCompatibleClosed : N.metricCompatible
  dimensionConsistentClosed : N.dimensionConsistent

def NormalSubspaceStructureClosed (N : NormalSubspaceStructure) : Prop :=
  N.orthogonalDecomposition ∧ N.metricCompatible ∧ N.dimensionConsistent

theorem normal_subspace_structure_closed_from_evidence (N : NormalSubspaceStructure)
    (E : NormalSubspaceStructureEvidence N) : NormalSubspaceStructureClosed N := by
  exact And.intro E.orthogonalDecompositionClosed
    (And.intro E.metricCompatibleClosed E.dimensionConsistentClosed)

end DeformationsSubmanifoldsSubspacesCanonicalLaneLean
end HautevilleHouse