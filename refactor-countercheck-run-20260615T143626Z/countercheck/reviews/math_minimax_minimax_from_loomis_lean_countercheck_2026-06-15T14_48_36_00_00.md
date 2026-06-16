---
agent: lean-countercheck
node_id: math.minimax.minimax_from_loomis
created_at: "2026-06-15T14:48:36+00:00"
---

# Lean Countercheck: Minimax via the All-Ones Specialization of Loomis

## Inputs

- node file: `/home/user/EconCSLib/docs/knowledge/nodes/math/minimax/minimax_from_loomis.md`
- lean file: `/home/user/EconCSLib/EconCSLib/Math/Minimax/Loomis.lean`
- corpus root: `/home/user/EconCSLib`

## Method Status

- heuristic: used

## Matched Declarations

- `(none)`

## Missing Declarations

- `MinimaxLoomis.singleton_of_card_one`
- `MinimaxLoomis.dropEquiv`
- `MinimaxLoomis.sum_split_at`
- `MinimaxLoomis.extendDropColumn`
- `MinimaxLoomis.extendDropRow`
- `MinimaxLoomis.wsum_extendDropColumn`
- `MinimaxLoomis.wsum_extendDropRow`
- `Loomis.minmax_from_general`
- `Loomis.lamB0_one`
- `Loomis.muB0_one`

## Extra Declarations

- `IsPositive`
- `one`
- `xB_pos`
- `By_pos`
- `xBy_pos`
- `lamB.aux_gt_iff_gt`
- `muB.aux_lt_iff_lt`
- `colRatio.continuous`
- `rowRatio.continuous`
- `lamB.aux.continuous`
- `muB.aux.continuous`
- `lamB.aux.bddAbove`
- `muB.aux.bddBelow`
- `lamB.aux.le_lamB0`
- `muB.aux.ge_muB0`
- `exists_xx_lamB0`
- `exists_yy_muB0`
- `lamB0_le_muB0`
- `loomis_value_IJ_2`
- `loomis_value_eq`
- `loomis_theorem`
- `lamB0_one`
- `muB0_one`
- `minmax_from_general`

## Node Uses vs Extracted Dependencies

- node uses: `math.minimax.loomis_theorem`, `game_theory.strategic_game.zero_sum.maximin_le_minimax`
- missing uses: `math.minimax.loomis_theorem`, `game_theory.strategic_game.zero_sum.maximin_le_minimax`
- extra uses: `By_pos`, `IsPositive`, `colRatio.continuous`, `exists_xx_lamB0`, `exists_yy_muB0`, `lamB.aux.bddAbove`, `lamB.aux.continuous`, `lamB.aux.le_lamB0`, `lamB.aux_gt_iff_gt`, `lamB0_le_muB0`, `lamB0_one`, `loomis_value_eq`, `muB.aux.bddBelow`, `muB.aux.continuous`, `muB.aux.ge_muB0`, `muB.aux_lt_iff_lt`, `muB0_one`, `rowRatio.continuous`, `xB_pos`, `xBy_pos`

## Raw Snapshot

