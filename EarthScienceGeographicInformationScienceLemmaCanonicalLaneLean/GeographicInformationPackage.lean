import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeographicInformationScienceLemmaCanonicalLaneLean

structure GeographicInformationPackage where
  spatialDomain : Type u
  projection : Type v
  coordinateTransform : Type w
  mapScale : Prop
  accuracy : Prop
  mapScaleTerm : mapScale
  accuracyTerm : accuracy

structure GeographicInformationEvidence (G : GeographicInformationPackage) where
  mapScaleClosed : G.mapScale
  accuracyClosed : G.accuracy

def GeographicInformationClosed (G : GeographicInformationPackage) : Prop :=
  G.mapScale ∧ G.accuracy

theorem geographic_information_closed_from_evidence (G : GeographicInformationPackage) (E : GeographicInformationEvidence G) :
    GeographicInformationClosed G := by
  exact And.intro E.mapScaleClosed E.accuracyClosed

end EarthScienceGeographicInformationScienceLemmaCanonicalLaneLean
end HautevilleHouse