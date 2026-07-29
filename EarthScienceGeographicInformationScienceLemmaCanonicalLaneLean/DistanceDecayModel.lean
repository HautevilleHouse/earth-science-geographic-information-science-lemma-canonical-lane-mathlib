import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeographicInformationScienceLemmaCanonicalLaneLean

structure DistanceDecayModel (S : SpatialInformationPackage) where
  distanceFunction : S.spatialDomain -> S.spatialDomain -> ℝ
  decayFunction : ℝ -> ℝ
  positiveDistance : Prop
  decayMonotonic : Prop
  distanceFunctionPositive : positiveDistance
  decayFunctionMonotonic : decayMonotonic

structure DistanceDecayEvidence {S : SpatialInformationPackage} (D : DistanceDecayModel S) where
  positiveDistanceClosed : D.positiveDistance
  decayMonotonicClosed : D.decayMonotonic

def DistanceDecayClosed {S : SpatialInformationPackage} (D : DistanceDecayModel S) : Prop :=
  D.positiveDistance ∧ D.decayMonotonic

theorem distance_decay_closed_from_evidence {S : SpatialInformationPackage} (D : DistanceDecayModel S)
    (E : DistanceDecayEvidence D) : DistanceDecayClosed D := by
  exact And.intro E.positiveDistanceClosed E.decayMonotonicClosed

end EarthScienceGeographicInformationScienceLemmaCanonicalLaneLean
end HautevilleHouse
