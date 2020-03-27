Section Declaration.
    Variable n: nat.
    Hypothesis Pos_n: (gt n 0).
    Check gt.
    Definition one:= (S O).
    Definition two : nat := S one.
    Definition three: nat:=S two.
    Definition double (m:nat):=plus m m.
Section Minimal_Logic.
    Variables A B C : Prop.
    Check (A->B).
    Goal ( A -> B -> C) -> ( A -> B ) -> A -> C.
    intro H.
    intros H' HA.
    apply H.
    exact HA.
    apply H'.
    assumption.
