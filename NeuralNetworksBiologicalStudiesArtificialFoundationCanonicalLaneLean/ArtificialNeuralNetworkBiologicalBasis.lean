import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetworksBiologicalStudiesArtificialFoundationCanonicalLaneLean

structure ANNBiologizationPackage where
  activationFunctionAnalog : Prop
  weightedSumBiologicalAnalog : Prop
  backpropagationVsSTDP : Prop
  deepNetworkLayeredAnalog : Prop
  learningRuleCorrespondence : Prop

structure ANNBiologizationEvidence (A : ANNBiologizationPackage) where
  activationFunctionAnalogClosed : A.activationFunctionAnalog
  weightedSumBiologicalAnalogClosed : A.weightedSumBiologicalAnalog
  backpropagationVsSTDPClosed : A.backpropagationVsSTDP
  deepNetworkLayeredAnalogClosed : A.deepNetworkLayeredAnalog
  learningRuleCorrespondenceClosed : A.learningRuleCorrespondence

def ANNBiologizationClosed (A : ANNBiologizationPackage) : Prop :=
  A.activationFunctionAnalog ∧ A.weightedSumBiologicalAnalog ∧ A.backpropagationVsSTDP ∧ A.deepNetworkLayeredAnalog ∧ A.learningRuleCorrespondence

theorem ann_biologization_closed_from_evidence (A : ANNBiologizationPackage) (E : ANNBiologizationEvidence A) : ANNBiologizationClosed A := by
  exact And.intro E.activationFunctionAnalogClosed (And.intro E.weightedSumBiologicalAnalogClosed (And.intro E.backpropagationVsSTDPClosed (And.intro E.deepNetworkLayeredAnalogClosed E.learningRuleCorrespondenceClosed)))

end NeuralNetworksBiologicalStudiesArtificialFoundationCanonicalLaneLean
end HautevilleHouse