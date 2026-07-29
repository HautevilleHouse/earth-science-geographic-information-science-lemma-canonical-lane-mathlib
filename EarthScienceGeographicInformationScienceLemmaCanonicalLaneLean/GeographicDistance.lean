import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeographicInformationScienceLemmaCanonicalLaneLean

structure GeographicDistancePackage where
  distanceMetric : Type u
  metricSpaceAxioms : Prop
  geodesicProperty : Prop
  distanceDecay : Prop

structure GeographicDistanceEvidence (G : GeographicDistancePackage) where
  metricSpaceAxiomsClosed : G.metricSpaceAxioms
  geodesicPropertyClosed : G.geodesicProperty
  distanceDecayClosed : G.distanceDecay

def GeographicDistanceClosed (G : GeographicDistancePackage) : Prop :=
  G.metricSpaceAxioms ∧ G.geodesicProperty ∧ G.distanceDecay

theorem geographic_distance_closed_from_evidence (G : GeographicDistancePackage) (E : GeographicDistanceEvidence G) : GeographicDistanceClosed G := by
  exact And.intro E.metricSpaceAxiomsClosed (And.intro E.geodesicPropertyClosed E.distanceDecayClosed)

end EarthScienceGeographicInformationScienceLemmaCanonicalLaneLean
end HautevilleHouse