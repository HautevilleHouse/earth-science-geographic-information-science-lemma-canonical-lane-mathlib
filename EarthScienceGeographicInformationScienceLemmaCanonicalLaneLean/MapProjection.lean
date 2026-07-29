import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeographicInformationScienceLemmaCanonicalLaneLean

structure MapProjectionPackage where
  projectionFunction : Type u
  conformalProperty : Prop
  equalAreaProperty : Prop
  distortionBound : Prop

structure MapProjectionEvidence (M : MapProjectionPackage) where
  conformalPropertyClosed : M.conformalProperty
  equalAreaPropertyClosed : M.equalAreaProperty
  distortionBoundClosed : M.distortionBound

def MapProjectionClosed (M : MapProjectionPackage) : Prop :=
  M.conformalProperty ∧ M.equalAreaProperty ∧ M.distortionBound

theorem map_projection_closed_from_evidence (M : MapProjectionPackage) (E : MapProjectionEvidence M) : MapProjectionClosed M := by
  exact And.intro E.conformalPropertyClosed (And.intro E.equalAreaPropertyClosed E.distortionBoundClosed)

end EarthScienceGeographicInformationScienceLemmaCanonicalLaneLean
end HautevilleHouse