import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeographicInformationScienceLemmaCanonicalLaneLean

structure SpatialDecisionSupportPackage where
  multiCriteriaAnalysis : Prop
  suitabilityMapping : Prop
  optimization : Prop
  multiCriteriaAnalysisTerm : multiCriteriaAnalysis
  suitabilityMappingTerm : suitabilityMapping
  optimizationTerm : optimization

structure SpatialDecisionSupportEvidence (S : SpatialDecisionSupportPackage) where
  multiCriteriaAnalysisClosed : S.multiCriteriaAnalysis
  suitabilityMappingClosed : S.suitabilityMapping
  optimizationClosed : S.optimization

def SpatialDecisionSupportClosed (S : SpatialDecisionSupportPackage) : Prop :=
  S.multiCriteriaAnalysis ∧ S.suitabilityMapping ∧ S.optimization

theorem spatial_decision_support_closed_from_evidence (S : SpatialDecisionSupportPackage) (E : SpatialDecisionSupportEvidence S) :
    SpatialDecisionSupportClosed S := by
  exact And.intro E.multiCriteriaAnalysisClosed (And.intro E.suitabilityMappingClosed E.optimizationClosed)

end EarthScienceGeographicInformationScienceLemmaCanonicalLaneLean
end HautevilleHouse