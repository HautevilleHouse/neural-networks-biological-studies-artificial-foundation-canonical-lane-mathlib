import NeuralNetworksBiologicalStudiesArtificialFoundationCanonicalLaneLean.BridgeLemmas
import NeuralNetworksBiologicalStudiesArtificialFoundationCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace NeuralNetworksBiologicalStudiesArtificialFoundationCanonicalLaneLean

structure NeuralAdmittedObject where
  networkType : Type
  graphStructure : Type
  percolationThreshold : Prop
  smallWorldProperty : Prop
  conclusion : percolationThreshold ∧ smallWorldProperty

def NeuralWitnessClosed (O : NeuralAdmittedObject) : Prop :=
  O.conclusion

structure TheoremStatement where
  theoremName : String
  theoremObject : String
  admittedObject : NeuralAdmittedObject
  bridgeClosed : Prop
  gateClosed : Prop

def ConstrainedNeuralClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

end NeuralNetworksBiologicalStudiesArtificialFoundationCanonicalLaneLean
end HautevilleHouse