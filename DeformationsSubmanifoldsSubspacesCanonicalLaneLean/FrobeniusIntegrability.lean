import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DeformationsSubmanifoldsSubspacesCanonicalLaneLean

structure DistributionPackage where
  ambientManifold : Type u
  distribution : Type v
  involutive : Prop
  integrable : Prop
  leafSubmanifold : Type w
  leafSubmanifoldEmbedding : leafSubmanifold → ambientManifold
  involutiveCondition : involutive
  integrableCondition : integrable
  frobeniusClosed : involutiveCondition ∧ integrableCondition

structure DistributionEvidence (D : DistributionPackage) where
  involutiveClosed : D.involutive
  integrableClosed : D.integrable

def DistributionClosed (D : DistributionPackage) : Prop :=
  D.involutive ∧ D.integrable

theorem distribution_closed_from_evidence
    (D : DistributionPackage) (E : DistributionEvidence D) :
    DistributionClosed D := by
  exact And.intro E.involutiveClosed E.integrableClosed

end DeformationsSubmanifoldsSubspacesCanonicalLaneLean
end HautevilleHouse