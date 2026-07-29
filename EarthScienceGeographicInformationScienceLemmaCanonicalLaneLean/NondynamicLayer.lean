import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeographicInformationScienceLemmaCanonicalLaneLean

structure NondynamicLayerPackage where
  terrainStability : Prop
  temporalConsistency : Prop
  spatialContinuity : Prop
  resolutionIndependence : Prop

structure NondynamicLayerEvidence (P : NondynamicLayerPackage) where
  terrainStabilityClosed : P.terrainStability
  temporalConsistencyClosed : P.temporalConsistency
  spatialContinuityClosed : P.spatialContinuity
  resolutionIndependenceClosed : P.resolutionIndependence

def NondynamicLayerClosed (P : NondynamicLayerPackage) : Prop :=
  P.terrainStability ∧ P.temporalConsistency ∧ P.spatialContinuity ∧ P.resolutionIndependence

theorem nondynamic_layer_closed_from_evidence (P : NondynamicLayerPackage) (E : NondynamicLayerEvidence P) :
    NondynamicLayerClosed P := by
  exact And.intro E.terrainStabilityClosed
    (And.intro E.temporalConsistencyClosed
      (And.intro E.spatialContinuityClosed E.resolutionIndependenceClosed))

end EarthScienceGeographicInformationScienceLemmaCanonicalLaneLean
end HautevilleHouse
