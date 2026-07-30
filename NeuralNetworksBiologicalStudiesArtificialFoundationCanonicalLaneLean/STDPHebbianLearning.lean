import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetworksBiologicalStudiesArtificialFoundationCanonicalLaneLean

structure STDPModelPackage where
  prePostTiming : Prop
  weightChangeWindow : Prop
  potentiationDepressionAsymmetry : Prop
  frequencyDependence : Prop
  synapticConsolidation : Prop

structure STDPModelEvidence (S : STDPModelPackage) where
  prePostTimingClosed : S.prePostTiming
  weightChangeWindowClosed : S.weightChangeWindow
  potentiationDepressionAsymmetryClosed : S.potentiationDepressionAsymmetry
  frequencyDependenceClosed : S.frequencyDependence
  synapticConsolidationClosed : S.synapticConsolidation

def STDPModelClosed (S : STDPModelPackage) : Prop :=
  S.prePostTiming ∧ S.weightChangeWindow ∧ S.potentiationDepressionAsymmetry ∧ S.frequencyDependence ∧ S.synapticConsolidation

theorem stdp_model_closed_from_evidence (S : STDPModelPackage) (E : STDPModelEvidence S) : STDPModelClosed S := by
  exact And.intro E.prePostTimingClosed (And.intro E.weightChangeWindowClosed (And.intro E.potentiationDepressionAsymmetryClosed (And.intro E.frequencyDependenceClosed E.synapticConsolidationClosed)))

end NeuralNetworksBiologicalStudiesArtificialFoundationCanonicalLaneLean
end HautevilleHouse