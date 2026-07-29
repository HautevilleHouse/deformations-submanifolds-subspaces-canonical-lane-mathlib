import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DeformationsSubmanifoldsSubspacesCanonicalLaneLean

structure TangentSubspaceStructure where
  ambientManifold : Type u
  point : ambientManifold
  tangentSpace : Type v
  subspaceDimension : Nat
  subspaceBasis : Type w
  linearInclusion : tangentSpace → tangentSpace
  dimensionWellDefined : subspaceDimension ≤ Nat.succ 0
  subspaceClosedUnderLie : Prop
  tangentSubspaceClosed : dimensionWellDefined ∧ subspaceClosedUnderLie

structure TangentSubspaceEvidence (T : TangentSubspaceStructure) where
  dimensionWellDefinedClosed : T.dimensionWellDefined
  subspaceClosedUnderLieClosed : T.subspaceClosedUnderLie

def TangentSubspaceClosed (T : TangentSubspaceStructure) : Prop :=
  T.dimensionWellDefined ∧ T.subspaceClosedUnderLie

theorem tangent_subspace_closed_from_evidence
    (T : TangentSubspaceStructure) (E : TangentSubspaceEvidence T) :
    TangentSubspaceClosed T := by
  exact And.intro E.dimensionWellDefinedClosed E.subspaceClosedUnderLieClosed

end DeformationsSubmanifoldsSubspacesCanonicalLaneLean
end HautevilleHouse