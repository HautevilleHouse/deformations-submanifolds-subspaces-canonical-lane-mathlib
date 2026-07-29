import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DeformationsSubmanifoldsSubspacesCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure SubmanifoldEndgameState where
  object : SubmanifoldAdmittedObject

def submanifoldProjection : Projection SubmanifoldEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem submanifold_projection_idempotent (x : SubmanifoldEndgameState) :
    submanifoldProjection.toFun (submanifoldProjection.toFun x) = submanifoldProjection.toFun x := by
  exact submanifoldProjection.idempotent x

end DeformationsSubmanifoldsSubspacesCanonicalLaneLean
end HautevilleHouse