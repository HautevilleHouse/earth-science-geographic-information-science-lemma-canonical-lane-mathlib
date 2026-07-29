import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeographicInformationScienceLemmaCanonicalLaneLean

structure SpatialAutocorrelationPackage where
  autocorrelationMeasure : Type u
  positiveAutocorrelation : Prop
  negativeAutocorrelation : Prop
  moranStatistic : Prop

structure SpatialAutocorrelationEvidence (S : SpatialAutocorrelationPackage) where
  positiveAutocorrelationClosed : S.positiveAutocorrelation
  negativeAutocorrelationClosed : S.negativeAutocorrelation
  moranStatisticClosed : S.moranStatistic

def SpatialAutocorrelationClosed (S : SpatialAutocorrelationPackage) : Prop :=
  S.positiveAutocorrelation ∧ S.negativeAutocorrelation ∧ S.moranStatistic

theorem spatial_autocorrelation_closed_from_evidence (S : SpatialAutocorrelationPackage) (E : SpatialAutocorrelationEvidence S) : SpatialAutocorrelationClosed S := by
  exact And.intro E.positiveAutocorrelationClosed (And.intro E.negativeAutocorrelationClosed E.moranStatisticClosed)

end EarthScienceGeographicInformationScienceLemmaCanonicalLaneLean
end HautevilleHouse