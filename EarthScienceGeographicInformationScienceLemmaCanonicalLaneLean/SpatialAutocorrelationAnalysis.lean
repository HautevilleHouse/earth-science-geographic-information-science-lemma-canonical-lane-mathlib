import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeographicInformationScienceLemmaCanonicalLaneLean

structure SpatialAutocorrelationAnalysisPackage where
  moransI : ℝ
  gearysC : ℝ
  getisOrdG : ℝ
  significanceLevel : ℝ
  expectedI : ℝ
  varianceI : ℝ

structure SpatialAutocorrelationAnalysisEvidence (S : SpatialAutocorrelationAnalysisPackage) where
  moransIWithinRange : -1 ≤ S.moransI ∧ S.moransI ≤ 1
  gearysCPositive : 0 ≤ S.gearysC
  getisOrdGStandardized : S.getisOrdG ∈ Set.Icc (-3 : ℝ) (3 : ℝ)
  significanceLevelValid : 0 ≤ S.significanceLevel ∧ S.significanceLevel ≤ 1
  expectedIComputed : S.expectedI = -1 / (Nat.succ (0 : ℕ)).toℝ

def SpatialAutocorrelationAnalysisClosed (S : SpatialAutocorrelationAnalysisPackage) : Prop :=
  (-1 ≤ S.moransI ∧ S.moransI ≤ 1) ∧ (0 ≤ S.gearysC) ∧ (S.getisOrdG ∈ Set.Icc (-3 : ℝ) (3 : ℝ)) ∧ (0 ≤ S.significanceLevel ∧ S.significanceLevel ≤ 1) ∧ (S.expectedI = -1 / (Nat.succ (0 : ℕ)).toℝ)

theorem spatial_autocorrelation_analysis_closed_from_evidence (S : SpatialAutocorrelationAnalysisPackage) (E : SpatialAutocorrelationAnalysisEvidence S) :
    SpatialAutocorrelationAnalysisClosed S := by
  exact And.intro E.moransIWithinRange (And.intro E.gearysCPositive (And.intro E.getisOrdGStandardized (And.intro E.significanceLevelValid E.expectedIComputed)))

end EarthScienceGeographicInformationScienceLemmaCanonicalLaneLean
end HautevilleHouse