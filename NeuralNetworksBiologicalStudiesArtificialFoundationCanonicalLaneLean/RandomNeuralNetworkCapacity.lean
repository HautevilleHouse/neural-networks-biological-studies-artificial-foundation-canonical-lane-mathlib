import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetworksBiologicalStudiesArtificialFoundationCanonicalLaneLean

structure RandomNeuralNetworkCapacityPackage where
  networkArchitecture : Type u
  randomWeightDistribution : Prop
  storageCapacity : Prop
  generalizationError : Prop

structure RandomNeuralNetworkCapacityEvidence (R : RandomNeuralNetworkCapacityPackage) where
  randomWeightDistributionClosed : R.randomWeightDistribution
  storageCapacityClosed : R.storageCapacity
  generalizationErrorClosed : R.generalizationError

def RandomNeuralNetworkCapacityClosed (R : RandomNeuralNetworkCapacityPackage) : Prop :=
  R.randomWeightDistribution ∧ R.storageCapacity ∧ R.generalizationError

theorem random_neural_network_capacity_closed_from_evidence
    (R : RandomNeuralNetworkCapacityPackage) (E : RandomNeuralNetworkCapacityEvidence R) :
    RandomNeuralNetworkCapacityClosed R := by
  exact And.intro E.randomWeightDistributionClosed
    (And.intro E.storageCapacityClosed E.generalizationErrorClosed)

end NeuralNetworksBiologicalStudiesArtificialFoundationCanonicalLaneLean
end HautevilleHouse
