import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeographicInformationScienceLemmaCanonicalLaneLean

def geographicProjection : Projection GeographicEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem geographic_projection_idempotent (x : GeographicEndgameState) :
    geographicProjection.toFun (geographicProjection.toFun x) = geographicProjection.toFun x := by
  exact geographicProjection.idempotent x

end EarthScienceGeographicInformationScienceLemmaCanonicalLaneLean
end HautevilleHouse
