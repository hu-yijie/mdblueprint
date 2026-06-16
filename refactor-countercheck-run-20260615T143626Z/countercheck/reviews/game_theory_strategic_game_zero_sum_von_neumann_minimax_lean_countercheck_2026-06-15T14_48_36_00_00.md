---
agent: lean-countercheck
node_id: game_theory.strategic_game.zero_sum.von_neumann_minimax
created_at: "2026-06-15T14:48:36+00:00"
---

# Lean Countercheck: Von Neumann Minimax Theorem

## Inputs

- node file: `/home/user/EconCSLib/docs/knowledge/nodes/zero_sum/von_neumann_minimax.md`
- lean file: `/home/user/EconCSLib/EconCSLib/GameTheory/StrategicGame/ZeroSum/MatrixGame.lean`
- corpus root: `/home/user/EconCSLib`

## Method Status

- heuristic: used

## Matched Declarations

- `(none)`

## Missing Declarations

- `MatrixGame.maximin_le_minimax`
- `MatrixGame.minimax_theorem`
- `MatrixGame.minimax_optimal_strategies`

## Extra Declarations

- `IsMaximin`
- `IsMinimax`
- `IsValue`
- `and`
- `maximin_le_minimax`
- `minimax_theorem`
- `minimax_optimal_strategies`

## Node Uses vs Extracted Dependencies

- node uses: (none)
- missing uses: (none)
- extra uses: `IsMaximin`, `IsMinimax`

## Raw Snapshot