```json
{
  "corpus_root": "/home/user/EconCSLib",
  "dependencies": [
    {
      "kind": "hard",
      "module": "EconCSLib.Math.Minimax.Loomis",
      "source": "one",
      "target": "IsPositive"
    },
    {
      "kind": "hard",
      "module": "EconCSLib.Math.Minimax.Loomis",
      "source": "xB_pos",
      "target": "IsPositive"
    },
    {
      "kind": "hard",
      "module": "EconCSLib.Math.Minimax.Loomis",
      "source": "By_pos",
      "target": "IsPositive"
    },
    {
      "kind": "hard",
      "module": "EconCSLib.Math.Minimax.Loomis",
      "source": "xBy_pos",
      "target": "IsPositive"
    },
    {
      "kind": "hard",
      "module": "EconCSLib.Math.Minimax.Loomis",
      "source": "xBy_pos",
      "target": "By_pos"
    },
    {
      "kind": "hard",
      "module": "EconCSLib.Math.Minimax.Loomis",
      "source": "muB.aux_lt_iff_lt",
      "target": "By_pos"
    },
    {
      "kind": "hard",
      "module": "EconCSLib.Math.Minimax.Loomis",
      "source": "muB.aux_lt_iff_lt",
      "target": "xB_pos"
    },
    {
      "kind": "hard",
      "module": "EconCSLib.Math.Minimax.Loomis",
      "source": "colRatio.continuous",
      "target": "IsPositive"
    },
    {
      "kind": "hard",
      "module": "EconCSLib.Math.Minimax.Loomis",
      "source": "colRatio.continuous",
      "target": "xB_pos"
    },
    {
      "kind": "hard",
      "module": "EconCSLib.Math.Minimax.Loomis",
      "source": "rowRatio.continuous",
      "target": "IsPositive"
    },
    {
      "kind": "hard",
      "module": "EconCSLib.Math.Minimax.Loomis",
      "source": "rowRatio.continuous",
      "target": "By_pos"
    },
    {
      "kind": "hard",
      "module": "EconCSLib.Math.Minimax.Loomis",
      "source": "lamB.aux.continuous",
      "target": "colRatio.continuous"
    },
    {
      "kind": "hard",
      "module": "EconCSLib.Math.Minimax.Loomis",
      "source": "lamB.aux.continuous",
      "target": "IsPositive"
    },
    {
      "kind": "hard",
      "module": "EconCSLib.Math.Minimax.Loomis",
      "source": "muB.aux.continuous",
      "target": "rowRatio.continuous"
    },
    {
      "kind": "hard",
      "module": "EconCSLib.Math.Minimax.Loomis",
      "source": "muB.aux.continuous",
      "target": "IsPositive"
    },
    {
      "kind": "hard",
      "module": "EconCSLib.Math.Minimax.Loomis",
      "source": "lamB.aux.bddAbove",
      "target": "lamB.aux.continuous"
    },
    {
      "kind": "hard",
      "module": "EconCSLib.Math.Minimax.Loomis",
      "source": "lamB.aux.bddAbove",
      "target": "IsPositive"
    },
    {
      "kind": "hard",
      "module": "EconCSLib.Math.Minimax.Loomis",
      "source": "muB.aux.bddBelow",
      "target": "muB.aux.continuous"
    },
    {
      "kind": "hard",
      "module": "EconCSLib.Math.Minimax.Loomis",
      "source": "muB.aux.bddBelow",
      "target": "IsPositive"
    },
    {
      "kind": "hard",
      "module": "EconCSLib.Math.Minimax.Loomis",
      "source": "lamB.aux.le_lamB0",
      "target": "lamB.aux.bddAbove"
    },
    {
      "kind": "hard",
      "module": "EconCSLib.Math.Minimax.Loomis",
      "source": "lamB.aux.le_lamB0",
      "target": "IsPositive"
    },
    {
      "kind": "hard",
      "module": "EconCSLib.Math.Minimax.Loomis",
      "source": "muB.aux.ge_muB0",
      "target": "muB.aux.bddBelow"
    },
    {
      "kind": "hard",
      "module": "EconCSLib.Math.Minimax.Loomis",
      "source": "muB.aux.ge_muB0",
      "target": "IsPositive"
    },
    {
      "kind": "hard",
      "module": "EconCSLib.Math.Minimax.Loomis",
      "source": "exists_xx_lamB0",
      "target": "lamB.aux.continuous"
    },
    {
      "kind": "hard",
      "module": "EconCSLib.Math.Minimax.Loomis",
      "source": "exists_xx_lamB0",
      "target": "IsPositive"
    },
    {
      "kind": "hard",
      "module": "EconCSLib.Math.Minimax.Loomis",
      "source": "exists_xx_lamB0",
      "target": "xB_pos"
    },
    {
      "kind": "hard",
      "module": "EconCSLib.Math.Minimax.Loomis",
      "source": "exists_yy_muB0",
      "target": "muB.aux.continuous"
    },
    {
      "kind": "hard",
      "module": "EconCSLib.Math.Minimax.Loomis",
      "source": "exists_yy_muB0",
      "target": "IsPositive"
    },
    {
      "kind": "hard",
      "module": "EconCSLib.Math.Minimax.Loomis",
      "source": "exists_yy_muB0",
      "target": "By_pos"
    },
    {
      "kind": "hard",
      "module": "EconCSLib.Math.Minimax.Loomis",
      "source": "lamB0_le_muB0",
      "target": "exists_xx_lamB0"
    },
    {
      "kind": "hard",
      "module": "EconCSLib.Math.Minimax.Loomis",
      "source": "lamB0_le_muB0",
      "target": "exists_yy_muB0"
    },
    {
      "kind": "hard",
      "module": "EconCSLib.Math.Minimax.Loomis",
      "source": "lamB0_le_muB0",
      "target": "IsPositive"
    },
    {
      "kind": "hard",
      "module": "EconCSLib.Math.Minimax.Loomis",
      "source": "lamB0_le_muB0",
      "target": "xBy_pos"
    },
    {
      "kind": "hard",
      "module": "EconCSLib.Math.Minimax.Loomis",
      "source": "loomis_value_IJ_2",
      "target": "lamB.aux_gt_iff_gt"
    },
    {
      "kind": "hard",
      "module": "EconCSLib.Math.Minimax.Loomis",
      "source": "loomis_value_IJ_2",
      "target": "lamB.aux.le_lamB0"
    },
    {
      "kind": "hard",
      "module": "EconCSLib.Math.Minimax.Loomis",
      "source": "loomis_value_IJ_2",
      "target": "muB.aux_lt_iff_lt"
    },
    {
      "kind": "hard",
      "module": "EconCSLib.Math.Minimax.Loomis",
      "source": "loomis_value_IJ_2",
      "target": "exists_xx_lamB0"
    },
    {
      "kind": "hard",
      "module": "EconCSLib.Math.Minimax.Loomis",
      "source": "loomis_value_IJ_2",
      "target": "loomis_value_eq"
    },
    {
      "kind": "hard",
      "module": "EconCSLib.Math.Minimax.Loomis",
      "source": "loomis_value_IJ_2",
      "target": "muB.aux.ge_muB0"
    },
    {
      "kind": "hard",
      "module": "EconCSLib.Math.Minimax.Loomis",
      "source": "loomis_value_IJ_2",
      "target": "exists_yy_muB0"
    },
    {
      "kind": "hard",
      "module": "EconCSLib.Math.Minimax.Loomis",
      "source": "loomis_value_IJ_2",
      "target": "lamB0_le_muB0"
    },
    {
      "kind": "hard",
      "module": "EconCSLib.Math.Minimax.Loomis",
      "source": "loomis_value_IJ_2",
      "target": "IsPositive"
    },
    {
      "kind": "hard",
      "module": "EconCSLib.Math.Minimax.Loomis",
      "source": "loomis_value_IJ_2",
      "target": "xBy_pos"
    },
    {
      "kind": "hard",
      "module": "EconCSLib.Math.Minimax.Loomis",
      "source": "loomis_value_IJ_2",
      "target": "By_pos"
    },
    {
      "kind": "hard",
      "module": "EconCSLib.Math.Minimax.Loomis",
      "source": "loomis_value_IJ_2",
      "target": "xB_pos"
    },
    {
      "kind": "hard",
      "module": "EconCSLib.Math.Minimax.Loomis",
      "source": "loomis_value_eq",
      "target": "IsPositive"
    },
    {
      "kind": "hard",
      "module": "EconCSLib.Math.Minimax.Loomis",
      "source": "loomis_theorem",
      "target": "exists_xx_lamB0"
    },
    {
      "kind": "hard",
      "module": "EconCSLib.Math.Minimax.Loomis",
      "source": "loomis_theorem",
      "target": "loomis_value_eq"
    },
    {
      "kind": "hard",
      "module": "EconCSLib.Math.Minimax.Loomis",
      "source": "loomis_theorem",
      "target": "exists_yy_muB0"
    },
    {
      "kind": "hard",
      "module": "EconCSLib.Math.Minimax.Loomis",
      "source": "loomis_theorem",
      "target": "IsPositive"
    },
    {
      "kind": "hard",
      "module": "EconCSLib.Math.Minimax.Loomis",
      "source": "muB0_one",
      "target": "loomis_value_eq"
    },
    {
      "kind": "hard",
      "module": "EconCSLib.Math.Minimax.Loomis",
      "source": "minmax_from_general",
      "target": "loomis_value_eq"
    },
    {
      "kind": "hard",
      "module": "EconCSLib.Math.Minimax.Loomis",
      "source": "minmax_from_general",
      "target": "IsPositive"
    },
    {
      "kind": "hard",
      "module": "EconCSLib.Math.Minimax.Loomis",
      "source": "minmax_from_general",
      "target": "lamB0_one"
    },
    {
      "kind": "hard",
      "module": "EconCSLib.Math.Minimax.Loomis",
      "source": "minmax_from_general",
      "target": "muB0_one"
    }
  ],
  "lean_file": "/home/user/EconCSLib/EconCSLib/Math/Minimax/Loomis.lean",
  "method_status": {
    "heuristic": "used"
  },
  "node": {
    "body": "# Minimax via the All-Ones Specialization of Loomis\n\nThis proof-plan node records the **selected** route the library uses to close\nthe finite von Neumann minimax theorem\n([[node:game_theory.strategic_game.zero_sum.von_neumann_minimax]]): take the Loomis theorem\n([[node:math.minimax.loomis_theorem]]) and specialise the positive matrix\n$B$ to the all-ones matrix $\\mathbf{1}$. An alternative, ordered-field-generic\nroute is `Minimax.minimax`\n([[node:math.minimax.ordered_field_minimax]]), proved sorry-free by von\nNeumann symmetrisation over any linearly ordered field.\n\n*Proof (specialization of Loomis).* Apply the Loomis theorem\n[[node:math.minimax.loomis_theorem]] with the positive matrix\n$B = \\mathbf{1}$ (the all-ones $I \\times J$ matrix). It produces\n$x \\in \\Delta(I)$, $y \\in \\Delta(J)$, and $v \\in \\mathbb{R}$ with\n$$\n  xA \\ge v \\cdot xB \\qquad\\text{and}\\qquad Ay \\le v \\cdot By.\n$$\nFor every probability vector $x \\in \\Delta(I)$ and $y \\in \\Delta(J)$ the\nall-ones vectors $xB$ and $By$ are identically $1$. Hence the Loomis\ninequalities collapse to\n$$\n  \\sum_i x_i A(i, j) \\ge v \\quad\\text{for every } j \\in J,\n  \\qquad\n  \\sum_j y_j A(i, j) \\le v \\quad\\text{for every } i \\in I.\n$$\nThe first inequality says $x$ guarantees at least $v$ for player I, so\n$\\lambda_0 \\ge v$; the second says $y$ holds player I to at most $v$, so\n$\\mu_0 \\le v$. Weak duality $\\lambda_0 \\le \\mu_0$\n([[node:game_theory.strategic_game.zero_sum.maximin_le_minimax]]) closes the sandwich:\n$\\lambda_0 = \\mu_0 = v$, with $(x, y)$ the asserted optimisers.\n\n*Lean implementation note.* The Lean development now formalises the general\npositive-$B$ Loomis theorem in `EconCSLib.StrategicGame.Loomis` and\nre-derives finite minimax as the one-line corollary\n`Loomis.minmax_from_general`, which calls `loomis_value_eq` at the\nall-ones matrix `B = fun _ _ => 1` and uses the bridge lemmas\n`lamB0_one` and `muB0_one` to translate `lamB0 A 1` back to\n`MinimaxLoomis.lam0 A` (resp. `muB0`/`mu0`). This corollary is now the sole\nroute: the earlier standalone induction in\n`EconCSLib.StrategicGame.MinimaxLoomis` was removed as redundant. That module\nnow contributes only the shared foundational scaffold reused by the general\nproof \u2014 the aggregates, the existence + weak-duality step\n([[node:game_theory.strategic_game.zero_sum.lam_mu_existence]]), and the\ncolumn/row drop-extend infrastructure \u2014 built on the core simplex layer\n([[node:math.simplex.pure]], [[node:math.simplex.continuity]],\n[[node:math.simplex.mix]], and [[node:math.simplex.bounded_by_value]]).\n\n## References\n\n- [MFoGT, Chapter 2, Section 2.3, Thm. 2.3.1] Laraki, Renault, and Sorin, *Mathematical Foundations of Game Theory*. Finite von Neumann minimax theorem.\n- [MFoGT, Thm. 2.5.1] Same. Loomis theorem; minimax is the $B = \\mathbf{1}$ specialisation.",
    "file_path": "/home/user/EconCSLib/docs/knowledge/nodes/math/minimax/minimax_from_loomis.md",
    "id": "math.minimax.minimax_from_loomis",
    "kind": "proof-plan",
    "lean": {
      "declarations": [
        "MinimaxLoomis.singleton_of_card_one",
        "MinimaxLoomis.dropEquiv",
        "MinimaxLoomis.sum_split_at",
        "MinimaxLoomis.extendDropColumn",
        "MinimaxLoomis.extendDropRow",
        "MinimaxLoomis.wsum_extendDropColumn",
        "MinimaxLoomis.wsum_extendDropRow",
        "Loomis.minmax_from_general",
        "Loomis.lamB0_one",
        "Loomis.muB0_one"
      ],
      "modules": [
        "EconCSLib.Math.Minimax.MinimaxLoomis",
        "EconCSLib.Math.Minimax.Loomis"
      ],
      "repository": null
    },
    "status": "formalized",
    "tags": [
      "zero-sum",
      "minimax",
      "loomis",
      "proof-plan"
    ],
    "title": "Minimax via the All-Ones Specialization of Loomis",
    "uses": [
      "math.minimax.loomis_theorem",
      "game_theory.strategic_game.zero_sum.maximin_le_minimax"
    ]
  },
  "source_root": "/home/user/EconCSLib",
  "theorems": [
    {
      "body": "def IsPositive (B : I \u2192 J \u2192 \u211d) : Prop := \u2200 i j, 0 < B i j\n\nnamespace IsPositive\n\n/-- The all-ones matrix is positive; the simplified-Loomis specialisation\nplugs `B := fun _ _ => 1` into the general theorem. -/\n",
      "column": 1,
      "end": 2094,
      "kind": "def",
      "line": 55,
      "module": "EconCSLib.Math.Minimax.Loomis",
      "name": "IsPositive",
      "source_path": "/home/user/EconCSLib/EconCSLib/Math/Minimax/Loomis.lean",
      "start": 1884
    },
    {
      "body": "theorem one : IsPositive (fun (_ : I) (_ : J) => (1 : \u211d)) := fun _ _ => one_pos\n\nend IsPositive\n\n/-! ### Vector aggregates: `xA`, `xB`, `Ay`, `By`, and their positivity\n\nThe generic positivity lemma `wsum_pos` lives in `Math.Simplex`; the\nLoomis-flavored aggregates below are one-line applications of it. -/\n\n/-- Row-vector product `(xA)_j = \u2211\u1d62 x\u1d62 A\u1d62\u2c7c`. -/\nnoncomputable def xA (A : I \u2192 J \u2192 \u211d) (x : stdSimplex \u211d I) (j : J) : \u211d :=\n  wsum x (fun i => A i j)\n\n/-- Row-vector product `(xB)_j = \u2211\u1d62 x\u1d62 B\u1d62\u2c7c`. -/\nnoncomputable def xB (B : I \u2192 J \u2192 \u211d) (x : stdSimplex \u211d I) (j : J) : \u211d :=\n  wsum x (fun i => B i j)\n\n/-- Column-vector product `(Ay)_i = \u2211\u2c7c A\u1d62\u2c7c y\u2c7c`. -/\nnoncomputable def Ay (A : I \u2192 J \u2192 \u211d) (y : stdSimplex \u211d J) (i : I) : \u211d :=\n  wsum y (fun j => A i j)\n\n/-- Column-vector product `(By)_i = \u2211\u2c7c B\u1d62\u2c7c y\u2c7c`. -/\nnoncomputable def By (B : I \u2192 J \u2192 \u211d) (y : stdSimplex \u211d J) (i : I) : \u211d :=\n  wsum y (fun j => B i j)\n\n/-- Positivity of the row aggregate when `B` is entrywise positive. -/\n",
      "column": 1,
      "end": 3072,
      "kind": "theorem",
      "line": 61,
      "module": "EconCSLib.Math.Minimax.Loomis",
      "name": "one",
      "source_path": "/home/user/EconCSLib/EconCSLib/Math/Minimax/Loomis.lean",
      "start": 2094
    },
    {
      "body": "theorem xB_pos {B : I \u2192 J \u2192 \u211d} (hB : IsPositive B)\n    (x : stdSimplex \u211d I) (j : J) : 0 < xB B x j :=\n  wsum_pos x (fun i => hB i j)\n\n/-- Positivity of the column aggregate when `B` is entrywise positive. -/\n",
      "column": 1,
      "end": 3280,
      "kind": "theorem",
      "line": 87,
      "module": "EconCSLib.Math.Minimax.Loomis",
      "name": "xB_pos",
      "source_path": "/home/user/EconCSLib/EconCSLib/Math/Minimax/Loomis.lean",
      "start": 3072
    },
    {
      "body": "theorem By_pos {B : I \u2192 J \u2192 \u211d} (hB : IsPositive B)\n    (y : stdSimplex \u211d J) (i : I) : 0 < By B y i :=\n  wsum_pos y (fun j => hB i j)\n\n/-- Positivity of the bilinear pairing `xBy = \u2211\u1d62\u2c7c x\u1d62 B\u1d62\u2c7c y\u2c7c`. -/\n",
      "column": 1,
      "end": 3479,
      "kind": "theorem",
      "line": 92,
      "module": "EconCSLib.Math.Minimax.Loomis",
      "name": "By_pos",
      "source_path": "/home/user/EconCSLib/EconCSLib/Math/Minimax/Loomis.lean",
      "start": 3280
    },
    {
      "body": "theorem xBy_pos {B : I \u2192 J \u2192 \u211d} (hB : IsPositive B)\n    (x : stdSimplex \u211d I) (y : stdSimplex \u211d J) :\n    0 < wsum x (fun i => By B y i) :=\n  wsum_pos x (fun i => By_pos hB y i)\n\n/-! ### Loomis ratios and the scalars `lamB0`, `muB0` -/\n\n/-- Row player's per-column Loomis ratio `(xA)_j / (xB)_j`. -/\nnoncomputable def colRatio (A B : I \u2192 J \u2192 \u211d) (x : stdSimplex \u211d I) (j : J) : \u211d :=\n  xA A x j / xB B x j\n\n/-- Column player's per-row Loomis ratio `(Ay)_i / (By)_i`. -/\nnoncomputable def rowRatio (A B : I \u2192 J \u2192 \u211d) (y : stdSimplex \u211d J) (i : I) : \u211d :=\n  Ay A y i / By B y i\n\n/-- Player I's guaranteed Loomis ratio under mixed strategy `x`: infimum over\npure columns. -/\nnoncomputable def lamB.aux (A B : I \u2192 J \u2192 \u211d) (x : stdSimplex \u211d I) : \u211d :=\n  Finset.inf' Finset.univ Finset.univ_nonempty (fun j => colRatio A B x j)\n\n/-- Player II's Loomis-ratio cap under mixed strategy `y`: supremum over\npure rows. -/\nnoncomputable def muB.aux (A B : I \u2192 J \u2192 \u211d) (y : stdSimplex \u211d J) : \u211d :=\n  Finset.sup' Finset.univ Finset.univ_nonempty (fun i => rowRatio A B y i)\n\n/-- Maxmin Loomis scalar `\u03bb\u2080 = sup_x \u03bb_aux(x)`. -/\nnoncomputable def lamB0 (A B : I \u2192 J \u2192 \u211d) : \u211d := iSup (lamB.aux A B)\n\n/-- Minmax Loomis scalar `\u03bc\u2080 = inf_y \u03bc_aux(y)`. -/\nnoncomputable def muB0 (A B : I \u2192 J \u2192 \u211d) : \u211d := iInf (muB.aux A B)\n\n/-- Characterisation: `lamB.aux A B x > c` iff every column ratio exceeds `c`. -/\n",
      "column": 1,
      "end": 4849,
      "kind": "theorem",
      "line": 97,
      "module": "EconCSLib.Math.Minimax.Loomis",
      "name": "xBy_pos",
      "source_path": "/home/user/EconCSLib/EconCSLib/Math/Minimax/Loomis.lean",
      "start": 3479
    },
    {
      "body": "theorem lamB.aux_gt_iff_gt (A B : I \u2192 J \u2192 \u211d) (c : \u211d) (x : stdSimplex \u211d I) :\n    c < lamB.aux A B x \u2194 \u2200 j, c < colRatio A B x j := by\n  simp [lamB.aux, Finset.lt_inf'_iff]\n\n/-- Characterisation: `muB.aux A B y < c` iff every row ratio is below `c`. -/\n",
      "column": 1,
      "end": 5100,
      "kind": "theorem",
      "line": 129,
      "module": "EconCSLib.Math.Minimax.Loomis",
      "name": "lamB.aux_gt_iff_gt",
      "source_path": "/home/user/EconCSLib/EconCSLib/Math/Minimax/Loomis.lean",
      "start": 4849
    },
    {
      "body": "theorem muB.aux_lt_iff_lt (A B : I \u2192 J \u2192 \u211d) (c : \u211d) (y : stdSimplex \u211d J) :\n    muB.aux A B y < c \u2194 \u2200 i, rowRatio A B y i < c := by\n  simp [muB.aux, Finset.sup'_lt_iff]\n\n/-! ### Continuity, boundedness, and attainment\n\nThe Loomis ratios are continuous on the compact simplex (positive denominators by\n`xB_pos` / `By_pos`), so the inf'/sup' aggregates are continuous and\ntheir extrema `lamB0` / `muB0` are attained. -/\n\n/-- Each column ratio `(xA)_j / (xB)_j` is continuous on `\u0394(I)`. -/\n",
      "column": 1,
      "end": 5586,
      "kind": "theorem",
      "line": 134,
      "module": "EconCSLib.Math.Minimax.Loomis",
      "name": "muB.aux_lt_iff_lt",
      "source_path": "/home/user/EconCSLib/EconCSLib/Math/Minimax/Loomis.lean",
      "start": 5100
    },
    {
      "body": "theorem colRatio.continuous {A B : I \u2192 J \u2192 \u211d} (hB : IsPositive B) (j : J) :\n    Continuous (fun x : stdSimplex \u211d I => colRatio A B x j) := by\n  unfold colRatio xA xB\n  exact (wsum_continuous (fun i => A i j)).div\n    (wsum_continuous (fun i => B i j))\n    (fun x => (xB_pos hB x j).ne')\n\n/-- Each row ratio `(Ay)_i / (By)_i` is continuous on `\u0394(J)`. -/\n",
      "column": 1,
      "end": 5939,
      "kind": "theorem",
      "line": 145,
      "module": "EconCSLib.Math.Minimax.Loomis",
      "name": "colRatio.continuous",
      "source_path": "/home/user/EconCSLib/EconCSLib/Math/Minimax/Loomis.lean",
      "start": 5586
    },
    {
      "body": "theorem rowRatio.continuous {A B : I \u2192 J \u2192 \u211d} (hB : IsPositive B) (i : I) :\n    Continuous (fun y : stdSimplex \u211d J => rowRatio A B y i) := by\n  unfold rowRatio Ay By\n  exact (wsum_continuous (fun j => A i j)).div\n    (wsum_continuous (fun j => B i j))\n    (fun y => (By_pos hB y i).ne')\n\n/-- `lamB.aux A B` is continuous on the simplex. -/\n",
      "column": 1,
      "end": 6279,
      "kind": "theorem",
      "line": 153,
      "module": "EconCSLib.Math.Minimax.Loomis",
      "name": "rowRatio.continuous",
      "source_path": "/home/user/EconCSLib/EconCSLib/Math/Minimax/Loomis.lean",
      "start": 5939
    },
    {
      "body": "theorem lamB.aux.continuous {A B : I \u2192 J \u2192 \u211d} (hB : IsPositive B) :\n    Continuous (lamB.aux A B) := by\n  refine Continuous.finset_inf'_apply Finset.univ_nonempty ?_\n  intro j _\n  exact colRatio.continuous hB j\n\n/-- `muB.aux A B` is continuous on the simplex. -/\n",
      "column": 1,
      "end": 6542,
      "kind": "theorem",
      "line": 161,
      "module": "EconCSLib.Math.Minimax.Loomis",
      "name": "lamB.aux.continuous",
      "source_path": "/home/user/EconCSLib/EconCSLib/Math/Minimax/Loomis.lean",
      "start": 6279
    },
    {
      "body": "theorem muB.aux.continuous {A B : I \u2192 J \u2192 \u211d} (hB : IsPositive B) :\n    Continuous (muB.aux A B) := by\n  refine Continuous.finset_sup'_apply Finset.univ_nonempty ?_\n  intro i _\n  exact rowRatio.continuous hB i\n\n/-- `lamB.aux A B` is bounded above on the simplex (continuous function on a\ncompact set). -/\n",
      "column": 1,
      "end": 6846,
      "kind": "theorem",
      "line": 168,
      "module": "EconCSLib.Math.Minimax.Loomis",
      "name": "muB.aux.continuous",
      "source_path": "/home/user/EconCSLib/EconCSLib/Math/Minimax/Loomis.lean",
      "start": 6542
    },
    {
      "body": "theorem lamB.aux.bddAbove {A B : I \u2192 J \u2192 \u211d} (hB : IsPositive B) :\n    \u2203 C, \u2200 x, lamB.aux A B x \u2264 C := by\n  obtain \u27e8C, hC\u27e9 :=\n    (isCompact_univ.image (lamB.aux.continuous hB)).bddAbove\n  refine \u27e8C, fun x => hC \u27e8x, Set.mem_univ _, rfl\u27e9\u27e9\n\n/-- `muB.aux A B` is bounded below on the simplex. -/\n",
      "column": 1,
      "end": 7138,
      "kind": "theorem",
      "line": 176,
      "module": "EconCSLib.Math.Minimax.Loomis",
      "name": "lamB.aux.bddAbove",
      "source_path": "/home/user/EconCSLib/EconCSLib/Math/Minimax/Loomis.lean",
      "start": 6846
    },
    {
      "body": "theorem muB.aux.bddBelow {A B : I \u2192 J \u2192 \u211d} (hB : IsPositive B) :\n    \u2203 C, \u2200 y, C \u2264 muB.aux A B y := by\n  obtain \u27e8C, hC\u27e9 :=\n    (isCompact_univ.image (muB.aux.continuous hB)).bddBelow\n  refine \u27e8C, fun y => hC \u27e8y, Set.mem_univ _, rfl\u27e9\u27e9\n\n/-- Every `lamB.aux` value is bounded by the supremum `lamB0`. -/\n",
      "column": 1,
      "end": 7439,
      "kind": "theorem",
      "line": 183,
      "module": "EconCSLib.Math.Minimax.Loomis",
      "name": "muB.aux.bddBelow",
      "source_path": "/home/user/EconCSLib/EconCSLib/Math/Minimax/Loomis.lean",
      "start": 7138
    },
    {
      "body": "theorem lamB.aux.le_lamB0 {A B : I \u2192 J \u2192 \u211d} (hB : IsPositive B)\n    (x : stdSimplex \u211d I) :\n    lamB.aux A B x \u2264 lamB0 A B :=\n  le_ciSup (bddAbove_def.2 (by\n    obtain \u27e8C, hC\u27e9 := lamB.aux.bddAbove hB\n    exact \u27e8C, by rintro r \u27e8x, rfl\u27e9; exact hC x\u27e9)) x\n\n/-- Every `muB.aux` value dominates the infimum `muB0`. -/\n",
      "column": 1,
      "end": 7750,
      "kind": "theorem",
      "line": 190,
      "module": "EconCSLib.Math.Minimax.Loomis",
      "name": "lamB.aux.le_lamB0",
      "source_path": "/home/user/EconCSLib/EconCSLib/Math/Minimax/Loomis.lean",
      "start": 7439
    },
    {
      "body": "theorem muB.aux.ge_muB0 {A B : I \u2192 J \u2192 \u211d} (hB : IsPositive B)\n    (y : stdSimplex \u211d J) :\n    muB0 A B \u2264 muB.aux A B y :=\n  ciInf_le (bddBelow_def.2 (by\n    obtain \u27e8C, hC\u27e9 := muB.aux.bddBelow hB\n    exact \u27e8C, by rintro r \u27e8y, rfl\u27e9; exact hC y\u27e9)) y\n\n/-- Attainment of `lamB0`: there exists a mixed strategy `xx` with\n`(xA xx)_j \u2265 lamB0 \u00b7 (xB xx)_j` for every column. -/\n",
      "column": 1,
      "end": 8117,
      "kind": "theorem",
      "line": 198,
      "module": "EconCSLib.Math.Minimax.Loomis",
      "name": "muB.aux.ge_muB0",
      "source_path": "/home/user/EconCSLib/EconCSLib/Math/Minimax/Loomis.lean",
      "start": 7750
    },
    {
      "body": "theorem exists_xx_lamB0 (A B : I \u2192 J \u2192 \u211d) (hB : IsPositive B) :\n    \u2203 xx : stdSimplex \u211d I, \u2200 j, lamB0 A B * xB B xx j \u2264 xA A xx j := by\n  obtain \u27e8xx, _, hxx\u27e9 :=\n    isCompact_univ.exists_isMaxOn (\u03b1 := \u211d) (\u03b2 := stdSimplex \u211d I)\n      Set.univ_nonempty (lamB.aux.continuous hB).continuousOn\n  rw [isMaxOn_iff] at hxx\n  refine \u27e8xx, fun j => ?_\u27e9\n  have h1 : lamB0 A B \u2264 lamB.aux A B xx :=\n    ciSup_le fun y => hxx y (Set.mem_univ _)\n  have h2 : lamB.aux A B xx \u2264 colRatio A B xx j :=\n    Finset.inf'_le _ (Finset.mem_univ j)\n  have hxxB : 0 < xB B xx j := xB_pos hB xx j\n  -- lamB0 \u2264 xA / xB \u21d2 lamB0 * xB \u2264 xA  (since xB > 0)\n  have hratio : lamB0 A B \u2264 colRatio A B xx j := h1.trans h2\n  unfold colRatio at hratio\n  exact (le_div_iff\u2080 hxxB).mp hratio\n\n/-- Attainment of `muB0`: there exists a mixed strategy `yy` with\n`(Ay yy)_i \u2264 muB0 \u00b7 (By yy)_i` for every row. -/\n",
      "column": 1,
      "end": 8981,
      "kind": "theorem",
      "line": 207,
      "module": "EconCSLib.Math.Minimax.Loomis",
      "name": "exists_xx_lamB0",
      "source_path": "/home/user/EconCSLib/EconCSLib/Math/Minimax/Loomis.lean",
      "start": 8117
    },
    {
      "body": "theorem exists_yy_muB0 (A B : I \u2192 J \u2192 \u211d) (hB : IsPositive B) :\n    \u2203 yy : stdSimplex \u211d J, \u2200 i, Ay A yy i \u2264 muB0 A B * By B yy i := by\n  obtain \u27e8yy, _, hyy\u27e9 :=\n    isCompact_univ.exists_isMinOn (\u03b1 := \u211d) (\u03b2 := stdSimplex \u211d J)\n      Set.univ_nonempty (muB.aux.continuous hB).continuousOn\n  rw [isMinOn_iff] at hyy\n  refine \u27e8yy, fun i => ?_\u27e9\n  have h1 : muB.aux A B yy \u2264 muB0 A B :=\n    le_ciInf fun z => hyy z (Set.mem_univ _)\n  have h2 : rowRatio A B yy i \u2264 muB.aux A B yy :=\n    Finset.le_sup' (f := fun i => rowRatio A B yy i) (Finset.mem_univ i)\n  have hyyB : 0 < By B yy i := By_pos hB yy i\n  have hratio : rowRatio A B yy i \u2264 muB0 A B := h2.trans h1\n  unfold rowRatio at hratio\n  exact (div_le_iff\u2080 hyyB).mp hratio\n\n/-! ### Weak duality `lamB0 \u2264 muB0` -/\n\n/-- The bilinear pairing `xBy` and its symmetric variants. -/\nprivate theorem xBy_swap (B : I \u2192 J \u2192 \u211d)\n    (x : stdSimplex \u211d I) (y : stdSimplex \u211d J) :\n    wsum x (fun i => By B y i) = wsum y (fun j => xB B x j) := by\n  unfold xB By\n  exact wsum_wsum_comm x y B\n\n/-- Weight a constant multiple under `wsum`: `wsum z (c \u00b7 f) = c \u00b7 wsum z f`.\nA direct unfold of `wsum_smul`, restated here so chained rewrites match the\nshape used in the weak-duality proof. -/\nprivate theorem wsum_const_mul {K : Type*} [Fintype K] (z : stdSimplex \u211d K)\n    (c : \u211d) (f : K \u2192 \u211d) :\n    wsum z (fun a => c * f a) = c * wsum z f := by\n  change (\u2211 a, z.val a * (c * f a)) = c * (\u2211 a, z.val a * f a)\n  rw [Finset.mul_sum]\n  refine Finset.sum_congr rfl ?_\n  intro a _\n  ring\n\n/-- **Weak duality** for the Loomis scalars: `lamB0 \u2264 muB0`. -/\n",
      "column": 1,
      "end": 10552,
      "kind": "theorem",
      "line": 226,
      "module": "EconCSLib.Math.Minimax.Loomis",
      "name": "exists_yy_muB0",
      "source_path": "/home/user/EconCSLib/EconCSLib/Math/Minimax/Loomis.lean",
      "start": 8981
    },
    {
      "body": "theorem lamB0_le_muB0 (A B : I \u2192 J \u2192 \u211d) (hB : IsPositive B) :\n    lamB0 A B \u2264 muB0 A B := by\n  obtain \u27e8xx, Hxx\u27e9 := exists_xx_lamB0 A B hB\n  obtain \u27e8yy, Hyy\u27e9 := exists_yy_muB0 A B hB\n  set xxByy : \u211d := wsum xx (fun i => By B yy i) with hxxByy_def\n  have hxxByy_pos : 0 < xxByy := xBy_pos hB xx yy\n  -- The pairing `xx A \u00b7 yy`, written both ways.\n  set pairing : \u211d := wsum xx (fun i => Ay A yy i) with hpairing_def\n  have hswap : pairing = wsum yy (fun j => xA A xx j) := by\n    rw [hpairing_def]\n    unfold Ay xA\n    exact wsum_wsum_comm xx yy A\n  -- lamB0 \u00b7 xxByy \u2264 pairing\n  have h_lam : lamB0 A B * xxByy \u2264 pairing := by\n    rw [hswap]\n    calc lamB0 A B * xxByy\n        = lamB0 A B * wsum yy (fun j => xB B xx j) := by\n          rw [hxxByy_def, xBy_swap]\n      _ = wsum yy (fun j => lamB0 A B * xB B xx j) := by\n          rw [wsum_const_mul]\n      _ \u2264 wsum yy (fun j => xA A xx j) :=\n          wsum_le_wsum yy (fun j => Hxx j)\n  -- pairing \u2264 muB0 \u00b7 xxByy\n  have h_mu : pairing \u2264 muB0 A B * xxByy := by\n    rw [hpairing_def]\n    calc wsum xx (fun i => Ay A yy i)\n        \u2264 wsum xx (fun i => muB0 A B * By B yy i) :=\n          wsum_le_wsum xx (fun i => Hyy i)\n      _ = muB0 A B * wsum xx (fun i => By B yy i) := by\n          rw [wsum_const_mul]\n      _ = muB0 A B * xxByy := by rw [hxxByy_def]\n  -- Combine and divide by the positive xxByy.\n  have hcombo : lamB0 A B * xxByy \u2264 muB0 A B * xxByy := h_lam.trans h_mu\n  exact le_of_mul_le_mul_right hcombo hxxByy_pos\n\n/-! ### Base case `|I| + |J| = 2` -/\n\n/-- Base case of the Loomis induction: a 1\u00d71 matrix pair has the single\nratio `A i\u2080 j\u2080 / B i\u2080 j\u2080` as the common Loomis value. -/\n",
      "column": 1,
      "end": 12185,
      "kind": "theorem",
      "line": 264,
      "module": "EconCSLib.Math.Minimax.Loomis",
      "name": "lamB0_le_muB0",
      "source_path": "/home/user/EconCSLib/EconCSLib/Math/Minimax/Loomis.lean",
      "start": 10552
    },
    {
      "body": "theorem loomis_value_IJ_2 (Hn : 2 = Fintype.card I + Fintype.card J)\n    {A B : I \u2192 J \u2192 \u211d} (_hB : IsPositive B) :\n    lamB0 A B = muB0 A B := by\n  classical\n  have \u27e8HSI, HSJ\u27e9 : Fintype.card I = 1 \u2227 Fintype.card J = 1 := by\n    have p1 := @Fintype.card_pos I _ _\n    have p2 := @Fintype.card_pos J _ _\n    refine \u27e8?_, ?_\u27e9 <;> omega\n  obtain \u27e8i0, hi\u27e9 := MinimaxLoomis.singleton_of_card_one HSI\n  obtain \u27e8j0, hj\u27e9 := MinimaxLoomis.singleton_of_card_one HSJ\n  -- On a singleton simplex every distribution puts mass 1 at the single point.\n  have Hxx0 : \u2200 x : stdSimplex \u211d I, x.val i0 = 1 := by\n    intro x\n    have hsum : (\u2211 i : I, x.val i) = 1 := x.property.2\n    have hcol : (\u2211 i : I, x.val i) = x.val i0 := by\n      rw [show (Finset.univ : Finset I) = {i0} from hi, Finset.sum_singleton]\n    linarith\n  have Hyy0 : \u2200 y : stdSimplex \u211d J, y.val j0 = 1 := by\n    intro y\n    have hsum : (\u2211 j : J, y.val j) = 1 := y.property.2\n    have hrow : (\u2211 j : J, y.val j) = y.val j0 := by\n      rw [show (Finset.univ : Finset J) = {j0} from hj, Finset.sum_singleton]\n    linarith\n  -- Both ratios reduce to A i0 j0 / B i0 j0 regardless of the strategy.\n  have HlamB : \u2200 x, lamB.aux A B x = A i0 j0 / B i0 j0 := by\n    intro x\n    simp only [lamB.aux, hj, Finset.inf'_singleton]\n    show colRatio A B x j0 = A i0 j0 / B i0 j0\n    unfold colRatio xA xB\n    have hxA : wsum x (fun i => A i j0) = A i0 j0 := by\n      change (\u2211 i, x.val i * A i j0) = A i0 j0\n      rw [show (Finset.univ : Finset I) = {i0} from hi, Finset.sum_singleton,\n          Hxx0 x, one_mul]\n    have hxB : wsum x (fun i => B i j0) = B i0 j0 := by\n      change (\u2211 i, x.val i * B i j0) = B i0 j0\n      rw [show (Finset.univ : Finset I) = {i0} from hi, Finset.sum_singleton,\n          Hxx0 x, one_mul]\n    rw [hxA, hxB]\n  have HmuB : \u2200 y, muB.aux A B y = A i0 j0 / B i0 j0 := by\n    intro y\n    simp only [muB.aux, hi, Finset.sup'_singleton]\n    show rowRatio A B y i0 = A i0 j0 / B i0 j0\n    unfold rowRatio Ay By\n    have hAy : wsum y (fun j => A i0 j) = A i0 j0 := by\n      change (\u2211 j, y.val j * A i0 j) = A i0 j0\n      rw [show (Finset.univ : Finset J) = {j0} from hj, Finset.sum_singleton,\n          Hyy0 y, one_mul]\n    have hBy : wsum y (fun j => B i0 j) = B i0 j0 := by\n      change (\u2211 j, y.val j * B i0 j) = B i0 j0\n      rw [show (Finset.univ : Finset J) = {j0} from hj, Finset.sum_singleton,\n          Hyy0 y, one_mul]\n    rw [hAy, hBy]\n  rw [lamB0, iSup_congr HlamB, ciSup_const, muB0, iInf_congr HmuB, ciInf_const]\n\n/-! ### Induction step\n\nWe linearise the Loomis inequalities by introducing the offset functionals\n`G(x, j) := (xA)_j - \u03bb\u2080 \u00b7 (xB)_j` and `H(y, i) := \u03bc\u2080 \u00b7 (By)_i - (Ay)_i`,\nturning the inequalities `xA \u2265 \u03bb\u2080 \u00b7 xB` and `Ay \u2264 \u03bc\u2080 \u00b7 By` into nonneg\nconditions on functions linear in their simplex argument. Convex\ncombinations then reduce to the constant-`c = 0` `linear_comb_*` and\n`mix_*_nbh` lemmas from `Core.Simplex`. -/\n\n/-- Linearised column constraint: `colOffset A B \u03bb x j = (xA)_j - \u03bb \u00b7 (xB)_j`.\nNote that `colOffset A B \u03bb x j = wsum x (fun i => A i j - \u03bb * B i j)` is\nlinear in `x`. -/\nprivate noncomputable def colOffset (A B : I \u2192 J \u2192 \u211d) (lam : \u211d)\n    (x : stdSimplex \u211d I) (j : J) : \u211d :=\n  xA A x j - lam * xB B x j\n\n/-- Linearised row constraint: `rowOffset A B \u03bc y i = \u03bc \u00b7 (By)_i - (Ay)_i`. -/\nprivate noncomputable def rowOffset (A B : I \u2192 J \u2192 \u211d) (mu : \u211d)\n    (y : stdSimplex \u211d J) (i : I) : \u211d :=\n  mu * By B y i - Ay A y i\n\n/-- `colOffset` is a `wsum` of `A i j - \u03bb B i j` over `i`. -/\nprivate theorem colOffset_eq_wsum (A B : I \u2192 J \u2192 \u211d) (lam : \u211d)\n    (x : stdSimplex \u211d I) (j : J) :\n    colOffset A B lam x j = wsum x (fun i => A i j - lam * B i j) := by\n  unfold colOffset xA xB\n  change (\u2211 i, x.val i * A i j) - lam * (\u2211 i, x.val i * B i j)\n      = \u2211 i, x.val i * (A i j - lam * B i j)\n  rw [Finset.mul_sum, \u2190 Finset.sum_sub_distrib]\n  refine Finset.sum_congr rfl ?_\n  intro i _\n  ring\n\n/-- `rowOffset` is a `wsum` of `\u03bc B i j - A i j` over `j`. -/\nprivate theorem rowOffset_eq_wsum (A B : I \u2192 J \u2192 \u211d) (mu : \u211d)\n    (y : stdSimplex \u211d J) (i : I) :\n    rowOffset A B mu y i = wsum y (fun j => mu * B i j - A i j) := by\n  unfold rowOffset Ay By\n  change mu * (\u2211 j, y.val j * B i j) - (\u2211 j, y.val j * A i j)\n      = \u2211 j, y.val j * (mu * B i j - A i j)\n  rw [Finset.mul_sum, \u2190 Finset.sum_sub_distrib]\n  refine Finset.sum_congr rfl ?_\n  intro j _\n  ring\n\n/-- Convex combination linearity for `colOffset` in the simplex argument. -/\nprivate theorem colOffset_mix (A B : I \u2192 J \u2192 \u211d) (lam : \u211d)\n    (x y : stdSimplex \u211d I) (t : \u211d) (ht\u2080 : 0 \u2264 t) (ht\u2081 : t \u2264 1) (j : J) :\n    colOffset A B lam (stdSimplex.mix t ht\u2080 ht\u2081 x y) j\n      = t * colOffset A B lam x j + (1 - t) * colOffset A B lam y j := by\n  simp only [colOffset_eq_wsum]\n  exact wsum_mix t ht\u2080 ht\u2081 x y _\n\n/-- Convex combination linearity for `rowOffset` in the simplex argument. -/\nprivate theorem rowOffset_mix (A B : I \u2192 J \u2192 \u211d) (mu : \u211d)\n    (x y : stdSimplex \u211d J) (t : \u211d) (ht\u2080 : 0 \u2264 t) (ht\u2081 : t \u2264 1) (i : I) :\n    rowOffset A B mu (stdSimplex.mix t ht\u2080 ht\u2081 x y) i\n      = t * rowOffset A B mu x i + (1 - t) * rowOffset A B mu y i := by\n  simp only [rowOffset_eq_wsum]\n  exact wsum_mix t ht\u2080 ht\u2081 x y _\n\n/-! ### Equivalence of the ratio form and the offset form -/\n\n/-- `lamB.aux A B x` strictly exceeds `lam` iff every offset `colOffset` is\nstrictly positive at `x`. -/\nprivate theorem lamB.aux_gt_of_colOffset_pos {A B : I \u2192 J \u2192 \u211d}\n    (hB : IsPositive B) {lam : \u211d} {x : stdSimplex \u211d I}\n    (H : \u2200 j, 0 < colOffset A B lam x j) :\n    lam < lamB.aux A B x := by\n  rw [lamB.aux_gt_iff_gt]\n  intro j\n  unfold colRatio\n  rw [lt_div_iff\u2080 (xB_pos hB x j)]\n  -- Goal: lam * xB B x j < xA A x j\n  have := H j\n  unfold colOffset at this\n  linarith\n\n/-- `muB.aux A B y` is strictly below `mu` iff every offset `rowOffset` is\nstrictly positive at `y`. -/\nprivate theorem muB.aux_lt_of_rowOffset_pos {A B : I \u2192 J \u2192 \u211d}\n    (hB : IsPositive B) {mu : \u211d} {y : stdSimplex \u211d J}\n    (H : \u2200 i, 0 < rowOffset A B mu y i) :\n    muB.aux A B y < mu := by\n  rw [muB.aux_lt_iff_lt]\n  intro i\n  unfold rowRatio\n  rw [div_lt_iff\u2080 (By_pos hB y i)]\n  have := H i\n  unfold rowOffset at this\n  linarith\n\n/-! ### Column / row extension to the unrestricted simplex -/\n\n/-- Drop the `j\u2080`-column of `A` and view as a matrix on `I \u00d7 {j // j \u2260 j\u2080}`. -/\nprivate noncomputable def dropCol [DecidableEq J] (A : I \u2192 J \u2192 \u211d) (j\u2080 : J) :\n    I \u2192 {j : J // j \u2260 j\u2080} \u2192 \u211d :=\n  fun i j' => A i j'.val\n\n/-- Drop the `i\u2080`-row of `A` and view as a matrix on `{i // i \u2260 i\u2080} \u00d7 J`. -/\nprivate noncomputable def dropRow [DecidableEq I] (A : I \u2192 J \u2192 \u211d) (i\u2080 : I) :\n    {i : I // i \u2260 i\u2080} \u2192 J \u2192 \u211d :=\n  fun i' j => A i'.val j\n\n/-- Dropping a column preserves entrywise positivity. -/\nprivate theorem dropCol.IsPositive [DecidableEq J] {B : I \u2192 J \u2192 \u211d}\n    (hB : IsPositive B) (j\u2080 : J) : IsPositive (dropCol B j\u2080) :=\n  fun i j' => hB i j'.val\n\n/-- Dropping a row preserves entrywise positivity. -/\nprivate theorem dropRow.IsPositive [DecidableEq I] {B : I \u2192 J \u2192 \u211d}\n    (hB : IsPositive B) (i\u2080 : I) : IsPositive (dropRow B i\u2080) :=\n  fun i' j => hB i'.val j\n\n/-- Extending `y' \u2208 \u0394(J')` to `\u0394(J)` by zero at `j\u2080` recovers the same row\naggregates from `A` (and `B`). -/\nprivate theorem Ay_extendDropColumn [DecidableEq J] (i : I) (A : I \u2192 J \u2192 \u211d)\n    (j\u2080 : J) (y' : stdSimplex \u211d {j : J // j \u2260 j\u2080}) :\n    Ay A (MinimaxLoomis.extendDropColumn j\u2080 y') i = Ay (dropCol A j\u2080) y' i := by\n  unfold Ay\n  rw [MinimaxLoomis.wsum_extendDropColumn]\n  rfl\n\nprivate theorem By_extendDropColumn [DecidableEq J] (i : I) (B : I \u2192 J \u2192 \u211d)\n    (j\u2080 : J) (y' : stdSimplex \u211d {j : J // j \u2260 j\u2080}) :\n    By B (MinimaxLoomis.extendDropColumn j\u2080 y') i = By (dropCol B j\u2080) y' i := by\n  unfold By\n  rw [MinimaxLoomis.wsum_extendDropColumn]\n  rfl\n\nprivate theorem xA_extendDropRow [DecidableEq I] (j : J) (A : I \u2192 J \u2192 \u211d)\n    (i\u2080 : I) (x' : stdSimplex \u211d {i : I // i \u2260 i\u2080}) :\n    xA A (MinimaxLoomis.extendDropRow i\u2080 x') j = xA (dropRow A i\u2080) x' j := by\n  unfold xA\n  rw [MinimaxLoomis.wsum_extendDropRow]\n  rfl\n\nprivate theorem xB_extendDropRow [DecidableEq I] (j : J) (B : I \u2192 J \u2192 \u211d)\n    (i\u2080 : I) (x' : stdSimplex \u211d {i : I // i \u2260 i\u2080}) :\n    xB B (MinimaxLoomis.extendDropRow i\u2080 x') j = xB (dropRow B i\u2080) x' j := by\n  unfold xB\n  rw [MinimaxLoomis.wsum_extendDropRow]\n  rfl\n\n/-! ### The strong induction `loomis_value_eq` -/\n\n/-- **Loomis induction**: `lamB0 A B = muB0 A B` for any finite positive-`B`\nmatrix pair with `2 \u2264 |I| + |J|`, by strong induction on the total dimension. -/\nprivate theorem loomis_value_eq_aux :\n    \u2200 (n : \u2115), 2 \u2264 n \u2192\n    \u2200 {I J : Type*} [Fintype I] [Fintype J] [Nonempty I] [Nonempty J],\n      n = Fintype.card I + Fintype.card J \u2192\n      \u2200 (A B : I \u2192 J \u2192 \u211d), IsPositive B \u2192 lamB0 A B = muB0 A B := by\n  intro n Hgt\n  induction n, Hgt using Nat.le_induction with\n  | base =>\n      intro I J _ _ _ _ Hn A B hB\n      exact loomis_value_IJ_2 Hn hB\n  | succ n _ IH =>\n      intro I J _ _ _ _ Hn A B hB\n      classical\n      rcases (lamB0_le_muB0 A B hB).lt_or_eq with hlt | heq\n      swap\n      \u00b7 exact heq\n      exfalso\n      obtain \u27e8xx, Hxx\u27e9 := exists_xx_lamB0 A B hB\n      obtain \u27e8yy, Hyy\u27e9 := exists_yy_muB0 A B hB\n      -- The Hxx/Hyy say `colOffset \u2265 0` / `rowOffset \u2265 0` everywhere.\n      have HxxOff : \u2200 j, 0 \u2264 colOffset A B (lamB0 A B) xx j := by\n        intro j; unfold colOffset; linarith [Hxx j]\n      have HyyOff : \u2200 i, 0 \u2264 rowOffset A B (muB0 A B) yy i := by\n        intro i; unfold rowOffset; linarith [Hyy i]\n      -- If both are identically zero, we get `lamB0 = muB0`, contradiction.\n      have exits_ij :\n          (\u2203 j : J, 0 < colOffset A B (lamB0 A B) xx j)\n            \u2228 (\u2203 i : I, 0 < rowOffset A B (muB0 A B) yy i) := by\n        by_contra HP\n        push_neg at HP\n        obtain \u27e8HP1, HP2\u27e9 := HP\n        have HxxZero : \u2200 j, colOffset A B (lamB0 A B) xx j = 0 :=\n          fun j => le_antisymm (HP1 j) (HxxOff j)\n        have HyyZero : \u2200 i, rowOffset A B (muB0 A B) yy i = 0 :=\n          fun i => le_antisymm (HP2 i) (HyyOff i)\n        -- These give wsum yy (colOffset xx \u00b7) = 0 and wsum xx (rowOffset yy \u00b7) = 0.\n        set xxByy : \u211d := wsum xx (fun i => By B yy i)\n        have hxxByy_pos : 0 < xxByy := xBy_pos hB xx yy\n        -- wsum yy (xA xx \u00b7) = lamB0 * (wsum yy (xB xx \u00b7)) and\n        -- wsum xx (Ay yy \u00b7) = muB0 * (wsum xx (By yy \u00b7)) = muB0 * xxByy\n        have h_pair_swap :\n            wsum xx (fun i => Ay A yy i) = wsum yy (fun j => xA A xx j) := by\n          unfold Ay xA\n          exact wsum_wsum_comm xx yy A\n        have h_xxByy_swap :\n            wsum yy (fun j => xB B xx j) = xxByy := by\n          show wsum yy (fun j => xB B xx j) = wsum xx (fun i => By B yy i)\n          exact (xBy_swap B xx yy).symm\n        -- From HxxZero: wsum yy (xA xx \u00b7) = lamB0 * wsum yy (xB xx \u00b7)\n        have h_lhs : wsum yy (fun j => xA A xx j) = lamB0 A B * xxByy := by\n          rw [\u2190 h_xxByy_swap]\n          have : wsum yy (fun j => xA A xx j)\n              = wsum yy (fun j => lamB0 A B * xB B xx j) := by\n            refine congrArg (wsum yy) (funext ?_)\n            intro j\n            have := HxxZero j\n            unfold colOffset at this\n            linarith\n          rw [this, wsum_const_mul]\n        -- From HyyZero: wsum xx (Ay yy \u00b7) = muB0 * xxByy\n        have h_rhs : wsum xx (fun i => Ay A yy i) = muB0 A B * xxByy := by\n          have : wsum xx (fun i => Ay A yy i)\n              = wsum xx (fun i => muB0 A B * By B yy i) := by\n            refine congrArg (wsum xx) (funext ?_)\n            intro i\n            have := HyyZero i\n            unfold rowOffset at this\n            linarith\n          rw [this, wsum_const_mul]\n        have heq2 : lamB0 A B = muB0 A B := by\n          have hcombo : lamB0 A B * xxByy = muB0 A B * xxByy := by\n            linarith [h_lhs, h_pair_swap, h_rhs]\n          exact mul_right_cancel\u2080 hxxByy_pos.ne' hcombo\n        linarith\n      rcases exits_ij with \u27e8j\u2080, HJ\u27e9 | \u27e8i\u2080, HI\u27e9\n      \u00b7 -------------------- Column-drop case --------------------\n        -- |J| \u2265 2 because strict ineq at j\u2080 \u21d2 otherwise lamB.aux xx > lamB0,\n        -- contradicting lamB.aux \u2264 lamB0.\n        have cardJ_ne_one : Fintype.card J \u2260 1 := by\n          intro hcardJ\n          obtain \u27e8j, hj\u27e9 := Finset.card_eq_one.1 (by simpa using hcardJ)\n          have hj0_eq : j\u2080 = j := by\n            have hmem : j\u2080 \u2208 (Finset.univ : Finset J) := Finset.mem_univ _\n            rw [hj] at hmem\n            exact Finset.mem_singleton.1 hmem\n          -- lamB.aux xx evaluated at the unique column j\u2080\n          have hlamB_xx : lamB.aux A B xx = colRatio A B xx j\u2080 := by\n            simp [lamB.aux, hj0_eq, hj]\n          have hxxB : 0 < xB B xx j\u2080 := xB_pos hB xx j\u2080\n          have hratio_gt : lamB0 A B < colRatio A B xx j\u2080 := by\n            unfold colRatio\n            rw [lt_div_iff\u2080 hxxB]\n            have hHJ := HJ; unfold colOffset at hHJ; linarith\n          have hle : lamB.aux A B xx \u2264 lamB0 A B := lamB.aux.le_lamB0 hB xx\n          rw [hlamB_xx] at hle\n          linarith\n        have cardJ_ge_two : 2 \u2264 Fintype.card J := by\n          have hpos : 1 \u2264 Fintype.card J := Fintype.card_pos\n          omega\n        have nonempty_J' : Nonempty {j : J // j \u2260 j\u2080} := by\n          obtain \u27e8j, hj\u27e9 : \u2203 j : J, j \u2260 j\u2080 := by\n            by_contra H1\n            push_neg at H1\n            have hsubsing : Fintype.card J \u2264 1 := by\n              have hsingle : (Finset.univ : Finset J) = {j\u2080} := by ext; simp [H1]\n              simpa [\u2190 Finset.card_univ, hsingle]\n            omega\n          exact \u27e8\u27e8j, hj\u27e9\u27e9\n        haveI : Nonempty {j : J // j \u2260 j\u2080} := nonempty_J'\n        have cardn : n = Fintype.card I + Fintype.card {j : J // j \u2260 j\u2080} := by\n          have hJ' : Fintype.card {j : J // j \u2260 j\u2080} = Fintype.card J - 1 := by\n            simp [Fintype.card_subtype_compl]\n          have hposJ : 1 \u2264 Fintype.card J := Fintype.card_pos\n          omega\n        -- Apply IH to the column-dropped game.\n        let A' : I \u2192 {j : J // j \u2260 j\u2080} \u2192 \u211d := dropCol A j\u2080\n        let B' : I \u2192 {j : J // j \u2260 j\u2080} \u2192 \u211d := dropCol B j\u2080\n        have hB' : IsPositive B' := dropCol.IsPositive hB j\u2080\n        have IH' : lamB0 A' B' = muB0 A' B' := IH cardn A' B' hB'\n        -- Show muB0 A B \u2264 muB0 A' B' via the extend-by-zero trick.\n        have h_mu_mono : muB0 A B \u2264 muB0 A' B' := by\n          apply le_ciInf\n          intro y'\n          have hwsum_Ay : \u2200 i,\n              Ay A (MinimaxLoomis.extendDropColumn j\u2080 y') i = Ay A' y' i :=\n            fun i => Ay_extendDropColumn i A j\u2080 y'\n          have hwsum_By : \u2200 i,\n              By B (MinimaxLoomis.extendDropColumn j\u2080 y') i = By B' y' i :=\n            fun i => By_extendDropColumn i B j\u2080 y'\n          have hmuA' : muB.aux A' B' y'\n              = muB.aux A B (MinimaxLoomis.extendDropColumn j\u2080 y') := by\n            simp only [muB.aux]\n            congr 1\n            ext i\n            unfold rowRatio\n            rw [hwsum_Ay i, hwsum_By i]\n          rw [hmuA']\n          exact muB.aux.ge_muB0 hB (MinimaxLoomis.extendDropColumn j\u2080 y')\n        have lamB0_lt_lamB0' : lamB0 A B < lamB0 A' B' := by\n          calc lamB0 A B < muB0 A B := hlt\n            _ \u2264 muB0 A' B' := h_mu_mono\n            _ = lamB0 A' B' := IH'.symm\n        -- Get the inductive optimiser `xx'` for the restricted game.\n        obtain \u27e8xx', Hxx'\u27e9 := exists_xx_lamB0 A' B' hB'\n        -- On non-j\u2080 columns, `colOffset A B lamB0 xx' j > 0`.\n        have HxxOff' : \u2200 j : J, j \u2260 j\u2080 \u2192\n            0 < colOffset A B (lamB0 A B) xx' j := by\n          intro j hj\n          have hxx'_j : lamB0 A' B' * xB B' xx' \u27e8j, hj\u27e9\n              \u2264 xA A' xx' \u27e8j, hj\u27e9 := Hxx' \u27e8j, hj\u27e9\n          have : lamB0 A B * xB B xx' j < xA A xx' j := by\n            have hxB'_xB : xB B' xx' \u27e8j, hj\u27e9 = xB B xx' j := rfl\n            have hxA'_xA : xA A' xx' \u27e8j, hj\u27e9 = xA A xx' j := rfl\n            have hxBpos : 0 < xB B xx' j := xB_pos hB xx' j\n            calc lamB0 A B * xB B xx' j\n                < lamB0 A' B' * xB B xx' j := by\n                  exact (mul_lt_mul_iff_of_pos_right hxBpos).mpr lamB0_lt_lamB0'\n              _ \u2264 xA A xx' j := by\n                  rw [\u2190 hxB'_xB, \u2190 hxA'_xA]; exact hxx'_j\n          unfold colOffset; linarith\n        -- For j = j\u2080 use the neighborhood-of-1 continuity lemma; for j \u2260 j\u2080\n        -- the convex combination keeps strict positivity.\n        obtain \u27e8t, ht0pos, ht1lt, hstrict_j0_raw\u27e9 :\n            \u2203 t : \u211d, 0 < t \u2227 t < 1 \u2227\n              0 < t * colOffset A B (lamB0 A B) xx j\u2080\n                + (1 - t) * colOffset A B (lamB0 A B) xx' j\u2080 :=\n          mix_gt_of_gt_nbh _ _ _ HJ\n        have ht\u2080 : 0 \u2264 t := le_of_lt ht0pos\n        have ht\u2081 : t \u2264 1 := le_of_lt ht1lt\n        have hstrict_j0 :\n            0 < colOffset A B (lamB0 A B)\n                  (stdSimplex.mix t ht\u2080 ht\u2081 xx xx') j\u2080 := by\n          rw [colOffset_mix]; exact hstrict_j0_raw\n        -- Assemble strict on every j.\n        have hAll : \u2200 j,\n            0 < colOffset A B (lamB0 A B)\n                  (stdSimplex.mix t ht\u2080 ht\u2081 xx xx') j := by\n          intro j\n          by_cases hj : j = j\u2080\n          \u00b7 rw [hj]; exact hstrict_j0\n          \u00b7 rw [colOffset_mix]\n            exact linear_comb_gt_of_ge_gt\n              (colOffset A B (lamB0 A B) xx j)\n              (colOffset A B (lamB0 A B) xx' j) 0\n              (HxxOff j) (HxxOff' j hj) ht\u2080 ht1lt\n        -- Hence lamB.aux at the combination strictly exceeds lamB0, contradiction.\n        have hgt : lamB0 A B\n            < lamB.aux A B (stdSimplex.mix t ht\u2080 ht\u2081 xx xx') :=\n          lamB.aux_gt_of_colOffset_pos hB hAll\n        have hle : lamB.aux A B (stdSimplex.mix t ht\u2080 ht\u2081 xx xx') \u2264 lamB0 A B :=\n          lamB.aux.le_lamB0 hB _\n        linarith\n      \u00b7 -------------------- Row-drop case --------------------\n        have cardI_ne_one : Fintype.card I \u2260 1 := by\n          intro hcardI\n          obtain \u27e8i, hi\u27e9 := Finset.card_eq_one.1 (by simpa using hcardI)\n          have hi0_eq : i\u2080 = i := by\n            have hmem : i\u2080 \u2208 (Finset.univ : Finset I) := Finset.mem_univ _\n            rw [hi] at hmem\n            exact Finset.mem_singleton.1 hmem\n          have hmuB_yy : muB.aux A B yy = rowRatio A B yy i\u2080 := by\n            simp [muB.aux, hi0_eq, hi]\n          have hyyB : 0 < By B yy i\u2080 := By_pos hB yy i\u2080\n          have hratio_lt : rowRatio A B yy i\u2080 < muB0 A B := by\n            unfold rowRatio\n            rw [div_lt_iff\u2080 hyyB]\n            have hHI := HI; unfold rowOffset at hHI; linarith\n          have hge : muB0 A B \u2264 muB.aux A B yy := muB.aux.ge_muB0 hB yy\n          rw [hmuB_yy] at hge\n          linarith\n        have cardI_ge_two : 2 \u2264 Fintype.card I := by\n          have hpos : 1 \u2264 Fintype.card I := Fintype.card_pos\n          omega\n        have nonempty_I' : Nonempty {i : I // i \u2260 i\u2080} := by\n          obtain \u27e8i, hi\u27e9 : \u2203 i : I, i \u2260 i\u2080 := by\n            by_contra H1\n            push_neg at H1\n            have hsubsing : Fintype.card I \u2264 1 := by\n              have hsingle : (Finset.univ : Finset I) = {i\u2080} := by ext; simp [H1]\n              simpa [\u2190 Finset.card_univ, hsingle]\n            omega\n          exact \u27e8\u27e8i, hi\u27e9\u27e9\n        haveI : Nonempty {i : I // i \u2260 i\u2080} := nonempty_I'\n        have cardn : n = Fintype.card {i : I // i \u2260 i\u2080} + Fintype.card J := by\n          have hI' : Fintype.card {i : I // i \u2260 i\u2080} = Fintype.card I - 1 := by\n            simp [Fintype.card_subtype_compl]\n          have hposI : 1 \u2264 Fintype.card I := Fintype.card_pos\n          omega\n        let A' : {i : I // i \u2260 i\u2080} \u2192 J \u2192 \u211d := dropRow A i\u2080\n        let B' : {i : I // i \u2260 i\u2080} \u2192 J \u2192 \u211d := dropRow B i\u2080\n        have hB' : IsPositive B' := dropRow.IsPositive hB i\u2080\n        have IH' : lamB0 A' B' = muB0 A' B' := IH cardn A' B' hB'\n        have h_lam_mono : lamB0 A' B' \u2264 lamB0 A B := by\n          apply ciSup_le\n          intro x'\n          have hwsum_xA : \u2200 j,\n              xA A (MinimaxLoomis.extendDropRow i\u2080 x') j = xA A' x' j :=\n            fun j => xA_extendDropRow j A i\u2080 x'\n          have hwsum_xB : \u2200 j,\n              xB B (MinimaxLoomis.extendDropRow i\u2080 x') j = xB B' x' j :=\n            fun j => xB_extendDropRow j B i\u2080 x'\n          have hlamA' : lamB.aux A' B' x'\n              = lamB.aux A B (MinimaxLoomis.extendDropRow i\u2080 x') := by\n            simp only [lamB.aux]\n            congr 1\n            ext j\n            unfold colRatio\n            rw [hwsum_xA j, hwsum_xB j]\n          rw [hlamA']\n          exact lamB.aux.le_lamB0 hB (MinimaxLoomis.extendDropRow i\u2080 x')\n        have muB0_gt_muB0' : muB0 A' B' < muB0 A B := by\n          calc muB0 A' B' = lamB0 A' B' := IH'.symm\n            _ \u2264 lamB0 A B := h_lam_mono\n            _ < muB0 A B := hlt\n        obtain \u27e8yy', Hyy'\u27e9 := exists_yy_muB0 A' B' hB'\n        have HyyOff' : \u2200 i : I, i \u2260 i\u2080 \u2192\n            0 < rowOffset A B (muB0 A B) yy' i := by\n          intro i hi\n          have hyy'_i : Ay A' yy' \u27e8i, hi\u27e9\n              \u2264 muB0 A' B' * By B' yy' \u27e8i, hi\u27e9 := Hyy' \u27e8i, hi\u27e9\n          have : Ay A yy' i < muB0 A B * By B yy' i := by\n            have hAy'_Ay : Ay A' yy' \u27e8i, hi\u27e9 = Ay A yy' i := rfl\n            have hBy'_By : By B' yy' \u27e8i, hi\u27e9 = By B yy' i := rfl\n            have hBypos : 0 < By B yy' i := By_pos hB yy' i\n            calc Ay A yy' i\n                = Ay A' yy' \u27e8i, hi\u27e9 := hAy'_Ay.symm\n              _ \u2264 muB0 A' B' * By B' yy' \u27e8i, hi\u27e9 := hyy'_i\n              _ = muB0 A' B' * By B yy' i := by rw [hBy'_By]\n              _ < muB0 A B * By B yy' i :=\n                  (mul_lt_mul_iff_of_pos_right hBypos).mpr muB0_gt_muB0'\n          unfold rowOffset; linarith\n        obtain \u27e8t, ht0pos, ht1lt, hstrict_i0_raw\u27e9 :\n            \u2203 t : \u211d, 0 < t \u2227 t < 1 \u2227\n              0 < t * rowOffset A B (muB0 A B) yy i\u2080\n                + (1 - t) * rowOffset A B (muB0 A B) yy' i\u2080 :=\n          mix_gt_of_gt_nbh _ _ _ HI\n        have ht\u2080 : 0 \u2264 t := le_of_lt ht0pos\n        have ht\u2081 : t \u2264 1 := le_of_lt ht1lt\n        have hstrict_i0 :\n            0 < rowOffset A B (muB0 A B)\n                  (stdSimplex.mix t ht\u2080 ht\u2081 yy yy') i\u2080 := by\n          rw [rowOffset_mix]; exact hstrict_i0_raw\n        have hAll : \u2200 i,\n            0 < rowOffset A B (muB0 A B)\n                  (stdSimplex.mix t ht\u2080 ht\u2081 yy yy') i := by\n          intro i\n          by_cases hi : i = i\u2080\n          \u00b7 rw [hi]; exact hstrict_i0\n          \u00b7 rw [rowOffset_mix]\n            exact linear_comb_gt_of_ge_gt\n              (rowOffset A B (muB0 A B) yy i)\n              (rowOffset A B (muB0 A B) yy' i) 0\n              (HyyOff i) (HyyOff' i hi) ht\u2080 ht1lt\n        have hlt' : muB.aux A B (stdSimplex.mix t ht\u2080 ht\u2081 yy yy') < muB0 A B :=\n          muB.aux_lt_of_rowOffset_pos hB hAll\n        have hge : muB0 A B \u2264 muB.aux A B (stdSimplex.mix t ht\u2080 ht\u2081 yy yy') :=\n          muB.aux.ge_muB0 hB _\n        linarith\n\n/-- **Loomis scalar equality**: every finite positive-`B` matrix pair over `\u211d`\nhas equal maxmin and minmax Loomis ratios. -/\n",
      "column": 1,
      "end": 34743,
      "kind": "theorem",
      "line": 303,
      "module": "EconCSLib.Math.Minimax.Loomis",
      "name": "loomis_value_IJ_2",
      "source_path": "/home/user/EconCSLib/EconCSLib/Math/Minimax/Loomis.lean",
      "start": 12185
    },
    {
      "body": "theorem loomis_value_eq (A B : I \u2192 J \u2192 \u211d) (hB : IsPositive B) :\n    lamB0 A B = muB0 A B := by\n  let n := Fintype.card I + Fintype.card J\n  have ngetwo : 2 \u2264 n := by\n    have p1 : 1 \u2264 Fintype.card I := Fintype.card_pos\n    have p2 : 1 \u2264 Fintype.card J := Fintype.card_pos\n    omega\n  exact loomis_value_eq_aux n ngetwo rfl A B hB\n\n/-! ### Packaged Loomis theorem -/\n\n/-- **Loomis Theorem** [MFoGT, Theorem 2.5.1].\n\nFor any pair of matrices `A B : I \u2192 J \u2192 \u211d` with `B` entrywise positive,\nthere exist mixed strategies `x : \u0394(I)`, `y : \u0394(J)` and a value `v : \u211d`\nsuch that for every column `j \u2208 J` and every row `i \u2208 I`,\n$$\n  v \\cdot (xB)_j \\le (xA)_j, \\qquad (Ay)_i \\le v \\cdot (By)_i.\n$$\nThe common value `v = lamB0 A B = muB0 A B`. -/\n",
      "column": 1,
      "end": 35477,
      "kind": "theorem",
      "line": 806,
      "module": "EconCSLib.Math.Minimax.Loomis",
      "name": "loomis_value_eq",
      "source_path": "/home/user/EconCSLib/EconCSLib/Math/Minimax/Loomis.lean",
      "start": 34743
    },
    {
      "body": "theorem loomis_theorem (A B : I \u2192 J \u2192 \u211d) (hB : IsPositive B) :\n    \u2203 (x : stdSimplex \u211d I) (y : stdSimplex \u211d J) (v : \u211d),\n      (\u2200 j, v * xB B x j \u2264 xA A x j) \u2227\n      (\u2200 i, Ay A y i \u2264 v * By B y i) := by\n  obtain \u27e8x, Hx\u27e9 := exists_xx_lamB0 A B hB\n  obtain \u27e8y, Hy\u27e9 := exists_yy_muB0 A B hB\n  refine \u27e8x, y, lamB0 A B, Hx, fun i => ?_\u27e9\n  rw [loomis_value_eq A B hB]\n  exact Hy i\n\n/-! ### Corollary: simplified Loomis = `B = 1` specialisation\n\nThe simplified-Loomis development in `MinimaxLoomis` proves\n`lam0 A = mu0 A` directly by inlining the `B = \ud835\udfd9` specialisation of the\ninduction. This section re-derives that statement from the general\npositive-`B` Loomis theorem above, validating the\n`minimax_from_loomis` blueprint node's \"all-ones specialisation\"\nclaim. -/\n\nprivate theorem xB_one (x : stdSimplex \u211d I) (j : J) :\n    xB (fun (_ : I) (_ : J) => (1 : \u211d)) x j = 1 := by\n  unfold xB\n  exact wsum_const x 1\n\nprivate theorem By_one (y : stdSimplex \u211d J) (i : I) :\n    By (fun (_ : I) (_ : J) => (1 : \u211d)) y i = 1 := by\n  unfold By\n  exact wsum_const y 1\n\nprivate theorem colRatio_one (A : I \u2192 J \u2192 \u211d) (x : stdSimplex \u211d I) (j : J) :\n    colRatio A (fun _ _ => 1) x j = wsum x (fun i => A i j) := by\n  unfold colRatio\n  rw [xB_one]\n  unfold xA\n  exact div_one _\n\nprivate theorem rowRatio_one (A : I \u2192 J \u2192 \u211d) (y : stdSimplex \u211d J) (i : I) :\n    rowRatio A (fun _ _ => 1) y i = wsum y (fun j => A i j) := by\n  unfold rowRatio\n  rw [By_one]\n  unfold Ay\n  exact div_one _\n\nprivate theorem lamB.aux_one (A : I \u2192 J \u2192 \u211d) (x : stdSimplex \u211d I) :\n    lamB.aux A (fun _ _ => 1) x = MinimaxLoomis.lam.aux A x := by\n  unfold lamB.aux MinimaxLoomis.lam.aux\n  congr 1; ext j\n  exact colRatio_one A x j\n\nprivate theorem muB.aux_one (A : I \u2192 J \u2192 \u211d) (y : stdSimplex \u211d J) :\n    muB.aux A (fun _ _ => 1) y = MinimaxLoomis.mu.aux A y := by\n  unfold muB.aux MinimaxLoomis.mu.aux\n  congr 1; ext i\n  exact rowRatio_one A y i\n\n",
      "column": 1,
      "end": 37371,
      "kind": "theorem",
      "line": 826,
      "module": "EconCSLib.Math.Minimax.Loomis",
      "name": "loomis_theorem",
      "source_path": "/home/user/EconCSLib/EconCSLib/Math/Minimax/Loomis.lean",
      "start": 35477
    },
    {
      "body": "theorem lamB0_one (A : I \u2192 J \u2192 \u211d) :\n    lamB0 A (fun _ _ => 1) = MinimaxLoomis.lam0 A := by\n  unfold lamB0 MinimaxLoomis.lam0\n  exact iSup_congr (lamB.aux_one A)\n\n",
      "column": 1,
      "end": 37534,
      "kind": "theorem",
      "line": 881,
      "module": "EconCSLib.Math.Minimax.Loomis",
      "name": "lamB0_one",
      "source_path": "/home/user/EconCSLib/EconCSLib/Math/Minimax/Loomis.lean",
      "start": 37371
    },
    {
      "body": "theorem muB0_one (A : I \u2192 J \u2192 \u211d) :\n    muB0 A (fun _ _ => 1) = MinimaxLoomis.mu0 A := by\n  unfold muB0 MinimaxLoomis.mu0\n  exact iInf_congr (muB.aux_one A)\n\n/-- **Simplified Loomis as a corollary** of the general theorem: the finite\nvon Neumann minimax `MinimaxLoomis.lam0 A = MinimaxLoomis.mu0 A` follows by\ninstantiating `loomis_value_eq` at the all-ones matrix `B = \ud835\udfd9`.\n\nThis is the canonical \"B = \ud835\udfd9 specialisation\" route recorded by the\n[[minimax_from_loomis]] blueprint node, and the **sole** route to the finite\nvon Neumann minimax: `MinimaxLoomis` keeps only the shared foundational layer\n(aggregates, attainment, weak duality, drop/extend infra), and its scalar\nequality is exported here rather than re-proved by a standalone induction. -/\n",
      "column": 1,
      "end": 38282,
      "kind": "theorem",
      "line": 886,
      "module": "EconCSLib.Math.Minimax.Loomis",
      "name": "muB0_one",
      "source_path": "/home/user/EconCSLib/EconCSLib/Math/Minimax/Loomis.lean",
      "start": 37534
    },
    {
      "body": "theorem minmax_from_general (A : I \u2192 J \u2192 \u211d) :\n    MinimaxLoomis.lam0 A = MinimaxLoomis.mu0 A := by\n  have h := loomis_value_eq A (fun _ _ => 1) IsPositive.one\n  rw [lamB0_one, muB0_one] at h\n  exact h\n\nend Loomis\n",
      "column": 1,
      "end": 38495,
      "kind": "theorem",
      "line": 900,
      "module": "EconCSLib.Math.Minimax.Loomis",
      "name": "minmax_from_general",
      "source_path": "/home/user/EconCSLib/EconCSLib/Math/Minimax/Loomis.lean",
      "start": 38282
    }
  ]
}
```

## Intent

- Lean is acting as a counterchecker only.
- Blank or flawed proofs are recorded as incompleteness, not inconsistency.
- Any new lemmata discovered here are proposals for review, not automatic edits.