import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DeformationsSubmanifoldsSubspaces

structure DeformationSubmanifoldPackage where
  ambientManifold : Type
  submanifold : Type
  embedding : submanifold → ambientManifold
  deformationVectorField : Type
  deformationSmooth : Prop
  submanifoldSmooth : Prop
  deformationFamily : Prop

structure DeformationSubmanifoldEvidence (D : DeformationSubmanifoldPackage) where
  deformationSmoothClosed : D.deformationSmooth
  submanifoldSmoothClosed : D.submanifoldSmooth
  deformationFamilyClosed : D.deformationFamily

def DeformationSubmanifoldClosed (D : DeformationSubmanifoldPackage) : Prop :=
  D.deformationSmooth ∧ D.submanifoldSmooth ∧ D.deformationFamily

theorem deformation_submanifold_closed_from_evidence (D : DeformationSubmanifoldPackage)
    (E : DeformationSubmanifoldEvidence D) : DeformationSubmanifoldClosed D := by
  exact And.intro E.deformationSmoothClosed (And.intro E.submanifoldSmoothClosed E.deformationFamilyClosed)

end DeformationsSubmanifoldsSubspaces
end HautevilleHouse