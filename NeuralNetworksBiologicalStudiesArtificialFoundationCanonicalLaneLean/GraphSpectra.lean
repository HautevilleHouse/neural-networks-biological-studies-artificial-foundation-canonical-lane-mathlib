import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetworksBiologicalStudiesArtificialFoundationCanonicalLaneLean

structure GraphAdjacencyPackage where
  adjacencyMatrix : Type
  eigenvalues : Type
  spectralGap : Prop
  eigenvalueDistribution : Prop

structure GraphSpectraEvidence (G : GraphAdjacencyPackage) where
  spectralGapClosed : G.spectralGap
  eigenvalueDistributionClosed : G.eigenvalueDistribution

def GraphSpectraClosed (G : GraphAdjacencyPackage) : Prop :=
  G.spectralGap ∧ G.eigenvalueDistribution

theorem graph_spectra_closed_from_evidence (G : GraphAdjacencyPackage) (E : GraphSpectraEvidence G) :
    GraphSpectraClosed G := by
  exact And.intro E.spectralGapClosed E.eigenvalueDistributionClosed

end NeuralNetworksBiologicalStudiesArtificialFoundationCanonicalLaneLean
end HautevilleHouse