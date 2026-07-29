import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DeformationsSubmanifoldsSubspacesCanonicalLaneLean

structure VectorSpacePackage where
  field : Type u
  space : Type v
  addition : space → space → space
  scalarMul : field → space → space
  vectorSpaceAxioms : Prop
  vectorSpaceAxiomsTerm : vectorSpaceAxioms

structure GrassmannianPackage (V : VectorSpacePackage) where
  k : ℕ
  subspaceSet : Type w
  smoothStructure : Prop
  tautologicalBundle : Type u₁
  grassmannianManifold : Prop
  smoothStructureTerm : smoothStructure
  grassmannianManifoldTerm : grassmannianManifold

structure GrassmannianEvidence {V : VectorSpacePackage}
    (G : GrassmannianPackage V) where
  smoothStructureClosed : G.smoothStructure
  grassmannianManifoldClosed : G.grassmannianManifold

def GrassmannianClosed {V : VectorSpacePackage}
    (G : GrassmannianPackage V) : Prop :=
  G.smoothStructure ∧ G.grassmannianManifold

theorem grassmannian_closed_from_evidence {V : VectorSpacePackage}
    (G : GrassmannianPackage V) (E : GrassmannianEvidence G) : GrassmannianClosed G := by
  exact And.intro E.smoothStructureClosed E.grassmannianManifoldClosed

end DeformationsSubmanifoldsSubspacesCanonicalLaneLean
end HautevilleHouse
