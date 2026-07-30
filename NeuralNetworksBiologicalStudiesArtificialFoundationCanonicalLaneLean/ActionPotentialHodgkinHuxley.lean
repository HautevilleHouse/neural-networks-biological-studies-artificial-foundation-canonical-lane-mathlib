import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetworksBiologicalStudiesArtificialFoundationCanonicalLaneLean

structure HodgkinHuxleyPackage where
  sodiumChannelGating : Prop
  potassiumChannelGating : Prop
  leakCurrent : Prop
  membraneCapacitance : Prop
  actionPotentialShape : Prop

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyPackage) where
  sodiumChannelGatingClosed : H.sodiumChannelGating
  potassiumChannelGatingClosed : H.potassiumChannelGating
  leakCurrentClosed : H.leakCurrent
  membraneCapacitanceClosed : H.membraneCapacitance
  actionPotentialShapeClosed : H.actionPotentialShape

def HodgkinHuxleyClosed (H : HodgkinHuxleyPackage) : Prop :=
  H.sodiumChannelGating ∧ H.potassiumChannelGating ∧ H.leakCurrent ∧ H.membraneCapacitance ∧ H.actionPotentialShape

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyPackage) (E : HodgkinHuxleyEvidence H) : HodgkinHuxleyClosed H := by
  exact And.intro E.sodiumChannelGatingClosed (And.intro E.potassiumChannelGatingClosed (And.intro E.leakCurrentClosed (And.intro E.membraneCapacitanceClosed E.actionPotentialShapeClosed)))

end NeuralNetworksBiologicalStudiesArtificialFoundationCanonicalLaneLean
end HautevilleHouse