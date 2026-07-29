import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeographicInformationScienceLemmaCanonicalLaneLean

structure SpectralIndicesPackage where
  ndvi : ℝ
  evi : ℝ
  savi : ℝ
  ndbi : ℝ
  ndwi : ℝ
  validRange_ndvi : 0 ≤ ndvi ∧ ndvi ≤ 1
  validRange_evi : -1 ≤ evi ∧ evi ≤ 1
  validRange_savi : 0 ≤ savi ∧ savi ≤ 1
  validRange_ndbi : -1 ≤ ndbi ∧ ndbi ≤ 1
  validRange_ndwi : -1 ≤ ndwi ∧ ndwi ≤ 1

structure SpectralIndicesEvidence (S : SpectralIndicesPackage) where
  ndviClosed : S.validRange_ndvi
  eviClosed : S.validRange_evi
  saviClosed : S.validRange_savi
  ndbiClosed : S.validRange_ndbi
  ndwiClosed : S.validRange_ndwi

def SpectralIndicesClosed (S : SpectralIndicesPackage) : Prop :=
  S.validRange_ndvi ∧ S.validRange_evi ∧ S.validRange_savi ∧ S.validRange_ndbi ∧ S.validRange_ndwi

theorem spectral_indices_closed_from_evidence (S : SpectralIndicesPackage) (E : SpectralIndicesEvidence S) :
    SpectralIndicesClosed S := by
  exact And.intro E.ndviClosed (And.intro E.eviClosed (And.intro E.saviClosed (And.intro E.ndbiClosed E.ndwiClosed)))

end EarthScienceGeographicInformationScienceLemmaCanonicalLaneLean
end HautevilleHouse