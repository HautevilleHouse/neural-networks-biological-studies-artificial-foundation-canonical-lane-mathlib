import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetworksBiologicalStudiesArtificialFoundationCanonicalLaneLean

structure NeuralNetworkPackage where
  neuronCount : Nat
  connectivityMatrix : Type
  activationFunction : String
  fixedPointExists : Prop
  limitCycleExists : Prop

structure NeuralNetworkEvidence (N : NeuralNetworkPackage) where
  connectivityNonEmpty : N.connectivityMatrix ≠ ∅
  activationDefined : N.activationFunction = "sigmoid" ∨ N.activationFunction = "relu"
  dynamicsConvergent : N.fixedPointExists ∨ N.limitCycleExists

def NeuralNetworkClosed (N : NeuralNetworkPackage) : Prop :=
  N.connectivityMatrix ≠ ∅ ∧
  (N.activationFunction = "sigmoid" ∨ N.activationFunction = "relu") ∧
  (N.fixedPointExists ∨ N.limitCycleExists)

theorem neural_network_closed_from_evidence (N : NeuralNetworkPackage) (E : NeuralNetworkEvidence N) :
    NeuralNetworkClosed N := by
  exact And.intro E.connectivityNonEmpty (And.intro E.activationDefined E.dynamicsConvergent)

end NeuralNetworksBiologicalStudiesArtificialFoundationCanonicalLaneLean
end HautevilleHouse
