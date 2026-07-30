import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetworksBiologicalStudiesArtificialFoundationCanonicalLaneLean

structure SynapticWeightDynamicsPackage where
  synapticWeights : Type u
  timeDomain : Type v
  learningRule : Prop
  hebbianPlasticity : Prop
  spikeTimingDependentPlasticity : Prop

structure SynapticWeightDynamicsEvidence (S : SynapticWeightDynamicsPackage) where
  learningRuleClosed : S.learningRule
  hebbianPlasticityClosed : S.hebbianPlasticity
  spikeTimingDependentPlasticityClosed : S.spikeTimingDependentPlasticity

def SynapticWeightDynamicsClosed (S : SynapticWeightDynamicsPackage) : Prop :=
  S.learningRule ∧ S.hebbianPlasticity ∧ S.spikeTimingDependentPlasticity

theorem synaptic_weight_dynamics_closed_from_evidence
    (S : SynapticWeightDynamicsPackage) (E : SynapticWeightDynamicsEvidence S) :
    SynapticWeightDynamicsClosed S := by
  exact And.intro E.learningRuleClosed
    (And.intro E.hebbianPlasticityClosed E.spikeTimingDependentPlasticityClosed)

end NeuralNetworksBiologicalStudiesArtificialFoundationCanonicalLaneLean
end HautevilleHouse
