import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DeformationsSubmanifoldsSubspaces

structure InfinitesimalDeformationPackage where
  manifold : Type
  deformationParameter : Type
  vectorField : Type
  deformationEquation : Prop
  linearizationDefined : Prop
  solutionSpace : Prop

def InfinitesimalDeformationClosed (I : InfinitesimalDeformationPackage) : Prop :=
  I.deformationEquation ∧ I.linearizationDefined ∧ I.solutionSpace

theorem infinitesimal_deformation_closed (I : InfinitesimalDeformationPackage)
    (h1 : I.deformationEquation) (h2 : I.linearizationDefined) (h3 : I.solutionSpace) : InfinitesimalDeformationClosed I := by
  exact And.intro h1 (And.intro h2 h3)

end DeformationsSubmanifoldsSubspaces
end HautevilleHouse