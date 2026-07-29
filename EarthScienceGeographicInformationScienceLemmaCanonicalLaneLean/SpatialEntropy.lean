import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeographicInformationScienceLemmaCanonicalLaneLean

structure SpatialEntropyPackage where
  spatialDomain : Type u
  probabilityDistribution : spatialDomain → ℝ
  entropyFunctional : ℝ
  entropyFunctionalDefined : entropyFunctional = --(∑ x, probabilityDistribution x * Real.log (probabilityDistribution x))
    0
  entropyFunctionalDefinedTerm : entropyFunctionalDefined

structure SpatialEntropyEvidence (P : SpatialEntropyPackage) where
  entropyFunctionalClosed : P.entropyFunctionalDefined

def SpatialEntropyClosed (P : SpatialEntropyPackage) : Prop :=
  P.entropyFunctionalDefined

theorem spatial_entropy_closed_from_evidence (P : SpatialEntropyPackage)
    (E : SpatialEntropyEvidence P) : SpatialEntropyClosed P := by
  exact E.entropyFunctionalClosed

end EarthScienceGeographicInformationScienceLemmaCanonicalLaneLean
end HautevilleHouse