import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DeformationsSubmanifoldsSubspacesCanonicalLaneLean

structure SubmanifoldDeformationSpace where
  ambientManifold : Type u
  submanifold : Type v
  embedding : submanifold → ambientManifold
  deformationParameter : Type w
  family : deformationParameter → submanifold → ambientManifold
  smoothFamily : Prop
  initialCondition : Prop
  deformationEquation : Prop

structure SubmanifoldDeformationSpaceEvidence (S : SubmanifoldDeformationSpace) where
  smoothFamilyClosed : S.smoothFamily
  initialConditionClosed : S.initialCondition
  deformationEquationClosed : S.deformationEquation

def SubmanifoldDeformationSpaceClosed (S : SubmanifoldDeformationSpace) : Prop :=
  S.smoothFamily ∧ S.initialCondition ∧ S.deformationEquation

theorem submanifold_deformation_space_closed_from_evidence (S : SubmanifoldDeformationSpace)
    (E : SubmanifoldDeformationSpaceEvidence S) : SubmanifoldDeformationSpaceClosed S := by
  exact And.intro E.smoothFamilyClosed (And.intro E.initialConditionClosed E.deformationEquationClosed)

end DeformationsSubmanifoldsSubspacesCanonicalLaneLean
end HautevilleHouse