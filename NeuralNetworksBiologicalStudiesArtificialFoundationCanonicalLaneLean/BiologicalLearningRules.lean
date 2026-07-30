import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetworksBiologicalStudiesArtificialFoundationCanonicalLaneLean

structure BiologicalLearningRulePackage where
  hebbianRule : Prop
  ojaRule : Prop
  stdpRule : Prop
  reinforcementRule : Prop

structure BiologicalLearningRuleEvidence (B : BiologicalLearningRulePackage) where
  hebbianRuleClosed : B.hebbianRule
  ojaRuleClosed : B.ojaRule
  stdpRuleClosed : B.stdpRule
  reinforcementRuleClosed : B.reinforcementRule

def BiologicalLearningRuleClosed (B : BiologicalLearningRulePackage) : Prop :=
  B.hebbianRule ∧ B.ojaRule ∧ B.stdpRule ∧ B.reinforcementRule

theorem biological_learning_rule_closed_from_evidence (B : BiologicalLearningRulePackage) (E : BiologicalLearningRuleEvidence B) :
    BiologicalLearningRuleClosed B := by
  exact And.intro E.hebbianRuleClosed
    (And.intro E.ojaRuleClosed
      (And.intro E.stdpRuleClosed E.reinforcementRuleClosed))

end NeuralNetworksBiologicalStudiesArtificialFoundationCanonicalLaneLean
end HautevilleHouse