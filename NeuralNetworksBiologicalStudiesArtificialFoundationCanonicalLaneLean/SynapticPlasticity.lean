import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetworksBiologicalStudiesArtificialFoundationCanonicalLaneLean

structure SynapticPlasticityPackage where
  learningRule : Type
  spikeTimingDependent : Prop
  longTermPotentiation : Prop
  longTermDepression : Prop

structure SynapticPlasticityEvidence (S : SynapticPlasticityPackage) where
  spikeTimingDependentClosed : S.spikeTimingDependent
  longTermPotentiationClosed : S.longTermPotentiation
  longTermDepressionClosed : S.longTermDepression

def SynapticPlasticityClosed (S : SynapticPlasticityPackage) : Prop :=
  S.spikeTimingDependent ∧ S.longTermPotentiation ∧ S.longTermDepression

theorem synaptic_plasticity_closed_from_evidence (S : SynapticPlasticityPackage) (E : SynapticPlasticityEvidence S) :
    SynapticPlasticityClosed S := by
  exact And.intro E.spikeTimingDependentClosed
    (And.intro E.longTermPotentiationClosed E.longTermDepressionClosed)

end NeuralNetworksBiologicalStudiesArtificialFoundationCanonicalLaneLean
end HautevilleHouse