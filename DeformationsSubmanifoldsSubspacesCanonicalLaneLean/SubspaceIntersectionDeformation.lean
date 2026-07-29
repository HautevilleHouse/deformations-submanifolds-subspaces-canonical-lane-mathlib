import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DeformationsSubmanifoldsSubspaces

structure SubspaceIntersectionDeformationPackage where
  ambientSpace : Type
  subspaceA : Type
  subspaceB : Type
  intersection : Type
  deformationFamily : Type
  intersectionSmooth : Prop
  deformationProperty : Prop

def SubspaceIntersectionDeformationClosed (S : SubspaceIntersectionDeformationPackage) : Prop :=
  S.intersectionSmooth ∧ S.deformationProperty

theorem subspace_intersection_deformation_closed (S : SubspaceIntersectionDeformationPackage)
    (h1 : S.intersectionSmooth) (h2 : S.deformationProperty) : SubspaceIntersectionDeformationClosed S := by
  exact And.intro h1 h2

end DeformationsSubmanifoldsSubspaces
end HautevilleHouse