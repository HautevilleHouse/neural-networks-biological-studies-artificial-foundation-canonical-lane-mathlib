import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetworksBiologicalStudiesArtificialFoundationCanonicalLaneLean

structure PercolationPackage where
  graph : Type
  percolationProbability : Float
  infiniteClusterExists : Prop
  criticalThreshold : Float

structure PercolationEvidence (P : PercolationPackage) where
  infiniteClusterExistsClosed : P.infiniteClusterExists
  thresholdCritical : P.criticalThreshold > 0.0

def PercolationClosed (P : PercolationPackage) : Prop :=
  P.infiniteClusterExists ∧ (P.criticalThreshold > 0.0)

theorem percolation_closed_from_evidence (P : PercolationPackage) (E : PercolationEvidence P) :
    PercolationClosed P := by
  exact And.intro E.infiniteClusterExistsClosed E.thresholdCritical

end NeuralNetworksBiologicalStudiesArtificialFoundationCanonicalLaneLean
end HautevilleHouse