import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetworksBiologicalStudiesArtificialFoundationCanonicalLaneLean

def ConstrainedNeuralClosure (A : AdmissibleNeuralClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_neural_endgame (A : AdmissibleNeuralClass) :
    ConstrainedNeuralClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end NeuralNetworksBiologicalStudiesArtificialFoundationCanonicalLaneLean
end HautevilleHouse