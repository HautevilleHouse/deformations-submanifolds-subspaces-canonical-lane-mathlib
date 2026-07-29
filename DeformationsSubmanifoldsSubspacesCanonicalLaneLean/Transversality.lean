import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DeformationsSubmanifoldsSubspacesCanonicalLaneLean

structure TransversalityPackage where
  manifolds : Type u × Type v
  submanifolds : Type w × Type x
  intersection : Type y
  transverseCondition : Prop
  intersectionSubmanifold : Prop
  dimensionFormula : Prop
  transverseConditionTerm : transverseCondition
  intersectionSubmanifoldTerm : intersectionSubmanifold
  dimensionFormulaTerm : dimensionFormula

structure TransversalityEvidence (T : TransversalityPackage) where
  transverseConditionClosed : T.transverseCondition
  intersectionSubmanifoldClosed : T.intersectionSubmanifold
  dimensionFormulaClosed : T.dimensionFormula

def TransversalityClosed (T : TransversalityPackage) : Prop :=
  T.transverseCondition ∧ T.intersectionSubmanifold ∧ T.dimensionFormula

theorem transversality_closed_from_evidence (T : TransversalityPackage)
    (E : TransversalityEvidence T) : TransversalityClosed T := by
  exact And.intro E.transverseConditionClosed
    (And.intro E.intersectionSubmanifoldClosed E.dimensionFormulaClosed)

end DeformationsSubmanifoldsSubspacesCanonicalLaneLean
end HautevilleHouse
