---
agent: lean-countercheck
node_id: math.minimax.ordered_field_minimax
created_at: "2026-06-15T14:48:36+00:00"
---

# Lean Countercheck: Ordered-Field Minimax Statement

## Inputs

- node file: `/home/user/EconCSLib/docs/knowledge/nodes/math/minimax/ordered_field_minimax.md`
- lean file: `/home/user/EconCSLib/EconCSLib/Math/Minimax/SkewSymmetric.lean`
- corpus root: `/home/user/EconCSLib`

## Method Status

- heuristic: used

## Matched Declarations

- `(none)`

## Missing Declarations

- `Minimax.minimax`
- `SkewSymmetric.optimal`

## Extra Declarations

- `optimal`

## Node Uses vs Extracted Dependencies

- node uses: `game_theory.strategic_game.zero_sum.von_neumann_minimax`
- missing uses: (none)
- extra uses: (none)

## Raw Snapshot

```json
{
  "corpus_root": "/home/user/EconCSLib",
  "dependencies": [],
  "lean_file": "/home/user/EconCSLib/EconCSLib/Math/Minimax/SkewSymmetric.lean",
  "method_status": {
    "heuristic": "used"
  },
  "node": {
    "body": "# Ordered-Field Minimax Statement\n\nThe finite minimax theorem admits an ordered-field form: if the payoff\nmatrix has entries in an ordered field and the proof is carried out\nalgebraically through finitely many weak linear inequalities, then the\nvalue and optimal mixed strategies can be taken over that ordered field.\n\n*Proof.* Use an algebraic proof route for finite minimax, such as the\nlinear-programming route, whose steps are finite systems of weak\nlinear inequalities, pivot operations, and normalisations by positive\nelements. These operations make sense over any ordered field. The terminal\ninequalities are precisely the two minimax optimality systems, so the\nextracted mixed strategies and value lie in the same ordered field as the\nmatrix entries.\n\nThe Lean theorem is `Minimax.minimax`, polymorphic in\n`[Field \ud835\udd5c] [LinearOrder \ud835\udd5c] [IsStrictOrderedRing \ud835\udd5c]`, proved **sorry-free**\n(axioms: `propext`, `Classical.choice`, `Quot.sound`). The route is von\nNeumann symmetrisation: shift the game positive, embed it in the\nskew-symmetric matrix on `I \u2295 J \u2295 Unit`, and read the optimal `(x, y, v)`\noff the value-0 optimal strategy of that skew game \u2014 which exists by the\nTheorem of the Alternative (`SkewSymmetric.optimal`), a pure feasibility\nstatement needing no LP optimum / order-completeness. The \u211d-specialisation\nalso follows from the Loomis route\n([[node:game_theory.strategic_game.zero_sum.von_neumann_minimax]]).\n\n## References\n\n- [MFoGT, Chapter 2, Section 2.3, paragraph after the proof of Thm. 2.3.1] Laraki, Renault, and Sorin, *Mathematical Foundations of Game Theory*. Ordered-field generalization via finite weak linear inequalities.",
    "file_path": "/home/user/EconCSLib/docs/knowledge/nodes/math/minimax/ordered_field_minimax.md",
    "id": "math.minimax.ordered_field_minimax",
    "kind": "theorem",
    "lean": {
      "declarations": [
        "Minimax.minimax",
        "SkewSymmetric.optimal"
      ],
      "modules": [
        "EconCSLib.Math.Minimax.Minimax",
        "EconCSLib.Math.Minimax.SkewSymmetric"
      ],
      "repository": null
    },
    "status": "formalized",
    "tags": [
      "zero-sum",
      "minimax",
      "ordered-field"
    ],
    "title": "Ordered-Field Minimax Statement",
    "uses": [
      "game_theory.strategic_game.zero_sum.von_neumann_minimax"
    ]
  },
  "source_root": "/home/user/EconCSLib",
  "theorems": [
    {
      "body": "theorem optimal [NeZero N] (S : Fin N \u2192 Fin N \u2192 \ud835\udd5c) (hS : \u2200 k l, S k l = - S l k) :\n    \u2203 z : Fin N \u2192 \ud835\udd5c, (\u2200 k, 0 \u2264 z k) \u2227 (\u2211 k, z k = 1) \u2227 (\u2200 l, 0 \u2264 \u2211 k, z k * S k l) := by\n  classical\n  -- Feasibility of the system, via the Theorem of the Alternative.\n  have hfeas : IsFeasible (mat S) (rhs (N := N)) := by\n    by_contra hno\n    obtain \u27e8u, hu_nn, hu_col, hu_pos\u27e9 :=\n      (theorem_of_alternative (mat S) (rhs (N := N))).mp hno\n    -- Block abbreviations.\n    set w : Fin N \u2192 \ud835\udd5c := fun l => u (Sum.inl l) with hw\n    have hw_nn : \u2200 l, 0 \u2264 w l := fun l => hu_nn _\n    have hv_nn : \u2200 k, 0 \u2264 u (Sum.inr (Sum.inl k)) := fun k => hu_nn _\n    set a0 : \ud835\udd5c := u (Sum.inr (Sum.inr false)) with ha0\n    set a1 : \ud835\udd5c := u (Sum.inr (Sum.inr true)) with ha1\n    -- \u27e8u, b\u27e9 = a0 - a1 > 0.\n    have h\u03b4 : 0 < a0 - a1 := by\n      have h := hu_pos\n      rw [Fintype.sum_sum_type, Fintype.sum_sum_type, Fintype.sum_bool] at h\n      simp only [rhs, mul_zero, Finset.sum_const_zero, zero_add, mul_one,\n        mul_neg, mul_one] at h\n      linarith\n    -- Column-`j` condition collapses to `(S w)_j + u(inr inl j) + (a0 - a1) = 0`.\n    have hcol : \u2200 j, (\u2211 l, S j l * w l) + u (Sum.inr (Sum.inl j)) + (a0 - a1) = 0 := by\n      intro j\n      have h := hu_col j\n      rw [Fintype.sum_sum_type, Fintype.sum_sum_type, Fintype.sum_bool] at h\n      simp only [mat, mul_ite, mul_one, mul_zero, Finset.sum_ite_eq, Finset.mem_univ,\n        if_true, mul_neg, hw] at h\n      -- h : (\u2211 l, u (inl l) * S j l) + (u (inr (inl j)) + (a0 + -a1)) = 0\n      have e : (\u2211 l, u (Sum.inl l) * S j l) = \u2211 l, S j l * w l := by\n        refine Finset.sum_congr rfl (fun l _ => ?_); rw [hw]; ring\n      rw [e] at h; linarith\n    -- The certificate vector `w` is the bad alternative `S w < 0`.\n    have hSw : \u2200 j, (\u2211 l, S j l * w l) \u2264 -(a0 - a1) := by\n      intro j; have := hcol j; have := hv_nn j; linarith\n    -- `w \u2260 0`: otherwise `(S w)_j = 0`, contradicting `\u2264 -(a0-a1) < 0`.\n    have hw_pos : 0 < \u2211 l, w l := by\n      rcases (Finset.sum_nonneg (fun l _ => hw_nn l)).lt_or_eq with h | h\n      \u00b7 exact h\n      \u00b7 exfalso\n        have hall : \u2200 l, w l = 0 := fun l =>\n          (Finset.sum_eq_zero_iff_of_nonneg (fun l _ => hw_nn l)).mp h.symm l (Finset.mem_univ l)\n        have hj : (\u2211 l, S ((0 : Fin N)) l * w l) = 0 := by\n          apply Finset.sum_eq_zero; intro l _; rw [hall l, mul_zero]\n        have := hSw (0 : Fin N); rw [hj] at this; linarith\n    -- Antisymmetry: `w\u1d40 S w = 0`.\n    have hQ0 : (\u2211 j, \u2211 l, w j * S j l * w l) = 0 := by\n      have hswap : (\u2211 j, \u2211 l, w j * S j l * w l)\n          = \u2211 j, \u2211 l, w l * S l j * w j := Finset.sum_comm\n      have hneg : (\u2211 j, \u2211 l, w l * S l j * w j)\n          = - \u2211 j, \u2211 l, w j * S j l * w l := by\n        rw [\u2190 Finset.sum_neg_distrib]\n        refine Finset.sum_congr rfl (fun j _ => ?_)\n        rw [\u2190 Finset.sum_neg_distrib]\n        refine Finset.sum_congr rfl (fun l _ => ?_)\n        rw [hS l j]; ring\n      have : (\u2211 j, \u2211 l, w j * S j l * w l)\n          = - \u2211 j, \u2211 l, w j * S j l * w l := hswap.trans hneg\n      linarith\n    -- But `w\u1d40 S w = \u2211\u2c7c w\u2c7c (Sw)\u2c7c \u2264 -(a0-a1) \u00b7 \u2211w < 0`.\n    have hQeq : (\u2211 j, w j * (\u2211 l, S j l * w l)) = \u2211 j, \u2211 l, w j * S j l * w l := by\n      refine Finset.sum_congr rfl (fun j _ => ?_)\n      rw [Finset.mul_sum]; refine Finset.sum_congr rfl (fun l _ => ?_); ring\n    have hle : (\u2211 j, w j * (\u2211 l, S j l * w l)) \u2264 \u2211 j, w j * (-(a0 - a1)) := by\n      apply Finset.sum_le_sum; intro j _\n      exact mul_le_mul_of_nonneg_left (hSw j) (hw_nn j)\n    rw [hQeq, hQ0] at hle\n    have hrhs : (\u2211 j, w j * (-(a0 - a1))) = -(a0 - a1) * \u2211 j, w j := by\n      rw [\u2190 Finset.sum_mul]; ring\n    rw [hrhs] at hle\n    have : -(a0 - a1) * (\u2211 j, w j) < 0 :=\n      mul_neg_of_neg_of_pos (by linarith) hw_pos\n    linarith\n  -- Extract `z` from a feasible point.\n  obtain \u27e8z, hz\u27e9 := hfeas\n  refine \u27e8z, ?_, ?_, ?_\u27e9\n  \u00b7 intro k\n    have h := hz (Sum.inr (Sum.inl k))\n    simp only [rhs, rowEval, mat, ite_mul, one_mul, zero_mul,\n      Finset.sum_ite_eq', Finset.mem_univ, if_true] at h\n    exact h\n  \u00b7 have h0 := hz (Sum.inr (Sum.inr false))\n    have h1 := hz (Sum.inr (Sum.inr true))\n    simp only [rhs, rowEval, mat, one_mul, neg_one_mul, Finset.sum_neg_distrib] at h0 h1\n    linarith\n  \u00b7 intro l\n    have h := hz (Sum.inl l)\n    simp only [rhs, rowEval, mat] at h\n    rw [show (\u2211 k, z k * S k l) = \u2211 j, S j l * z j from\n      Finset.sum_congr rfl (fun j _ => by ring)]\n    exact h\n\nend SkewSymmetric\n",
      "column": 1,
      "end": 6177,
      "kind": "theorem",
      "line": 50,
      "module": "EconCSLib.Math.Minimax.SkewSymmetric",
      "name": "optimal",
      "source_path": "/home/user/EconCSLib/EconCSLib/Math/Minimax/SkewSymmetric.lean",
      "start": 1783
    }
  ]
}
```

## Intent

- Lean is acting as a counterchecker only.
- Blank or flawed proofs are recorded as incompleteness, not inconsistency.
- Any new lemmata discovered here are proposals for review, not automatic edits.