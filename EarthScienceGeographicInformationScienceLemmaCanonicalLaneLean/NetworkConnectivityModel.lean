import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeographicInformationScienceLemmaCanonicalLaneLean

structure NetworkConnectivityModel (S : SpatialInformationPackage) where
  nodeSet : Set S.spatialDomain
  edgeRelation : S.spatialDomain -> S.spatialDomain -> Prop
  finiteNodes : Prop
  irreflexiveEdges : Prop
  symmetricEdges : Prop
  finiteNodesClosed : finiteNodes
  irreflexiveEdgesClosed : irreflexiveEdges
  symmetricEdgesClosed : symmetricEdges

structure NetworkConnectivityEvidence {S : SpatialInformationPackage} (N : NetworkConnectivityModel S) where
  finiteNodesClosed : N.finiteNodes
  irreflexiveEdgesClosed : N.irreflexiveEdges
  symmetricEdgesClosed : N.symmetricEdges

def NetworkConnectivityClosed {S : SpatialInformationPackage} (N : NetworkConnectivityModel S) : Prop :=
  N.finiteNodes ∧ N.irreflexiveEdges ∧ N.symmetricEdges

theorem network_connectivity_closed_from_evidence {S : SpatialInformationPackage} (N : NetworkConnectivityModel S)
    (E : NetworkConnectivityEvidence N) : NetworkConnectivityClosed N := by
  exact And.intro E.finiteNodesClosed (And.intro E.irreflexiveEdgesClosed E.symmetricEdgesClosed)

end EarthScienceGeographicInformationScienceLemmaCanonicalLaneLean
end HautevilleHouse
