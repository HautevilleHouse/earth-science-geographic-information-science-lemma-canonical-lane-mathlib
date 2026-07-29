import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeographicInformationScienceLemmaCanonicalLaneLean

structure SpatialStatisticsPackage where
  spatialAutocorrelation : Prop
  krigingEstimation : Prop
  variogramModel : Prop
  spatialAutocorrelationTerm : spatialAutocorrelation
  krigingEstimationTerm : krigingEstimation
  variogramModelTerm : variogramModel

structure SpatialStatisticsEvidence (S : SpatialStatisticsPackage) where
  spatialAutocorrelationClosed : S.spatialAutocorrelation
  krigingEstimationClosed : S.krigingEstimation
  variogramModelClosed : S.variogramModel

def SpatialStatisticsClosed (S : SpatialStatisticsPackage) : Prop :=
  S.spatialAutocorrelation ∧ S.krigingEstimation ∧ S.variogramModel

theorem spatial_statistics_closed_from_evidence (S : SpatialStatisticsPackage) (E : SpatialStatisticsEvidence S) :
    SpatialStatisticsClosed S := by
  exact And.intro E.spatialAutocorrelationClosed (And.intro E.krigingEstimationClosed E.variogramModelClosed)

end EarthScienceGeographicInformationScienceLemmaCanonicalLaneLean
end HautevilleHouse