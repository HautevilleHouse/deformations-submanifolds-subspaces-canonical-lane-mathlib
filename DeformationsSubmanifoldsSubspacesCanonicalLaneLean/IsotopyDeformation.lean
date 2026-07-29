import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DeformationsSubmanifoldsSubspacesCanonicalLaneLean

structure IsotopyDeformationPackage where
  ambientManifold : Type u
  submanifoldFamily : Type v
  isotopyParameter : Type w
  isotopy : isotopyParameter → submanifoldFamily
  isotopySmooth : Prop
  isotopyEmbedding : Prop
  isotopyCondition : isotopySmooth ∧ isotopyEmbedding

structure IsotopyDeformationEvidence (I : IsotopyDeformationPackage) where
  isotopySmoothClosed : I.isotopySmooth
  isotopyEmbeddingClosed : I.isotopyEmbedding

def IsotopyDeformationClosed (I : IsotopyDeformationPackage) : Prop :=
  I.isotopySmooth ∧ I.isotopyEmbedding

theorem isotopy_deformation_closed_from_evidence
    (I : IsotopyDeformationPackage) (E : IsotopyDeformationEvidence I) :
    IsotopyDeformationClosed I := by
  exact And.intro E.isotopySmoothClosed E.isotopyEmbeddingClosed

end DeformationsSubmanifoldsSubspacesCanonicalLaneLean
end HautevilleHouse