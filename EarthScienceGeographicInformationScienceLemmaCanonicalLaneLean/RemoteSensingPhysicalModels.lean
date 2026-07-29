import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeographicInformationScienceLemmaCanonicalLaneLean

structure RemoteSensingPhysicalModelsPackage where
  atmosphericCorrection : Prop
  topographicCorrection : Prop
  bidirectionalReflectanceDistributionFunction : Prop
  solarZenithAngle : ℝ
  sensorCalibration : Prop

structure RemoteSensingPhysicalModelsEvidence (R : RemoteSensingPhysicalModelsPackage) where
  atmosphericCorrectionClosed : R.atmosphericCorrection
  topographicCorrectionClosed : R.topographicCorrection
  bidirectionalReflectanceDistributionFunctionClosed : R.bidirectionalReflectanceDistributionFunction
  solarZenithAngleClosed : 0 ≤ R.solarZenithAngle ∧ R.solarZenithAngle ≤ π/2
  sensorCalibrationClosed : R.sensorCalibration

def RemoteSensingPhysicalModelsClosed (R : RemoteSensingPhysicalModelsPackage) : Prop :=
  R.atmosphericCorrection ∧ R.topographicCorrection ∧ R.bidirectionalReflectanceDistributionFunction ∧
  (0 ≤ R.solarZenithAngle ∧ R.solarZenithAngle ≤ π/2) ∧ R.sensorCalibration

theorem remote_sensing_physical_models_closed_from_evidence (R : RemoteSensingPhysicalModelsPackage) (E : RemoteSensingPhysicalModelsEvidence R) :
    RemoteSensingPhysicalModelsClosed R := by
  exact And.intro E.atmosphericCorrectionClosed (And.intro E.topographicCorrectionClosed (And.intro E.bidirectionalReflectanceDistributionFunctionClosed (And.intro E.solarZenithAngleClosed E.sensorCalibrationClosed)))

end EarthScienceGeographicInformationScienceLemmaCanonicalLaneLean
end HautevilleHouse