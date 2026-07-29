import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DeformationsSubmanifoldsSubspaces

structure DeformationRetractPackage where
  space : Type
  subspace : Type
  inclusion : subspace → space
  retraction : space → subspace
  homotopy : Type
  deformationRetractProperty : Prop
  homotopyContinuous : Prop

def DeformationRetractClosed (D : DeformationRetractPackage) : Prop :=
  D.deformationRetractProperty ∧ D.homotopyContinuous

theorem deformation_retract_closed (D : DeformationRetractPackage)
    (h1 : D.deformationRetractProperty) (h2 : D.homotopyContinuous) : DeformationRetractClosed D := by
  exact And.intro h1 h2

end DeformationsSubmanifoldsSubspaces
end HautevilleHouse