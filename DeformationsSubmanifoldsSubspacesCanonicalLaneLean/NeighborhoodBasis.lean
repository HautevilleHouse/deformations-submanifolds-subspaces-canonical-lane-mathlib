import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DeformationsSubmanifoldsSubspacesCanonicalLaneLean

structure NeighborhoodBasisPackage where
  space : Type u
  point : space
  basis : Set (Set space)
  eachNeighborhoodOpen : ∀ N ∈ basis, IsOpen N
  pointInEach : ∀ N ∈ basis, point ∈ N
  filterBasis : ∀ (U : Set space), IsOpen U → point ∈ U → ∃ N ∈ basis, N ⊆ U

structure NeighborhoodBasisEvidence (B : NeighborhoodBasisPackage) where
  eachNeighborhoodOpenClosed : B.eachNeighborhoodOpen
  pointInEachClosed : B.pointInEach
  filterBasisClosed : B.filterBasis

def NeighborhoodBasisClosed (B : NeighborhoodBasisPackage) : Prop :=
  B.eachNeighborhoodOpen ∧ B.pointInEach ∧ B.filterBasis

theorem neighborhood_basis_closed_from_evidence (B : NeighborhoodBasisPackage)
    (E : NeighborhoodBasisEvidence B) : NeighborhoodBasisClosed B := by
  exact And.intro E.eachNeighborhoodOpenClosed
    (And.intro E.pointInEachClosed E.filterBasisClosed)

end DeformationsSubmanifoldsSubspacesCanonicalLaneLean
end HautevilleHouse