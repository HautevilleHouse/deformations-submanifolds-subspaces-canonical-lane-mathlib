import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DeformationsSubmanifoldsSubspacesCanonicalLaneLean

structure TransversalitySubspacePackage where
  ambientManifold : Type u
  submanifoldA : Type v
  submanifoldB : Type w
  intersection : Type x
  transversalCondition : Prop
  intersectionSubmanifold : Prop
  transversalClosed : transversalCondition ∧ intersectionSubmanifold

structure TransversalityEvidence (T : TransversalitySubspacePackage) where
  transversalConditionClosed : T.transversalCondition
  intersectionSubmanifoldClosed : T.intersectionSubmanifold

def TransversalityClosed (T : TransversalitySubspacePackage) : Prop :=
  T.transversalCondition ∧ T.intersectionSubmanifold

theorem transversality_closed_from_evidence
    (T : TransversalitySubspacePackage) (E : TransversalityEvidence T) :
    TransversalityClosed T := by
  exact And.intro E.transversalConditionClosed E.intersectionSubmanifoldClosed

end DeformationsSubmanifoldsSubspacesCanonicalLaneLean
end HautevilleHouse