---
agent: lean-countercheck
node_id: game_theory.extensive_game.perfect_information.zero_sum_perfect_information_value_with_chance
created_at: "2026-06-15T14:48:36+00:00"
---

# Lean Countercheck: Value In Finite Zero-Sum Perfect-Information Games (With Chance)

## Inputs

- node file: `/home/user/EconCSLib/docs/knowledge/staged/extensive_game/zero_sum_perfect_information_value_with_chance.md`
- lean file: `/home/user/EconCSLib/EconCSLib/GameTheory/ExtensiveGame/ZeroSumGameTreeWithChance.lean`
- corpus root: `/home/user/EconCSLib`

## Method Status

- heuristic: used

## Matched Declarations

- `(none)`

## Missing Declarations

- `ZeroSumChance.GameTree`
- `ZeroSumChance.GameTree.value`
- `ZeroSumChance.GameTree.DStrategy`
- `ZeroSumChance.GameTree.outcome`
- `ZeroSumChance.GameTree.value_prop`

## Extra Declarations

- `size`
- `size_pos`
- `Strategy`
- `value`
- `DStrategy`
- `outcome`
- `value_prop`
- `PUInterval`

## Node Uses vs Extracted Dependencies

- node uses: `game_theory.extensive_game.perfect_information.zero_sum_perfect_information_value_no_chance`, `game_theory.extensive_game.core.nature_player`, `game_theory.strategic_game.zero_sum.core.value`
- missing uses: `game_theory.extensive_game.perfect_information.zero_sum_perfect_information_value_no_chance`, `game_theory.extensive_game.core.nature_player`, `game_theory.strategic_game.zero_sum.core.value`
- extra uses: `DStrategy`, `Strategy`

## Raw Snapshot

