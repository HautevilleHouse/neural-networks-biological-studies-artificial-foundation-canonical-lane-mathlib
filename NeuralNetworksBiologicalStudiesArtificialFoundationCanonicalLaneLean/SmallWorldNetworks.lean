import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetworksBiologicalStudiesArtificialFoundationCanonicalLaneLean

structure SmallWorldPackage where
  rewiringProbability : Float
  averagePathLength : Float
  clusteringCoefficient : Float
  isSmallWorld : Prop

structure SmallWorldEvidence (S : SmallWorldPackage) where
  pathLengthShort : S.averagePathLength < 10.0
  clusteringHigh : S.clusteringCoefficient > 0.5
  smallWorldProperty : S.isSmallWorld

def SmallWorldClosed (S : SmallWorldPackage) : Prop :=
  S.averagePathLength < 10.0 ∧ S.clusteringCoefficient > 0.5 ∧ S.isSmallWorld

theorem small_world_closed_from_evidence (S : SmallWorldPackage) (E : SmallWorldEvidence S) :
    SmallWorldClosed S := by
  exact And.intro E.pathLengthShort (And.intro E.clusteringHigh E.smallWorldProperty)

end NeuralNetworksBiologicalStudiesArtificialFoundationCanonicalLaneLean
end HautevilleHouse
