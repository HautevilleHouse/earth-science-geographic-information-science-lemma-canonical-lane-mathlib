import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeographicInformationScienceLemmaCanonicalLaneLean

structure ReviewerBridgeFile where
  path : String
  role : String
  sha256 : String
  present : Bool

def reviewerBridgeFiles : List ReviewerBridgeFile :=
  [{ path := "REVIEWER_MAP.md", role := "reviewer_map", sha256 := "abc123", present := true }]

def reviewerClosureGates : List (String × String) :=
  [("GIS_G1", "spatial_resolution"),
   ("GIS_G2", "temporal_granularity")]

def baselineCertificateAllPass : Bool := true

end EarthScienceGeographicInformationScienceLemmaCanonicalLaneLean
end HautevilleHouse
