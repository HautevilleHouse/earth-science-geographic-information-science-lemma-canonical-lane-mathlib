import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeographicInformationScienceLemmaCanonicalLaneLean

structure VisualizationLayer (S : SpatialInformationPackage) where
  colorMap : S.attributeDomain -> ℝ³
  pointProjection : S.spatialDomain -> ℝ²
  continuousColorMap : Prop
  continuousProjection : Prop
  colorMapContinuous : continuousColorMap
  projectionContinuous : continuousProjection

structure VisualizationEvidence {S : SpatialInformationPackage} (V : VisualizationLayer S) where
  colorMapContinuousClosed : V.continuousColorMap
  projectionContinuousClosed : V.continuousProjection

def VisualizationClosed {S : SpatialInformationPackage} (V : VisualizationLayer S) : Prop :=
  V.continuousColorMap ∧ V.continuousProjection

theorem visualization_closed_from_evidence {S : SpatialInformationPackage} (V : VisualizationLayer S)
    (E : VisualizationEvidence V) : VisualizationClosed V := by
  exact And.intro E.colorMapContinuousClosed E.projectionContinuousClosed

end EarthScienceGeographicInformationScienceLemmaCanonicalLaneLean
end HautevilleHouse
