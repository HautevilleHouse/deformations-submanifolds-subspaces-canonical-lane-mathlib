import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DeformationsSubmanifoldsSubspaces

structure TangentSubspaceTransportPackage where
  baseManifold : Type
  tangentBundle : Type
  subspaceField : Type
  transportAlongCurve : Type
  parallelTransportDefined : Prop
  subspaceFieldSmooth : Prop

def TangentSubspaceTransportClosed (T : TangentSubspaceTransportPackage) : Prop :=
  T.parallelTransportDefined ∧ T.subspaceFieldSmooth

theorem tangent_subspace_transport_closed (T : TangentSubspaceTransportPackage)
    (h1 : T.parallelTransportDefined) (h2 : T.subspaceFieldSmooth) : TangentSubspaceTransportClosed T := by
  exact And.intro h1 h2

end DeformationsSubmanifoldsSubspaces
end HautevilleHouse