```json
{
  "corpus_root": "/home/user/EconCSLib",
  "dependencies": [
    {
      "kind": "hard",
      "module": "EconCSLib.GameTheory.StrategicGame.ZeroSum.MatrixGame",
      "source": "IsValue",
      "target": "IsMaximin"
    },
    {
      "kind": "hard",
      "module": "EconCSLib.GameTheory.StrategicGame.ZeroSum.MatrixGame",
      "source": "IsValue",
      "target": "IsMinimax"
    }
  ],
  "lean_file": "/home/user/EconCSLib/EconCSLib/GameTheory/StrategicGame/ZeroSum/MatrixGame.lean",
  "method_status": {
    "heuristic": "used"
  },
  "node": {
    "body": "# Von Neumann Minimax Theorem\n\nEvery finite two-player zero-sum matrix game has a value in mixed strategies:\n\n$$\\max_x \\min_j E_A(x,j) = \\min_y \\max_i E_A(i,y).$$\n\nEquivalently, there are optimal mixed strategies $x^\\ast$ and $y^\\ast$ and a\nvalue $v$ such that player I guarantees at least $v$ against every column and\nplayer II holds player I to at most $v$ against every row.\n\nTwo proof routes attach to this theorem as separate proof-plan nodes:\n\n- [[node:math.minimax.minimax_from_loomis]] (**selected**): finite\n  minimax is the $B = \\mathbf{1}$ specialisation of the Loomis theorem\n  ([[node:math.minimax.loomis_theorem]]). Fully formalised in Lean\n  (`EconCSLib.StrategicGame.MinimaxLoomis`), which inlines the $B = \\mathbf{1}$\n  case of the Loomis induction\n  ([[node:math.minimax.loomis_induction_proof]]) rather than first porting\n  the general positive-$B$ Loomis statement. The compactness/continuity\n  building blocks it relies on live in the core simplex layer\n  ([[node:math.simplex.pure]], [[node:math.simplex.continuity]],\n  [[node:math.simplex.bounded_by_value]]) and the existence + weak-duality\n  step is [[node:game_theory.strategic_game.zero_sum.lam_mu_existence]]; weak duality\n  ([[node:game_theory.strategic_game.zero_sum.maximin_le_minimax]]) supplies one direction of the\n  equality.\n- `Minimax.minimax` (**proved**, ordered-field-generic): a von Neumann\n  symmetrisation proof that works over any linearly ordered field \u2014 embed the\n  game in a skew-symmetric matrix and read the saddle point off its value-0\n  optimal strategy, which exists by the Theorem of the Alternative. Sorry-free,\n  needing no compactness or order-completeness\n  ([[node:math.minimax.ordered_field_minimax]]).\n\n## References\n\n- [MFoGT, Chapter 2, Thm. 2.3.1] Laraki, Renault, and Sorin, *Mathematical Foundations of Game Theory*. Von Neumann minimax theorem for finite zero-sum games.",
    "file_path": "/home/user/EconCSLib/docs/knowledge/nodes/zero_sum/von_neumann_minimax.md",
    "id": "game_theory.strategic_game.zero_sum.von_neumann_minimax",
    "kind": "theorem",
    "lean": {
      "declarations": [
        "MatrixGame.maximin_le_minimax",
        "MatrixGame.minimax_theorem",
        "MatrixGame.minimax_optimal_strategies"
      ],
      "modules": [
        "EconCSLib.GameTheory.StrategicGame.ZeroSum.MatrixGame"
      ],
      "repository": null
    },
    "status": "proved",
    "tags": [
      "zero-sum",
      "value",
      "minimax",
      "theorem"
    ],
    "title": "Von Neumann Minimax Theorem",
    "uses": []
  },
  "source_root": "/home/user/EconCSLib",
  "theorems": [
    {
      "body": "def IsMaximin (A : MatrixGame I J \ud835\udd5c) (v : \ud835\udd5c) : Prop :=\n  (\u2203 x : stdSimplex \ud835\udd5c I, \u2200 j, v \u2264 A.Ej x j) \u2227\n  (\u2200 w, (\u2203 x : stdSimplex \ud835\udd5c I, \u2200 j, w \u2264 A.Ej x j) \u2192 w \u2264 v)\n\n/-- `v` is a **minimax value** of `A`: some column strategy caps player I's\npayoff at `v` (existence), and no strictly smaller cap is achievable\n(minimality). -/\n",
      "column": 1,
      "end": 5040,
      "kind": "def",
      "line": 127,
      "module": "EconCSLib.GameTheory.StrategicGame.ZeroSum.MatrixGame",
      "name": "IsMaximin",
      "source_path": "/home/user/EconCSLib/EconCSLib/GameTheory/StrategicGame/ZeroSum/MatrixGame.lean",
      "start": 4717
    },
    {
      "body": "def IsMinimax (A : MatrixGame I J \ud835\udd5c) (v : \ud835\udd5c) : Prop :=\n  (\u2203 y : stdSimplex \ud835\udd5c J, \u2200 i, A.Ei i y \u2264 v) \u2227\n  (\u2200 w, (\u2203 y : stdSimplex \ud835\udd5c J, \u2200 i, A.Ei i y \u2264 w) \u2192 v \u2264 w)\n\n/-- `v` is **the value** of `A` (saddle-point form): there exist a row\nmixed strategy `x` and column mixed strategy `y` such that `x` guarantees\nat least `v` against every column and `y` caps player I's payoff at `v`\nagainst every row. Field-generic; `MatrixGame.value` below is the\n\u211d-valued specialisation (via `iSup`) when `\ud835\udd5c` admits order completeness. -/\n",
      "column": 1,
      "end": 5560,
      "kind": "def",
      "line": 134,
      "module": "EconCSLib.GameTheory.StrategicGame.ZeroSum.MatrixGame",
      "name": "IsMinimax",
      "source_path": "/home/user/EconCSLib/EconCSLib/GameTheory/StrategicGame/ZeroSum/MatrixGame.lean",
      "start": 5040
    },
    {
      "body": "def IsValue (A : MatrixGame I J \ud835\udd5c) (v : \ud835\udd5c) : Prop :=\n  \u2203 x : stdSimplex \ud835\udd5c I, \u2203 y : stdSimplex \ud835\udd5c J,\n    (\u2200 j, v \u2264 A.Ej x j) \u2227 (\u2200 i, A.Ei i y \u2264 v)\n\nend LayerTwo\n\n/-! ### Maximin and minimax values via `iSup` / `iInf`\n\n`maximin` and `minimax` use `iSup` / `iInf` over the (uncountable)\nmixed-strategy simplex, so they need order completeness in addition to\nthe Layer-2 hypotheses. We require\n`[ConditionallyCompleteLinearOrder \ud835\udd5c]` \u2014 satisfied by \u211d via\n`Real.instConditionallyCompleteLinearOrder`, but not by \u211a.\n\nFor an ordered field without order completeness (e.g. \u211a), use the\nfield-generic `IsMaximin` / `IsMinimax` / `IsValue` predicates above\ninstead \u2014 they characterise the same notion without invoking `sSup`. -/\n\nsection LayerThreeSup\nvariable {\ud835\udd5c : Type} [Field \ud835\udd5c] [ConditionallyCompleteLinearOrder \ud835\udd5c]\n  [IsStrictOrderedRing \ud835\udd5c]\nvariable (A : MatrixGame I J \ud835\udd5c)\n\n/-- The maximin value: the best guarantee Player I can achieve.\n    `maximin = sup_x inf_j E(x, j)` -/\nnoncomputable def maximin : \ud835\udd5c :=\n  iSup (fun x => A.guarantee_I x)\n\n/-- The minimax value: the best guarantee Player II can achieve.\n    `minimax = inf_y sup_i E(i, y)` -/\nnoncomputable def minimax : \ud835\udd5c :=\n  iInf (fun y => A.guarantee_II y)\n\nend LayerThreeSup\n\n/-! ### Loomis-route theorems (\u211d-only)\n\nThese theorems carry the actual content of the von Neumann minimax\n",
      "column": 1,
      "end": 6895,
      "kind": "def",
      "line": 143,
      "module": "EconCSLib.GameTheory.StrategicGame.ZeroSum.MatrixGame",
      "name": "IsValue",
      "source_path": "/home/user/EconCSLib/EconCSLib/GameTheory/StrategicGame/ZeroSum/MatrixGame.lean",
      "start": 5560
    },
    {
      "body": "theorem and are proved by aliasing the simplified-Loomis development in\n[`MinimaxLoomis`](MinimaxLoomis.lean). The Loomis proof uses \u211d-specific\ncompactness / continuity, so the theorems are pinned to \u211d even though\ntheir statements (via `maximin` / `minimax` above) make sense over any\norder-complete linearly ordered field. -/\n\nsection LayerThree\nvariable (A : MatrixGame I J \u211d)\n\n/-- Maximin \u2264 minimax (always holds, for any matrix game).\n    This is the finite weak-duality inequality. -/\n",
      "column": 1,
      "end": 7385,
      "kind": "theorem",
      "line": 181,
      "module": "EconCSLib.GameTheory.StrategicGame.ZeroSum.MatrixGame",
      "name": "and",
      "source_path": "/home/user/EconCSLib/EconCSLib/GameTheory/StrategicGame/ZeroSum/MatrixGame.lean",
      "start": 6895
    },
    {
      "body": "theorem maximin_le_minimax : A.maximin \u2264 A.minimax :=\n  MinimaxLoomis.lam0_le_mu0 A.g\n\n/-- **Von Neumann's Minimax Theorem**: For any finite matrix game,\n    maximin = minimax. [MSZ 5.11, von Neumann 1928]\n\n    Proof: the general (positive-`B`) Loomis theorem specialised to `B = \ud835\udfd9`,\n    exported as [`Loomis.minmax_from_general`] (compactness + continuity\n    + strong induction on `|I| + |J|`).\n\n    The field-generic minimax (any linearly ordered field, not just \u211d) is\n    proved separately by von Neumann symmetrisation in\n    [`Minimax.minimax`] \u2014 no compactness, no order completeness. -/\n",
      "column": 1,
      "end": 7980,
      "kind": "theorem",
      "line": 192,
      "module": "EconCSLib.GameTheory.StrategicGame.ZeroSum.MatrixGame",
      "name": "maximin_le_minimax",
      "source_path": "/home/user/EconCSLib/EconCSLib/GameTheory/StrategicGame/ZeroSum/MatrixGame.lean",
      "start": 7385
    },
    {
      "body": "theorem minimax_theorem : A.maximin = A.minimax :=\n  Loomis.minmax_from_general A.g\n\n/-- Existence of optimal mixed strategies: there exist mixed strategies\n    `xx` for Player I and `yy` for Player II and a value `v` such that:\n    - Player I guarantees at least `v`: `\u2200 j, E(xx, j) \u2265 v`\n    - Player II limits payoff to at most `v`: `\u2200 i, E(i, yy) \u2264 v`\n\n    [MSZ Theorem 5.11, LRS Theorem 2.3.1] -/\n",
      "column": 1,
      "end": 8381,
      "kind": "theorem",
      "line": 205,
      "module": "EconCSLib.GameTheory.StrategicGame.ZeroSum.MatrixGame",
      "name": "minimax_theorem",
      "source_path": "/home/user/EconCSLib/EconCSLib/GameTheory/StrategicGame/ZeroSum/MatrixGame.lean",
      "start": 7980
    },
    {
      "body": "theorem minimax_optimal_strategies :\n    \u2203 (xx : stdSimplex \u211d I) (yy : stdSimplex \u211d J) (v : \u211d),\n      (\u2200 j : J, A.Ej xx j \u2265 v) \u2227\n      (\u2200 i : I, A.Ei i yy \u2264 v) := by\n  obtain \u27e8xx, Hxx\u27e9 := MinimaxLoomis.exists_xx_lam0 A.g\n  obtain \u27e8yy, Hyy\u27e9 := MinimaxLoomis.exists_yy_mu0 A.g\n  refine \u27e8xx, yy, MinimaxLoomis.lam0 A.g, ?_, ?_\u27e9\n  \u00b7 -- \u2200 j, Ej xx j \u2265 lam0 A.g\n    intro j\n    -- A.Ej xx j = wsum xx (fun i => A.g i j) by unfolding payoffAgainstColumn.\n    have : A.Ej xx j = wsum xx (fun i => A.g i j) := rfl\n    rw [this]; exact Hxx j\n  \u00b7 -- \u2200 i, Ei i yy \u2264 lam0 A.g  (using lam0 = mu0)\n    intro i\n    have : A.Ei i yy = wsum yy (fun j => A.g i j) := rfl\n    rw [this, Loomis.minmax_from_general A.g]\n    exact Hyy i\n\nend LayerThree\n\nend MatrixGame\n",
      "column": 1,
      "end": 9127,
      "kind": "theorem",
      "line": 214,
      "module": "EconCSLib.GameTheory.StrategicGame.ZeroSum.MatrixGame",
      "name": "minimax_optimal_strategies",
      "source_path": "/home/user/EconCSLib/EconCSLib/GameTheory/StrategicGame/ZeroSum/MatrixGame.lean",
      "start": 8381
    }
  ]
}
```

## Intent

- Lean is acting as a counterchecker only.
- Blank or flawed proofs are recorded as incompleteness, not inconsistency.
- Any new lemmata discovered here are proposals for review, not automatic edits.