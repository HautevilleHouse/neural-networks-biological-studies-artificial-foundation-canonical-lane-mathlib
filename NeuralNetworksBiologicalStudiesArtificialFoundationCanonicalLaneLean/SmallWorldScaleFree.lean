import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetworksBiologicalStudiesArtificialFoundationCanonicalLaneLean

structure SmallWorldPackage where
  clusteringCoefficient : ℝ
  averagePathLength : ℝ
  rewiringProbability : ℝ
  scaleFreeExponent : ℝ
  clusteringHigh : Prop
  pathLengthLow : Prop
  rewiringCritical : Prop
  scaleFreeExponentInRange : Prop

structure SmallWorldEvidence (S : SmallWorldPackage) where
  clusteringHighClosed : S.clusteringHigh
  pathLengthLowClosed : S.pathLengthLow
  rewiringCriticalClosed : S.rewiringCritical
  scaleFreeExponentInRangeClosed : S.scaleFreeExponentInRange

def SmallWorldClosed (S : SmallWorldPackage) : Prop :=
  S.clusteringHigh ∧ S.pathLengthLow ∧ S.rewiringCritical ∧ S.scaleFreeExponentInRange

theorem small_world_closed_from_evidence (S : SmallWorldPackage) (E : SmallWorldEvidence S) :
    SmallWorldClosed S := by
  exact And.intro E.clusteringHighClosed (And.intro E.pathLengthLowClosed (And.intro E.rewiringCriticalClosed E.scaleFreeExponentInRangeClosed))

end NeuralNetworksBiologicalStudiesArtificialFoundationCanonicalLaneLean
end HautevilleHouse