```json
{
  "corpus_root": "/home/user/EconCSLib",
  "dependencies": [
    {
      "kind": "hard",
      "module": "EconCSLib.GameTheory.ExtensiveGame.ZeroSumGameTreeWithChance",
      "source": "size_pos",
      "target": "Strategy"
    },
    {
      "kind": "hard",
      "module": "EconCSLib.GameTheory.ExtensiveGame.ZeroSumGameTreeWithChance",
      "source": "DStrategy",
      "target": "Strategy"
    },
    {
      "kind": "hard",
      "module": "EconCSLib.GameTheory.ExtensiveGame.ZeroSumGameTreeWithChance",
      "source": "outcome",
      "target": "DStrategy"
    },
    {
      "kind": "hard",
      "module": "EconCSLib.GameTheory.ExtensiveGame.ZeroSumGameTreeWithChance",
      "source": "outcome",
      "target": "Strategy"
    },
    {
      "kind": "hard",
      "module": "EconCSLib.GameTheory.ExtensiveGame.ZeroSumGameTreeWithChance",
      "source": "value_prop",
      "target": "DStrategy"
    },
    {
      "kind": "hard",
      "module": "EconCSLib.GameTheory.ExtensiveGame.ZeroSumGameTreeWithChance",
      "source": "value_prop",
      "target": "Strategy"
    }
  ],
  "lean_file": "/home/user/EconCSLib/EconCSLib/GameTheory/ExtensiveGame/ZeroSumGameTreeWithChance.lean",
  "method_status": {
    "heuristic": "used"
  },
  "node": {
    "body": "# Value In Finite Zero-Sum Perfect-Information Games (With Chance)\n\nEvery finite zero-sum perfect-information game **with Nature / chance moves**\nhas a value, and both players have pure optimal strategies. At a chance node,\nthe value equals the probability-weighted average of the successor subgame\nvalues.\n\n## Proof Sketch\n\nSame forward / backward induction as\n[[zero_sum_perfect_information_value_no_chance]], with one extra case: at a\nNature node the value is the probability-weighted expectation over the\nsuccessor values. The minimax / maximin equality at player nodes is unaffected\nbecause expectation is linear and player choice still optimizes over a finite\nset.\n\n## Lean status\n\nImplemented in `EconCSLib.ExtensiveGame.ZeroSumGameTreeWithChance` (EG-L6, #220).\nThe key declarations are:\n\n- `ZeroSumChance.GameTree` \u2014 binary game tree with `Leaf`, `Pnode`, `Nnode`.\n- `ZeroSumChance.GameTree.value` \u2014 backward-induction value (computable).\n- `ZeroSumChance.GameTree.DStrategy` \u2014 A's dominant strategy.\n- `ZeroSumChance.GameTree.outcome` \u2014 payoff under a strategy pair.\n- `ZeroSumChance.GameTree.value_prop` \u2014 `t.value \u2264 t.outcome DStrategy SB`.\n\nThe \u211a-valued port requires no vNM theorem; rational arithmetic handles chance\naveraging directly. The fully general n-player + arbitrary utility version\nremains in `EconCSLib.ExtensiveGame.StochasticGameTree` and is blocked on\nvNM (EG-L3 #181).\n\n## References\n\n- [MFoGT, Prop. 6.2.5] Laraki, Renault, and Sorin, *Mathematical Foundations of Game Theory*. Original \"with or without Nature\" form.",
    "file_path": "/home/user/EconCSLib/docs/knowledge/staged/extensive_game/zero_sum_perfect_information_value_with_chance.md",
    "id": "game_theory.extensive_game.perfect_information.zero_sum_perfect_information_value_with_chance",
    "kind": "theorem",
    "lean": {
      "declarations": [
        "ZeroSumChance.GameTree",
        "ZeroSumChance.GameTree.value",
        "ZeroSumChance.GameTree.DStrategy",
        "ZeroSumChance.GameTree.outcome",
        "ZeroSumChance.GameTree.value_prop"
      ],
      "modules": [
        "EconCSLib.GameTheory.ExtensiveGame.ZeroSumGameTreeWithChance"
      ],
      "repository": null
    },
    "status": "staged",
    "tags": [
      "extensive-game",
      "zero-sum",
      "value",
      "chance"
    ],
    "title": "Value In Finite Zero-Sum Perfect-Information Games (With Chance)",
    "uses": [
      "game_theory.extensive_game.perfect_information.zero_sum_perfect_information_value_no_chance",
      "game_theory.extensive_game.core.nature_player",
      "game_theory.strategic_game.zero_sum.core.value"
    ]
  },
  "source_root": "/home/user/EconCSLib",
  "theorems": [
    {
      "body": "def size : GameTree \u2192 \u2115\n  | Leaf _      => 1\n  | Pnode _ L R => L.size + R.size\n  | Nnode _ L R => L.size + R.size\n\n/-- Every game tree has positive size. -/\n",
      "column": 1,
      "end": 3901,
      "kind": "def",
      "line": 102,
      "module": "EconCSLib.GameTheory.ExtensiveGame.ZeroSumGameTreeWithChance",
      "name": "size",
      "source_path": "/home/user/EconCSLib/EconCSLib/GameTheory/ExtensiveGame/ZeroSumGameTreeWithChance.lean",
      "start": 3743
    },
    {
      "body": "lemma size_pos (t : GameTree) : 1 \u2264 t.size := by\n  induction t with\n  | Leaf _      => simp [size]\n  | Pnode _ L R => simp [size]; linarith\n  | Nnode _ L R => simp [size]; linarith\n\n/-! ### Strategies and value -/\n\n/-- A pure strategy is a function that, given a player's decision node, selects\n    one of the two branches. `Strategy \u225d GameTree \u2192 GameTree \u2192 Select`. -/\n",
      "column": 1,
      "end": 4271,
      "kind": "lemma",
      "line": 108,
      "module": "EconCSLib.GameTheory.ExtensiveGame.ZeroSumGameTreeWithChance",
      "name": "size_pos",
      "source_path": "/home/user/EconCSLib/EconCSLib/GameTheory/ExtensiveGame/ZeroSumGameTreeWithChance.lean",
      "start": 3901
    },
    {
      "body": "abbrev Strategy := GameTree \u2192 GameTree \u2192 Select\n\n/-- The backward-induction value of the game tree for player A.\n\n    * A-node: A maximizes, so we take the max of both children's values.\n    * B-node: B minimizes, so we take the min of both children's values.\n    * Nature node: probability-weighted average (rational arithmetic). -/\n",
      "column": 1,
      "end": 4605,
      "kind": "abbrev",
      "line": 118,
      "module": "EconCSLib.GameTheory.ExtensiveGame.ZeroSumGameTreeWithChance",
      "name": "Strategy",
      "source_path": "/home/user/EconCSLib/EconCSLib/GameTheory/ExtensiveGame/ZeroSumGameTreeWithChance.lean",
      "start": 4271
    },
    {
      "body": "def value : GameTree \u2192 \u211a\n  | Leaf r      => r\n  | Pnode p L R => match p with\n    | .A => max L.value R.value\n    | .B => min L.value R.value\n  | Nnode prob L R => prob * L.value + (1 - prob) * R.value\n\n/-- **A's dominant strategy**: at each A-node, move to whichever child has the\n    higher value; ties go left. -/\n",
      "column": 1,
      "end": 4922,
      "kind": "def",
      "line": 125,
      "module": "EconCSLib.GameTheory.ExtensiveGame.ZeroSumGameTreeWithChance",
      "name": "value",
      "source_path": "/home/user/EconCSLib/EconCSLib/GameTheory/ExtensiveGame/ZeroSumGameTreeWithChance.lean",
      "start": 4605
    },
    {
      "body": "def DStrategy : Strategy :=\n  fun L R => if L.value < R.value then .r else .l\n\n/-! ### Outcome under a strategy pair -/\n\n/-- The realized payoff for player A when A plays `SA` and B plays `SB`.\n\n    Nature's moves are resolved by their fixed probabilities. -/\n",
      "column": 1,
      "end": 5182,
      "kind": "def",
      "line": 134,
      "module": "EconCSLib.GameTheory.ExtensiveGame.ZeroSumGameTreeWithChance",
      "name": "DStrategy",
      "source_path": "/home/user/EconCSLib/EconCSLib/GameTheory/ExtensiveGame/ZeroSumGameTreeWithChance.lean",
      "start": 4922
    },
    {
      "body": "def outcome (SA SB : Strategy) : GameTree \u2192 \u211a\n  | Leaf r      => r\n  | Pnode p L R => match p with\n    | .A => match SA L R with\n      | .l => outcome SA SB L\n      | .r => outcome SA SB R\n    | .B => match SB L R with\n      | .l => outcome SA SB L\n      | .r => outcome SA SB R\n  | Nnode prob L R => prob * outcome SA SB L + (1 - prob) * outcome SA SB R\n\n/-! ### Main theorem -/\n\n/-- **Soundness of `DStrategy`**: the backward-induction value is a lower bound\n    on the outcome A achieves by following `DStrategy`, regardless of how B plays.\n\n    Formally: for every B-strategy `SB` and game tree `t`,\n    `t.value \u2264 t.outcome DStrategy SB`. -/\n",
      "column": 1,
      "end": 5829,
      "kind": "def",
      "line": 142,
      "module": "EconCSLib.GameTheory.ExtensiveGame.ZeroSumGameTreeWithChance",
      "name": "outcome",
      "source_path": "/home/user/EconCSLib/EconCSLib/GameTheory/ExtensiveGame/ZeroSumGameTreeWithChance.lean",
      "start": 5182
    },
    {
      "body": "theorem value_prop (SB : Strategy) {t : GameTree} : t.value \u2264 t.outcome DStrategy SB := by\n  induction t with\n  | Leaf r =>\n    simp [outcome, value]\n  | Pnode p L R HL HR =>\n    match p with\n    | Player.A =>\n      rw [value, outcome, DStrategy]\n      split_ifs with h\n      \u00b7 -- DStrategy picked R (L.value < R.value); goal: max L.value R.value \u2264 outcome \u2026 R\n        exact (max_le (le_of_lt h |>.trans HR) HR)\n      \u00b7 -- DStrategy picked L (\u00ac L.value < R.value, i.e. R.value \u2264 L.value)\n        -- goal: max L.value R.value \u2264 outcome \u2026 L\n        exact (max_le HL (not_lt.mp h |>.trans HL))\n    | Player.B =>\n      rw [value, outcome]\n      cases SB L R\n      \u00b7 -- B chose L\n        exact min_le_left L.value R.value |>.trans HL\n      \u00b7 -- B chose R\n        exact min_le_right L.value R.value |>.trans HR\n  | Nnode prob L R HL HR =>\n    rw [outcome, value]\n    have hpL : (prob : \u211a) * L.value \u2264 prob * outcome DStrategy SB L :=\n      mul_le_mul_of_nonneg_left HL prob.2.1\n    have hpR : (1 - prob) * R.value \u2264 (1 - prob) * outcome DStrategy SB R :=\n      mul_le_mul_of_nonneg_left HR (by linarith [prob.2.2])\n    linarith\n\nend GameTree\n\n/-! ### Notation helpers -/\n\n/-- Coerce a rational `a` to the unit-interval subtype, defaulting to `\u27e80, \u2026\u27e9` if\n    `a \u2209 [0, 1]`. -/\n",
      "column": 1,
      "end": 7098,
      "kind": "theorem",
      "line": 160,
      "module": "EconCSLib.GameTheory.ExtensiveGame.ZeroSumGameTreeWithChance",
      "name": "value_prop",
      "source_path": "/home/user/EconCSLib/EconCSLib/GameTheory/ExtensiveGame/ZeroSumGameTreeWithChance.lean",
      "start": 5829
    },
    {
      "body": "def PUInterval (a : \u211a) : Set.Icc (0 : \u211a) 1 :=\n  if h : 0 \u2264 a \u2227 a \u2264 1 then \u27e8a, h\u27e9 else \u27e80, le_refl _, zero_le_one\u27e9\n\nnotation:100 \"[L \" v:101 \"]\"               => GameTree.Leaf v\nnotation:100 \"[N \" p:100 \", \" L:100 \", \" R:100 \"]\" => GameTree.Nnode (PUInterval p) L R\nnotation:100 \"[A \" L:100 \", \" R:100 \"]\"   => GameTree.Pnode Player.A L R\nnotation:100 \"[B \" L:100 \", \" R:100 \"]\"   => GameTree.Pnode Player.B L R\n\n/-! ### Quick smoke test -/\n\nsection Example\n\n/-- A small example: B node with an A subgame on the left and a leaf on the right. -/\nprivate def T : GameTree := [B [A [L 10], [L (-10)]] , [L 3]]\n\n/-- T with a 50/50 Nature node at the root. -/\nprivate def T' : GameTree := [N (1/2 : \u211a), T, T]\n\n#eval T.value   -- expected: 3\n#eval T'.value  -- expected: 3\n\nend Example\n\nend ZeroSumChance\n",
      "column": 1,
      "end": 7896,
      "kind": "def",
      "line": 195,
      "module": "EconCSLib.GameTheory.ExtensiveGame.ZeroSumGameTreeWithChance",
      "name": "PUInterval",
      "source_path": "/home/user/EconCSLib/EconCSLib/GameTheory/ExtensiveGame/ZeroSumGameTreeWithChance.lean",
      "start": 7098
    }
  ]
}
```

## Intent

- Lean is acting as a counterchecker only.
- Blank or flawed proofs are recorded as incompleteness, not inconsistency.
- Any new lemmata discovered here are proposals for review, not automatic edits.