import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeographicInformationScienceLemmaCanonicalLaneLean

structure SpatialAnalysisPackage (G : GeographicInformationPackage) where
  interpolation : Prop
  clustering : Prop
  hypothesisTest : Prop
  interpolationTerm : interpolation
  clusteringTerm : clustering
  hypothesisTestTerm : hypothesisTest

structure SpatialAnalysisEvidence {G : GeographicInformationPackage} (S : SpatialAnalysisPackage G) where
  interpolationClosed : S.interpolation
  clusteringClosed : S.clustering
  hypothesisTestClosed : S.hypothesisTest

def SpatialAnalysisClosed {G : GeographicInformationPackage} (S : SpatialAnalysisPackage G) : Prop :=
  S.interpolation ∧ S.clustering ∧ S.hypothesisTest

theorem spatial_analysis_closed_from_evidence {G : GeographicInformationPackage} (S : SpatialAnalysisPackage G) (E : SpatialAnalysisEvidence S) :
    SpatialAnalysisClosed S := by
  exact And.intro E.interpolationClosed (And.intro E.clusteringClosed E.hypothesisTestClosed)

end EarthScienceGeographicInformationScienceLemmaCanonicalLaneLean
end HautevilleHouse