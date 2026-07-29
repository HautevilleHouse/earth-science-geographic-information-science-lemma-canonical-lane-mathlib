import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeographicInformationScienceLemmaCanonicalLaneLean

structure SpatialAutocorrelationMeasure (S : SpatialInformationPackage) (D : DistanceDecayModel S) where
  moransI : ℝ
  variogram : ℝ -> ℝ
  positiveSpatialStructure : Prop
  positiveSpatialStructureClosed : positiveSpatialStructure

structure SpatialAutocorrelationEvidence {S : SpatialInformationPackage} {D : DistanceDecayModel S}
    (A : SpatialAutocorrelationMeasure S D) where
  positiveSpatialStructureClosed : A.positiveSpatialStructure

def SpatialAutocorrelationClosed {S : SpatialInformationPackage} {D : DistanceDecayModel S}
    (A : SpatialAutocorrelationMeasure S D) : Prop :=
  A.positiveSpatialStructure

theorem spatial_autocorrelation_closed_from_evidence {S : SpatialInformationPackage} {D : DistanceDecayModel S}
    (A : SpatialAutocorrelationMeasure S D) (E : SpatialAutocorrelationEvidence A) :
    SpatialAutocorrelationClosed A := by
  exact E.positiveSpatialStructureClosed

end EarthScienceGeographicInformationScienceLemmaCanonicalLaneLean
end HautevilleHouse
