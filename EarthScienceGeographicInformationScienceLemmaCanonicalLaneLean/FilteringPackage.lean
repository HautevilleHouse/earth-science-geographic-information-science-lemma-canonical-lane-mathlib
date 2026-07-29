import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeographicInformationScienceLemmaCanonicalLaneLean

structure FilteringPackage (S : SpatialInformationPackage) where
  lowPassKernel : S.spatialDomain -> ℝ
  highPassKernel : S.spatialDomain -> ℝ
  kernelConvolution : (S.spatialDomain -> ℝ) -> (S.spatialDomain -> ℝ) -> (S.spatialDomain -> ℝ)
  kernelPositivity : Prop
  convolutionWellDefined : Prop
  kernelPositivityClosed : kernelPositivity
  convolutionWellDefinedClosed : convolutionWellDefined

structure FilteringEvidence {S : SpatialInformationPackage} (F : FilteringPackage S) where
  kernelPositivityClosed : F.kernelPositivity
  convolutionWellDefinedClosed : F.convolutionWellDefined

def FilteringClosed {S : SpatialInformationPackage} (F : FilteringPackage S) : Prop :=
  F.kernelPositivity ∧ F.convolutionWellDefined

theorem filtering_closed_from_evidence {S : SpatialInformationPackage} (F : FilteringPackage S)
    (E : FilteringEvidence F) : FilteringClosed F := by
  exact And.intro E.kernelPositivityClosed E.convolutionWellDefinedClosed

end EarthScienceGeographicInformationScienceLemmaCanonicalLaneLean
end HautevilleHouse
