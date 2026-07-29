import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DeformationsSubmanifoldsSubspacesCanonicalLaneLean

structure IsotopyPackage where
  ambient : Type u
  submanifold : Type v
  time : Type w
  isotopy : time → ambient → ambient
  familyOfEmbeddings : time → submanifold → ambient
  isotopyStartsAtId : isotopy 0 = id
  isotopySmooth : Prop
  familySmooth : Prop
  isotopyStartsAtIdTerm : isotopyStartsAtId
  isotopySmoothTerm : isotopySmooth
  familySmoothTerm : familySmooth

structure IsotopyExtensionEvidence (I : IsotopyPackage) where
  isotopySmoothClosed : I.isotopySmooth
  familySmoothClosed : I.familySmooth
  isotopyStartsAtIdClosed : I.isotopyStartsAtId

def IsotopyExtensionClosed (I : IsotopyPackage) : Prop :=
  I.isotopySmooth ∧ I.familySmooth ∧ I.isotopyStartsAtId

theorem isotopy_extension_closed_from_evidence (I : IsotopyPackage)
    (E : IsotopyExtensionEvidence I) : IsotopyExtensionClosed I := by
  exact And.intro E.isotopySmoothClosed
    (And.intro E.familySmoothClosed E.isotopyStartsAtIdClosed)

end DeformationsSubmanifoldsSubspacesCanonicalLaneLean
end HautevilleHouse
