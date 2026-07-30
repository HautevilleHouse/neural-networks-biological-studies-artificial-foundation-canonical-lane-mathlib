import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuralNetworksBiologicalStudiesArtificialFoundationCanonicalLaneLean

structure CorticalColumnPackage where
  layerStructure : Prop
  cellTypeDiversity : Prop
  feedforwardInhibition : Prop
  feedbackModulation : Prop
  columnarProcessing : Prop

structure CorticalColumnEvidence (C : CorticalColumnPackage) where
  layerStructureClosed : C.layerStructure
  cellTypeDiversityClosed : C.cellTypeDiversity
  feedforwardInhibitionClosed : C.feedforwardInhibition
  feedbackModulationClosed : C.feedbackModulation
  columnarProcessingClosed : C.columnarProcessing

def CorticalColumnClosed (C : CorticalColumnPackage) : Prop :=
  C.layerStructure ∧ C.cellTypeDiversity ∧ C.feedforwardInhibition ∧ C.feedbackModulation ∧ C.columnarProcessing

theorem cortical_column_closed_from_evidence (C : CorticalColumnPackage) (E : CorticalColumnEvidence C) : CorticalColumnClosed C := by
  exact And.intro E.layerStructureClosed (And.intro E.cellTypeDiversityClosed (And.intro E.feedforwardInhibitionClosed (And.intro E.feedbackModulationClosed E.columnarProcessingClosed)))

end NeuralNetworksBiologicalStudiesArtificialFoundationCanonicalLaneLean
end HautevilleHouse