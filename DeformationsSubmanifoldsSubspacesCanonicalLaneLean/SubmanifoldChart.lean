import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DeformationsSubmanifoldsSubspacesCanonicalLaneLean

structure SubmanifoldAtlas where
  ambient : Type u
  charts : Type v
  smoothCompatible : Prop
  covering : Prop
  smoothCompatibleTerm : smoothCompatible
  coveringTerm : covering

structure SubmanifoldChartPackage where
  atlas : SubmanifoldAtlas
  submanifold : Type w
  embedding : submanifold → atlas.ambient
  chartDomains : submanifold → set atlas.ambient
  localHomeomorphisms : Prop
  transitionFunctionsSmooth : Prop
  localHomeomorphismsTerm : localHomeomorphisms
  transitionFunctionsSmoothTerm : transitionFunctionsSmooth

structure SubmanifoldChartEvidence (C : SubmanifoldChartPackage) where
  localHomeomorphismsClosed : C.localHomeomorphisms
  transitionFunctionsSmoothClosed : C.transitionFunctionsSmooth

def SubmanifoldChartClosed (C : SubmanifoldChartPackage) : Prop :=
  C.localHomeomorphisms ∧ C.transitionFunctionsSmooth

theorem submanifold_chart_closed_from_evidence (C : SubmanifoldChartPackage)
    (E : SubmanifoldChartEvidence C) : SubmanifoldChartClosed C := by
  exact And.intro E.localHomeomorphismsClosed E.transitionFunctionsSmoothClosed

end DeformationsSubmanifoldsSubspacesCanonicalLaneLean
end HautevilleHouse
