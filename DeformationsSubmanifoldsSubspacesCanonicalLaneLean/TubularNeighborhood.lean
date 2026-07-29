import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DeformationsSubmanifoldsSubspacesCanonicalLaneLean

structure TubularNeighborhoodPackage where
  ambient : Type u
  submanifold : Type v
  openNeighborhood : set ambient
  retraction : openNeighborhood → submanifold
  diffeomorphismToNormalBundle : Prop
  retractionSmooth : Prop
  diffeomorphismToNormalBundleTerm : diffeomorphismToNormalBundle
  retractionSmoothTerm : retractionSmooth

structure TubularNeighborhoodEvidence (T : TubularNeighborhoodPackage) where
  diffeomorphismToNormalBundleClosed : T.diffeomorphismToNormalBundle
  retractionSmoothClosed : T.retractionSmooth

def TubularNeighborhoodClosed (T : TubularNeighborhoodPackage) : Prop :=
  T.diffeomorphismToNormalBundle ∧ T.retractionSmooth

theorem tubular_neighborhood_closed_from_evidence (T : TubularNeighborhoodPackage)
    (E : TubularNeighborhoodEvidence T) : TubularNeighborhoodClosed T := by
  exact And.intro E.diffeomorphismToNormalBundleClosed E.retractionSmoothClosed

end DeformationsSubmanifoldsSubspacesCanonicalLaneLean
end HautevilleHouse
