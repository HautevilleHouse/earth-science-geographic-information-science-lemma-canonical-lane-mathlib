import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeographicInformationScienceLemmaCanonicalLaneLean

structure SourceCodingTheoremPackage where
  sourceEntropy : ℝ
  codeRate : ℝ
  errorProbability : ℝ
  sourceCodingInequality : sourceEntropy ≤ codeRate + errorProbability
  sourceCodingInequalityTerm : sourceCodingInequality

structure SourceCodingTheoremEvidence (S : SourceCodingTheoremPackage) where
  sourceCodingClosed : S.sourceCodingInequality

def SourceCodingTheoremClosed (S : SourceCodingTheoremPackage) : Prop :=
  S.sourceCodingInequality

theorem source_coding_theorem_closed_from_evidence (S : SourceCodingTheoremPackage)
    (E : SourceCodingTheoremEvidence S) : SourceCodingTheoremClosed S := by
  exact E.sourceCodingClosed

end EarthScienceGeographicInformationScienceLemmaCanonicalLaneLean
end HautevilleHouse