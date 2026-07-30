import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetworksBiologicalStudiesArtificialFoundationCanonicalLaneLean

structure RandomGraphEnsemblePackage where
  modelType : String
  edgeProbability : Float
  vertexCount : Nat
  ensembleAverageDegree : Float
  degreeDistribution : Type

structure RandomGraphEnsembleEvidence (R : RandomGraphEnsemblePackage) where
  modelDefined : R.modelType = "ErdosRenyi" ∨ R.modelType = "BarabasiAlbert"
  edgeProbabilityPositive : R.edgeProbability > 0
  degreeDistributionNonEmpty : R.degreeDistribution ≠ ∅

def RandomGraphEnsembleClosed (R : RandomGraphEnsemblePackage) : Prop :=
  (R.modelType = "ErdosRenyi" ∨ R.modelType = "BarabasiAlbert") ∧
  R.edgeProbability > 0 ∧
  R.degreeDistribution ≠ ∅

theorem random_graph_ensemble_closed_from_evidence (R : RandomGraphEnsemblePackage) (E : RandomGraphEnsembleEvidence R) :
    RandomGraphEnsembleClosed R := by
  exact And.intro E.modelDefined (And.intro E.edgeProbabilityPositive E.degreeDistributionNonEmpty)

end NeuralNetworksBiologicalStudiesArtificialFoundationCanonicalLaneLean
end HautevilleHouse
