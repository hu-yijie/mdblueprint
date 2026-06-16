---
agent: lean-adjudicator
role: lean-vs-authored-adjudicator
skill: mdblueprint-lean-adjudicate
created_at: "2026-06-15T14:52:12Z"
knowledge_root: ../EconCSLib/docs/knowledge
lean_source_root: ../EconCSLib
decision: adjudication
inputs:
  - runs/refactor-countercheck/20260615T143626Z/reports/refactor-report.md
  - runs/refactor-countercheck/20260615T143626Z/dry-runs/refactor-dry-run.json
  - runs/refactor-countercheck/20260615T143626Z/countercheck/pairs.json
  - runs/refactor-countercheck/20260615T143626Z/countercheck/skipped.json
  - runs/refactor-countercheck/20260615T143626Z/countercheck/summary.json
---

# Lean Adjudication Report

## Executive Decision

The empty dry-run remains the right mechanical result. No admitted or staged
knowledge file should be edited automatically from this run.

One substantive authored-graph issue is accepted: the two strong
complementarity nodes are a true many-to-one duplicate around the same Lean
theorem. The correct next step is human review of the canonical survivor and
preservation of the richer proof-route evidence, not an automatic deletion.

Most raw Lean countercheck mismatches are false abends caused by namespace
qualification, file-level helper leakage, sibling theorem leakage, proof-plan
granularity, or authored conceptual dependencies that the heuristic extractor
cannot map to node ids.

Several extensive-game and ordered-field cases remain review cases, not
accepted discrepancies. In particular, the staged with-chance value node appears
stronger than the extracted Lean fact, and the ordered-field minimax node has an
authored edge to the real minimax theorem even though the Lean proof route is
independent.

## Factual Extraction Summary

The countercheck bundle contains 13 node/file pairs and 2 skipped staged nodes.
The dry-run applied no operations, changed no nodes, and left the graph at 535
nodes and 840 edges.

The countercheck summary reported:

| signal | count |
| --- | ---: |
| pairs | 13 |
| nodes with missing declarations | 11 |
| nodes with extra declarations | 13 |
| nodes with missing uses | 9 |
| nodes with extra uses | 10 |
| skipped candidates | 2 |

These counts are factual extractor outputs, not adjudicated discrepancy counts.
Every countercheck used the heuristic method. The most common failure mode is
that the extractor reports local names such as `minimax_theorem`,
`exists_strong_complementary_pair`, `loomis_theorem`, `optimal`, or
`value_prop`, while authored nodes record namespaced declarations such as
`MatrixGame.minimax_theorem`, `MatrixGame.exists_strong_complementary_pair`,
`Loomis.loomis_theorem`, `SkewSymmetric.optimal`, or
`ZeroSumChance.GameTree.value_prop`.

## Node-To-Theorem Mapping

| node | authored declarations | Lean facts seen | mapping judgment |
| --- | --- | --- | --- |
| `game_theory.strategic_game.zero_sum.maximin_le_minimax` | `MatrixGame.maximin_le_minimax` | `maximin_le_minimax` plus `IsMaximin`, `IsMinimax`, `IsValue`, sibling minimax theorems | Valid declaration mapping; raw missing/extra declaration alarms are namespace and sibling leakage. |
| `game_theory.strategic_game.zero_sum.von_neumann_minimax` | `MatrixGame.maximin_le_minimax`, `MatrixGame.minimax_theorem`, `MatrixGame.minimax_optimal_strategies` | same local theorem names plus value definitions in `MatrixGame.lean` | Valid wrapper mapping; no theorem-level dependency should be added merely because the body discusses routes. |
| `math.minimax.loomis_theorem` | `Loomis.loomis_value_eq`, `Loomis.loomis_theorem` | `loomis_value_eq`, `loomis_theorem`, many positive-B helpers | Valid mapping; helper declarations are proof internals. |
| `math.minimax.minimax_from_loomis` | `MinimaxLoomis.*` helpers, `Loomis.minmax_from_general`, `Loomis.lamB0_one`, `Loomis.muB0_one` | cross-module Loomis and MinimaxLoomis helpers | Valid proof-plan mapping; missing uses reflect proof-plan granularity, not a node theorem mismatch. |
| `math.minimax.ordered_field_minimax` | `Minimax.minimax`, `SkewSymmetric.optimal` | `Minimax.minimax`, `SkewSymmetric.optimal`, symmetrisation helpers | Valid Lean mapping. The authored dependency on real minimax needs review because Lean proves the ordered-field theorem independently. |
| `game_theory.strategic_game.zero_sum.core.strong_complementarity` | `MatrixGame.exists_strong_complementary_pair` | `exists_strong_complementary_pair` | Valid mapping, but duplicated with the math minimax node and less explicit about the LP proof route. |
| `math.minimax.strong_complementarity` | `MatrixGame.exists_strong_complementary_pair` | `exists_strong_complementary_pair` | Valid mapping, duplicated with the zero-sum core node and richer in proof-route dependencies. |
| `game_theory.extensive_game.perfect_information.kuhn_spe_existence_no_chance` | `optStrategy_isSubgamePerfect`, `Kuhn_exists_SPE` | matched declarations plus local game-tree helpers | Valid mapping; helper leakage is false abend. |
| `game_theory.extensive_game.perfect_information.subgame_perfect_equilibrium` | `IsSubgamePerfect` | matched definition plus local `Strategy` and `IVariant` machinery | Valid lower-level Lean definition; missing authored conceptual uses are not proof of inconsistency. |
| `game_theory.extensive_game.perfect_information.zero_sum_perfect_information_value_no_chance` | `GameTree.zermelo_determinacy`, `GameTree.value0_eq_outcome_and_zeroSum` | local `zermelo_determinacy`, `value0_eq_outcome_and_zeroSum`, zero-sum helpers | Valid namespace mapping; relation to the authored strategic-game value node still needs review because the Lean theorem is a game-tree security statement. |
| `game_theory.extensive_game.perfect_information.zero_sum_perfect_information_value_with_chance` | `ZeroSumChance.GameTree`, `ZeroSumChance.GameTree.value`, `ZeroSumChance.GameTree.DStrategy`, `ZeroSumChance.GameTree.outcome`, `ZeroSumChance.GameTree.value_prop` | local `GameTree`, `value`, `DStrategy`, `outcome`, `value_prop` | Namespace mapping is valid, but the staged claim is stronger than the extracted one-sided Lean theorem. Needs admission review. |
| `game_theory.extensive_game.perfect_information.kuhn_spe_existence_with_chance` | no Lean metadata in skipped bundle | skipped | Needs review; no Lean countercheck fact was available. |
| `game_theory.extensive_game.imperfect_information.spe_imperfect_information` | no Lean metadata in skipped bundle | skipped | Needs review; no Lean countercheck fact was available. |

