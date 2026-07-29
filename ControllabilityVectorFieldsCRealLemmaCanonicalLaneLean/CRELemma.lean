import ControllabilityVectorFieldsCRealLemmaCanonicalLaneLean.AdjointPairing

namespace HautevilleHouse
namespace ControllabilityVectorFieldsCRealLemmaCanonicalLaneLean

structure CRELemmaPackage {V : ControllableVectorField}
    {P : ControllabilityPDEPackage V} (A : AdjointPairingPackage P) where
  controllabilityGramian : Prop
  realLemmaEquivalence : Prop
  minimalEnergyControl : Prop

structure CRELemmaEvidence {V : ControllableVectorField}
    {P : ControllabilityPDEPackage V} {A : AdjointPairingPackage P}
    (C : CRELemmaPackage A) where
  controllabilityGramianClosed : C.controllabilityGramian
  realLemmaEquivalenceClosed : C.realLemmaEquivalence
  minimalEnergyControlClosed : C.minimalEnergyControl

def CRELemmaClosed {V : ControllableVectorField}
    {P : ControllabilityPDEPackage V} {A : AdjointPairingPackage P}
    (C : CRELemmaPackage A) : Prop :=
  C.controllabilityGramian ∧ C.realLemmaEquivalence ∧ C.minimalEnergyControl

theorem cre_lemma_closed_from_evidence
    {V : ControllableVectorField} {P : ControllabilityPDEPackage V}
    {A : AdjointPairingPackage P} (C : CRELemmaPackage A)
    (E : CRELemmaEvidence C) : CRELemmaClosed C := by
  exact And.intro E.controllabilityGramianClosed
    (And.intro E.realLemmaEquivalenceClosed E.minimalEnergyControlClosed)

end ControllabilityVectorFieldsCRealLemmaCanonicalLaneLean
end HautevilleHouse
