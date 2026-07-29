import canonicalLaneMathlib.AdmissibleClass
import EarthScienceGeographicInformationScienceLemmaCanonicalLaneLean.FilteringPackage

namespace HautevilleHouse
namespace EarthScienceGeographicInformationScienceLemmaCanonicalLaneLean

def ConstrainedGISClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_gis_endgame (A : AdmissibleClass) :
    ConstrainedGISClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EarthScienceGeographicInformationScienceLemmaCanonicalLaneLean
end HautevilleHouse