In the table above, `value0` is an ASCII rendering of Lean declarations whose
actual name uses subscript-zero notation.

## Discrepancy Table

| id | cases | extractor signal | adjudication | reason |
| --- | --- | --- | --- | --- |
| D1 | MatrixGame, Loomis, Minimax, SkewSymmetric, GameTree, ZeroSumChance nodes | missing namespaced declarations, extra local declarations | `reject` / `false_abend` | The Lean declarations exist under namespaces; the extractor compared local names against authored qualified names. |
| D2 | MatrixGame, Loomis, GameTreeSPE, Zermelo, with-chance modules | extra declarations and extra uses | `reject` / `false_abend` | The extractor is file-scoped and pulls helper definitions, sibling theorems, accessors, notation-like declarations, and proof internals into node-level comparisons. |
| D3 | `von_neumann_minimax`, `loomis_theorem`, `minimax_from_loomis` | missing proof-route uses | `reject` / `false_abend` | Proof-plan and route nodes are intentionally coarser than individual Lean helper declarations. These should not be copied into theorem `uses`. |
| D4 | two strong complementarity nodes | same Lean theorem for two authored nodes | `accept` / `true_discrepancy` | This is a real many-to-one authored-node duplication. The semantic statement is the same theorem; the difference is topic ownership and proof-route detail. |
| D5 | `math.minimax.ordered_field_minimax` | authored dependency on `von_neumann_minimax` not used by Lean proof | `needs_review` / `needs_review` | The Lean route is independent via symmetrisation and `SkewSymmetric.optimal`. The current edge may be conceptual rather than logical. |
| D6 | extensive-game staged/admitted overlap pairs | high textual overlap, Lean metadata uneven | `needs_review` / `needs_review` | The staged nodes change hypotheses, especially chance and imperfect information. They are not safe duplicate merges. |
| D7 | `zero_sum_perfect_information_value_with_chance` | staged claim stronger than extracted Lean fact | `needs_review` / `needs_review` | Extracted Lean proves `value_prop`, a one-sided lower-bound statement for `DStrategy`; the node claims value and pure optimal strategies for both players. |
| D8 | skipped with-chance SPE and imperfect-information SPE nodes | no Lean metadata | `needs_review` / `needs_review` | Absence of Lean metadata is not an inconsistency, but these staged nodes cannot be cleared by this Lean countercheck. |

## Final Judgment Table

In this table, `accept` means the reported mismatch is semantically real;
`reject` means it is a false abend from the countercheck; `needs_review` means
the available facts are insufficient for an automatic verdict.

