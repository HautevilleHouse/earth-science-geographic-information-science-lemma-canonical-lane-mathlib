import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeographicInformationScienceLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  let O := A.object
  O.homeomorphicToSphere

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EarthScienceGeographicInformationScienceLemmaCanonicalLaneLean
end HautevilleHouse