import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetworksBiologicalStudiesArtificialFoundationCanonicalLaneLean

structure SmallWorldPackage where
  nodes : Nat
  rewiringProbability : Float
  clusteringCoefficient : Float
  averagePathLength : Float

structure SmallWorldEvidence (S : SmallWorldPackage) where
  highClustering : S.clusteringCoefficient > 0.5
  shortPathLength : S.averagePathLength < 2.0 * Float.log (Nat.toFloat S.nodes)

def SmallWorldClosed (S : SmallWorldPackage) : Prop :=
  S.clusteringCoefficient > 0.5 ∧ S.averagePathLength < 2.0 * Float.log (Nat.toFloat S.nodes)

theorem small_world_closed_from_evidence (S : SmallWorldPackage) (E : SmallWorldEvidence S) :
    SmallWorldClosed S := by
  exact And.intro E.highClustering E.shortPathLength

end NeuralNetworksBiologicalStudiesArtificialFoundationCanonicalLaneLean
end HautevilleHouse