| node | related proposal | verdict | final label | confidence | notes |
| --- | --- | --- | --- | ---: | --- |
| `game_theory.strategic_game.zero_sum.maximin_le_minimax` | refactor-002 | reject | `false_abend` | 0.84 | Qualified declaration exists; helper/value-definition leakage should not drive edits. |
| `game_theory.strategic_game.zero_sum.von_neumann_minimax` | refactor-002 | reject | `false_abend` | 0.87 | The theorem body discusses proof routes, but theorem `uses: []` is intentional with `proved_via_plan`. |
| `math.minimax.loomis_theorem` | refactor-002 | reject | `false_abend` | 0.80 | Missing uses are proof-plan granularity; extra uses are helper lemmas in the Loomis file. |
| `math.minimax.minimax_from_loomis` | refactor-002 | reject | `false_abend` | 0.79 | Cross-module proof-plan mapping is valid; the extractor cannot map every helper to blueprint route nodes. |
| `math.minimax.ordered_field_minimax` | refactor-002 | needs_review | `needs_review` | 0.64 | Lean proof is independent of real minimax; review whether the current authored edge is logical or expository. |
| `game_theory.strategic_game.zero_sum.core.strong_complementarity` | refactor-001 | accept | `true_discrepancy` | 0.88 | Same Lean theorem as the math minimax node; likely canonical topic home, but missing some proof-route detail. |
| `math.minimax.strong_complementarity` | refactor-001 | accept | `true_discrepancy` | 0.88 | Same Lean theorem as the zero-sum core node; preserves richer LP route detail. |
| `game_theory.extensive_game.perfect_information.kuhn_spe_existence_no_chance` | refactor-004 | reject | `false_abend` | 0.80 | Declaration mapping is valid; local GameTree helpers are not separate blueprint dependencies. |
| `game_theory.extensive_game.perfect_information.subgame_perfect_equilibrium` | refactor-004 | reject | `false_abend` | 0.68 | Lean encodes SPE directly using unilateral variants; absence of the generic Nash node is a granularity issue. |
| `game_theory.extensive_game.perfect_information.zero_sum_perfect_information_value_no_chance` | refactor-004 | needs_review | `needs_review` | 0.60 | Namespaced declarations exist, but the authored strategic-value relation is stronger/coarser than the extracted game-tree security theorem. |
| `game_theory.extensive_game.perfect_information.zero_sum_perfect_information_value_with_chance` | refactor-004 | needs_review | `needs_review` | 0.61 | Staged node claims a full value theorem; extracted Lean shows a one-sided rational chance-tree result. |
| `game_theory.extensive_game.perfect_information.kuhn_spe_existence_with_chance` | refactor-004 | needs_review | `needs_review` | 0.90 | Skipped because no Lean metadata; keep in admission/node review. |
| `game_theory.extensive_game.imperfect_information.spe_imperfect_information` | refactor-004 | needs_review | `needs_review` | 0.90 | Skipped because no Lean metadata; keep in admission/node review. |

## Final Filter

| label | items | action |
| --- | --- | --- |
| `true_discrepancy` | Strong complementarity is represented by both `game_theory.strategic_game.zero_sum.core.strong_complementarity` and `math.minimax.strong_complementarity`, both pointing at `MatrixGame.exists_strong_complementary_pair`. | Accept refactor-001 as a real duplicate/many-to-one mapping. Human review should choose the canonical node and preserve LP proof-route evidence before any merge or retirement. |
| `false_abend` | Qualified-name mismatches; helper lemma leakage; sibling theorem leakage; proof-plan granularity around Loomis and finite minimax; GameTree helper dependencies around SPE and Kuhn no-chance. | Reject as grounds for automatic graph edits. Do not add all mentioned route references to theorem `uses`, and do not turn file-local helper declarations into blueprint dependencies. |
| `needs_review` | Ordered-field minimax dependency edge; no-chance extensive-game value alignment with strategic-game value; staged with-chance value theorem strength; skipped staged with-chance/imperfect-information candidates; game-theory topic policy from refactor-003. | Keep the dry-run empty. Route these to node/admission/topic review rather than graph refactor automation. |

## Proposal Adjudication

| proposal | decision | final label | rationale |
| --- | --- | --- | --- |
| refactor-001 | accept as semantic issue, not as automatic edit | `true_discrepancy` | The Lean mapping confirms a real duplicate theorem node. The merge direction remains a human choice because one node has better topic ownership and the other has better proof-route detail. |
| refactor-002 | accept the no-automatic-dependency policy | `false_abend` for raw alarms, `needs_review` for ordered-field edge | The Lean data supports keeping proof routes on proof-plan nodes. The ordered-field node's existing edge to finite real minimax should be reviewed separately. |
| refactor-003 | no Lean verdict | `needs_review` | Topic cycles and catalog-node policy are not resolved by this Lean countercheck. |
| refactor-004 | accept the review-only classification | `needs_review` | Staged/admitted overlaps are hypothesis variants. The with-chance Lean evidence is not strong enough to justify mechanical promotion, merge, or retirement. |

## Recommended Follow-Up

1. Run a focused node review for the two strong complementarity nodes. The
   likely target is a single zero-sum-owned theorem node that keeps the LP
   strong-complementarity proof route.
2. Review whether `math.minimax.ordered_field_minimax` should keep
   `game_theory.strategic_game.zero_sum.von_neumann_minimax` in ordinary
   `uses`, or mention it only in prose.
3. Send the staged extensive-game nodes to admission review. In particular,
   check whether `zero_sum_perfect_information_value_with_chance` should weaken
   its claim, add the missing second-player theorem, or stay staged until the
   Lean development proves the full value statement.
4. Treat namespace/local-name mismatches in the counterchecker as tool feedback,
   not as blueprint defects.
