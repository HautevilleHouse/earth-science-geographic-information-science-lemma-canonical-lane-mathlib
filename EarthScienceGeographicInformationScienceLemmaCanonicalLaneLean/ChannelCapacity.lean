import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeographicInformationScienceLemmaCanonicalLaneLean

structure ChannelCapacityPackage where
  inputAlphabet : Type u
  outputAlphabet : Type v
  channelMatrix : inputAlphabet → outputAlphabet → ℝ
  capacity : ℝ
  capacityDefined : capacity = 0
  capacityDefinedTerm : capacityDefined

structure ChannelCapacityEvidence (C : ChannelCapacityPackage) where
  capacityClosed : C.capacityDefined

def ChannelCapacityClosed (C : ChannelCapacityPackage) : Prop :=
  C.capacityDefined

theorem channel_capacity_closed_from_evidence (C : ChannelCapacityPackage)
    (E : ChannelCapacityEvidence C) : ChannelCapacityClosed C := by
  exact E.capacityClosed

end EarthScienceGeographicInformationScienceLemmaCanonicalLaneLean
end HautevilleHouse