import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DeformationsSubmanifoldsSubspacesCanonicalLaneLean

structure DeformationRetractPackage (X : Type u) [TopologicalSpace X] (A : Set X) where
  homotopy : X × UnitInterval → X
  fixesA : ∀ a ∈ A, ∀ t : UnitInterval, homotopy (a, t) = a
  atTimeOneMapsToA : ∀ x : X, homotopy (x, 1) ∈ A
  continuousHomotopy : Continuous homotopy

structure DeformationRetractEvidence (X : Type u) [TopologicalSpace X] (A : Set X) (P : DeformationRetractPackage X A) where
  fixesAClosed : P.fixesA
  atTimeOneMapsToAClosed : P.atTimeOneMapsToA
  continuousHomotopyClosed : P.continuousHomotopy

def DeformationRetractClosed (X : Type u) [TopologicalSpace X] (A : Set X) (P : DeformationRetractPackage X A) : Prop :=
  P.fixesA ∧ P.atTimeOneMapsToA ∧ P.continuousHomotopy

theorem deformation_retract_closed_from_evidence (X : Type u) [TopologicalSpace X] (A : Set X) (P : DeformationRetractPackage X A) (E : DeformationRetractEvidence X A P) : DeformationRetractClosed X A P := by
  exact And.intro E.fixesAClosed (And.intro E.atTimeOneMapsToAClosed E.continuousHomotopyClosed)

end DeformationsSubmanifoldsSubspacesCanonicalLaneLean
end HautevilleHouse