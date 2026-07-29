import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeographicInformationScienceLemmaCanonicalLaneLean

structure GeographicSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure GeographicAdmittedObject where
  space : GeographicSpace
  closedManifold : Prop
  simplyConnected : Prop
  sphereModel : Type
  sphereTopology : TopologicalSpace sphereModel
  homeomorphicToSphere : Prop
  conclusion : homeomorphicToSphere

structure GeographicEndgameState where
  object : GeographicAdmittedObject

def GeographicWitnessClosed (O : GeographicAdmittedObject) : Prop :=
  O.homeomorphicToSphere

end EarthScienceGeographicInformationScienceLemmaCanonicalLaneLean
end HautevilleHouse
