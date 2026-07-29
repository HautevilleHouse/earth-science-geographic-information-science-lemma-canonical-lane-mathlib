import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeographicInformationScienceLemmaCanonicalLaneLean

structure SpatialInformationPackage where
  spatialDomain : Type u
  spatialTopology : TopologicalSpace spatialDomain
  attributeDomain : Type v
  attributeTopology : TopologicalSpace attributeDomain
  spatialField : spatialDomain -> attributeDomain
  continuousField : Prop
  spatialFieldContinuous : continuousField

structure SpatialInformationEvidence (S : SpatialInformationPackage) where
  spatialFieldContinuousClosed : S.continuousField

def SpatialInformationClosed (S : SpatialInformationPackage) : Prop :=
  S.continuousField

theorem spatial_information_closed_from_evidence (S : SpatialInformationPackage)
    (E : SpatialInformationEvidence S) : SpatialInformationClosed S := by
  exact E.spatialFieldContinuousClosed

end EarthScienceGeographicInformationScienceLemmaCanonicalLaneLean
end HautevilleHouse
