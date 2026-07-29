import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeographicInformationScienceLemmaCanonicalLaneLean

structure RemoteSensingPackage where
  sensorCalibration : Prop
  atmosphericCorrection : Prop
  imageClassification : Prop
  sensorCalibrationTerm : sensorCalibration
  atmosphericCorrectionTerm : atmosphericCorrection
  imageClassificationTerm : imageClassification

structure RemoteSensingEvidence (R : RemoteSensingPackage) where
  sensorCalibrationClosed : R.sensorCalibration
  atmosphericCorrectionClosed : R.atmosphericCorrection
  imageClassificationClosed : R.imageClassification

def RemoteSensingClosed (R : RemoteSensingPackage) : Prop :=
  R.sensorCalibration ∧ R.atmosphericCorrection ∧ R.imageClassification

theorem remote_sensing_closed_from_evidence (R : RemoteSensingPackage) (E : RemoteSensingEvidence R) :
    RemoteSensingClosed R := by
  exact And.intro E.sensorCalibrationClosed (And.intro E.atmosphericCorrectionClosed E.imageClassificationClosed)

end EarthScienceGeographicInformationScienceLemmaCanonicalLaneLean
end HautevilleHouse