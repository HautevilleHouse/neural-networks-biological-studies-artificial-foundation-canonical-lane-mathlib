import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetworksBiologicalStudiesArtificialFoundationCanonicalLaneLean

structure NeuralAdmittedObject where
  networkGraph : Type u
  topology : TopologicalSpace networkGraph
  synapticWeights : networkGraph → networkGraph → ℝ
  activationFunction : ℝ → ℝ
  biologicalPlausibility : Prop
  learningRule : Prop
  connectivityPattern : Prop
  convergenceGuarantee : Prop
  conclusion : convergenceGuarantee

structure AdmissibleNeuralClass where
  object : NeuralAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedNeuralClosure (A : AdmissibleNeuralClass) : Prop :=
  A.object.convergenceGuarantee ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end NeuralNetworksBiologicalStudiesArtificialFoundationCanonicalLaneLean
end HautevilleHouse