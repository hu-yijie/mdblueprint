---
agent: graph-refactor-proposer
target:
  knowledge_root: ../EconCSLib/docs/knowledge
decision: proposals
created_at: "2026-06-15T14:36:26+00:00"
inputs:
  - skills/mdblueprint-graph-refactor-review/SKILL.md
  - docs/agent-contracts.md
  - docs/node-format.md
  - docs/topic-model.md
  - docs/lint.md
  - docs/publisher-and-dag.md
  - uv --cache-dir /tmp/uv-cache run python -m tools.knowledge.check ../EconCSLib/docs/knowledge
  - uv --cache-dir /tmp/uv-cache run mdblueprint-lint ../EconCSLib/docs/knowledge --json
  - uv --cache-dir /tmp/uv-cache run python -m tools.knowledge.stats ../EconCSLib/docs/knowledge --include-staged --json
  - uv --cache-dir /tmp/uv-cache run python -m tools.knowledge.refactor_pack ../EconCSLib/docs/knowledge --topic game_theory.zero_sum --include-staged
  - uv --cache-dir /tmp/uv-cache run python -m tools.knowledge.refactor_pack ../EconCSLib/docs/knowledge --target game_theory.strategic_game.zero_sum.von_neumann_minimax --include-staged
  - uv --cache-dir /tmp/uv-cache run python -m tools.knowledge.refactor_pack ../EconCSLib/docs/knowledge --target game_theory.strategic_game.zero_sum.core.strong_complementarity --include-staged
  - uv --cache-dir /tmp/uv-cache run python -m tools.knowledge.refactor_pack ../EconCSLib/docs/knowledge --target math.minimax.strong_complementarity --include-staged
summary: Whole-KB admitted+staged review found semantic refactor decisions, but no mechanical operation is safe without human review.
baseline:
  check: passed
  lint: findings
  stats: collected
formulation_impact:
  reviewed: true
  reason: Proposed actions include duplicate merge review, proof-route separation, and topic ownership decisions; graph reachability was checked against descendants and route nodes before excluding mechanical edits.
---

## Scope

This report covers the whole EconCSLib knowledge base in `admitted+staged` mode. Staged nodes were included as loaded graph nodes for dependency existence, reachability, overlap, topic, and formulation-impact analysis, but they remain non-admitted evidence and this report does not propose promotion.

No admitted or staged knowledge files were edited. The dry-run plan is intentionally empty because the concrete changes that would remove lint findings depend on semantic or topic-policy choices.

## Deterministic Baseline

Structural check passed with `0 error(s), 0 warning(s)`.

`mdblueprint-lint --json` reported 405 findings:

| code | count | level summary |
| --- | ---: | --- |
| `LINT_LEAN_KIND` | 237 | warning |
| `LINT_REDUNDANT_DEP` | 74 | info |
| `LINT_PROSE_DEP` | 50 | warning |
| `LINT_TOPIC_LEAN_ALIGNMENT` | 26 | warning |
| `LINT_FUZZY_DUP` | 7 | warning |
| `LINT_LEAN_MODULE_FRAGMENTED` | 4 | info |
| `LINT_STAGED_OVERLAP` | 3 | warning |
| `LINT_ORPHAN` | 2 | info |
| `LINT_TOPIC_CYCLE` | 2 | info |

Staged-inclusive stats found 535 nodes: 273 admitted and 262 staged. The largest reverse-dependency hot spots were `game_theory.strategic_game.nash_equilibrium` with 23 dependents, `game_theory.strategic_game.strategic_game` with 20, and `game_theory.strategic_game.zero_sum.core.value` with 20. The DAG depth was 14 with 3 orphans.

## Proposals

| proposal_id | kind | classification | targets | action | evidence | risk | validation |
| --- | --- | --- | --- | --- | --- | --- | --- |
| refactor-001 | merge-duplicate | semantic-review | [[node:game_theory.strategic_game.zero_sum.core.strong_complementarity]], [[node:math.minimax.strong_complementarity]] | Choose a canonical survivor for the matrix-game strong-complementarity theorem, likely the zero-sum core node, and preserve the LP proof-route detail from the math node before retiring or redirecting the duplicate. | `LINT_FUZZY_DUP` similarity 1.00; both nodes cite MFoGT Proposition 2.4.1(c); both link to `MatrixGame.exists_strong_complementary_pair`; target packs show no reverse dependents for either duplicate. | The math node carries the richer LP strong-complementarity proof route, while the zero-sum node has cleaner topic and Lean-module ownership. A deletion or merge without preserving that route would lose useful proof evidence. | Re-run both target `refactor_pack` commands, then run `uv --cache-dir /tmp/uv-cache run python -m tools.knowledge.refactor_report_check ../EconCSLib/docs/knowledge <report>` and, after any human-approved edit, `uv --cache-dir /tmp/uv-cache run python -m tools.knowledge.check ../EconCSLib/docs/knowledge` plus `mdblueprint-lint`. |
| refactor-002 | separate-proof-plan-route | semantic-review | [[node:game_theory.strategic_game.zero_sum.von_neumann_minimax]], [[node:math.minimax.minimax_from_loomis]], [[node:math.minimax.ordered_field_minimax]] | Do not satisfy the nine `LINT_PROSE_DEP` findings on the minimax theorem by copying proof-route references into theorem-level `uses`. Keep route dependencies on proof-plan nodes, and review whether the theorem body should use non-structural prose for alternate route discussion. | `game_theory.strategic_game.zero_sum.von_neumann_minimax` has `proved_via_plan: math.minimax.minimax_from_loomis` and `uses: []`; the selected plan uses [[node:math.minimax.loomis_theorem]] and [[node:game_theory.strategic_game.zero_sum.maximin_le_minimax]]; adding [[node:math.minimax.ordered_field_minimax]] to theorem `uses` would conflict with that node's existing dependency back to the theorem. | Treating every explanatory route reference as a theorem dependency would pollute the logical DAG and can introduce a cycle. Treating every warning as expository could hide a real missing prerequisite in other minimax nodes. | Re-run the minimax target pack and lint after a human decision. If body text is rewritten, dry-run it with explicit `replace-node-body`; otherwise keep the dry-run plan empty. |
| refactor-003 | needs-human-review | semantic-review | `game_theory.extensive_game`, `game_theory.strategic_game`, `game_theory.zero_sum` | Resolve topic ownership policy for the two game-theory child-topic cycles before moving topics or removing cross-topic dependencies. In particular, decide whether catalog nodes should carry ordinary `uses` edges to theorem entries or should be modeled as index/expository nodes. | `LINT_TOPIC_CYCLE` reports cycles between `game_theory.extensive_game` and `game_theory.strategic_game`, and between `game_theory.strategic_game` and `game_theory.zero_sum`. Deterministic edge extraction found `game_theory.extensive_game -> game_theory.strategic_game` caused by the staged finite-game catalog, `game_theory.strategic_game -> game_theory.extensive_game` caused by normal-form and SPE dependencies, `game_theory.zero_sum -> game_theory.strategic_game` caused by the staged finite-game catalog, and `game_theory.strategic_game -> game_theory.zero_sum` caused by ordinary zero-sum specialization dependencies. | A mechanical topic move may erase intentional mathematical ownership. A mechanical dependency removal may turn a real prerequisite into an expository link. Catalog nodes can distort topic cycles if treated like theorem dependencies. | Re-run `refactor_pack` for `game_theory`, `game_theory.zero_sum`, and any chosen catalog target. After policy choice, simulate exact topic or dependency operations with `refactor_dry_run --include-staged`. |
| refactor-004 | needs-human-review | semantic-review | [[node:game_theory.extensive_game.imperfect_information.spe_imperfect_information]], [[node:game_theory.extensive_game.perfect_information.subgame_perfect_equilibrium]], [[node:game_theory.extensive_game.perfect_information.kuhn_spe_existence_with_chance]], [[node:game_theory.extensive_game.perfect_information.kuhn_spe_existence_no_chance]], [[node:game_theory.extensive_game.perfect_information.zero_sum_perfect_information_value_with_chance]], [[node:game_theory.extensive_game.perfect_information.zero_sum_perfect_information_value_no_chance]] | Send the three staged/admitted overlap pairs to admission or node review rather than retiring staged nodes mechanically. The staged nodes appear to be chance or imperfect-information variants, not obvious duplicates. | `LINT_STAGED_OVERLAP` reports the three pairs; staged bodies explicitly distinguish imperfect information or chance from the admitted no-chance/perfect-information variants; scope mode includes staged nodes but does not admit them. | Fuzzy similarity is high because titles and statements share templates. Retiring staged nodes would likely discard intended generalizations; promoting them is outside this workflow. | Admission referee or node verifier should compare exact hypotheses, Lean status, and source spans. Re-run lint after any staged-node revision. |

## Refinement Pass

Semantic candidates were ranked ahead of lint-hygiene candidates. The duplicate strong-complementarity pair, proof-route modeling around the minimax theorem, topic-cycle policy, and staged/admitted overlap triage all affect mathematical ownership or proof-route semantics. Redundant-edge cleanup was therefore kept out of the dry-run plan until those decisions are made.

No proposal was reclassified to `mechanical-safe`. Broad Lean/topic divergence and Lean-kind findings were treated as alignment or Lean-link review work, not graph-safe refactors.

| signal | targets | why_not_proposed | follow_up |
| --- | --- | --- | --- |
| `LINT_FUZZY_DUP` | [[node:math.linear_programming.minimax_bridge.player_1_lp]], [[node:math.linear_programming.minimax_bridge.player_2_lp]] | Lower priority and likely a symmetric primal/dual pair rather than duplicate mathematical truth. | Node review can confirm whether titles should be made less similar. |
| `LINT_FUZZY_DUP` | Fair-division allocation and cardinal/ordinal instance pairs | Lower priority; divisible versus indivisible and cardinal versus ordinal variants are intentionally parallel formulations. | Review only if a fair-division owner wants taxonomy cleanup. |
| `LINT_STAGED_OVERLAP` | Three extensive-game staged/admitted pairs | Covered by refactor-004. | Admission or node review. |
| `LINT_TOPIC_CYCLE` | Game-theory child topics | Covered by refactor-003. | Human topic-policy decision before operations. |
| high-impact `LINT_PROSE_DEP` | [[node:game_theory.strategic_game.zero_sum.von_neumann_minimax]] | Covered by refactor-002. | Keep proof-route dependencies separate from theorem `uses`. |
| high-impact `LINT_PROSE_DEP` | [[node:foundation.cost.costm]], [[node:math.minimax.loomis_induction_proof]], [[node:math.minimax.minimax_from_loomis]] | Important but not promoted because many references are explanatory or proof-plan-route references; a body-aware node review is needed before adding dependencies. | A focused prose-dependency pass should classify each reference as logical, route-only, or expository. |
| `LINT_REDUNDANT_DEP` | 74 redundant-edge findings | Not promoted because many candidate removals sit inside the same semantic areas as duplicate, proof-plan, or catalog-policy questions. | After human decisions, run a dedicated redundant-edge cleanup with dry-run operations. |
| `LINT_TOPIC_LEAN_ALIGNMENT` and `LINT_LEAN_MODULE_FRAGMENTED` | 26 node warnings and 4 fragmented roots | Broad policy and Lean-alignment work, not mechanical graph cleanup. | Lean alignment or countercheck agent should decide whether to rehome, relink Lean modules, or mark divergence. |
| `LINT_LEAN_KIND` | 237 warnings | Lean declaration kind mismatch is a Lean-linking/alignment surface, not a dependency graph refactor. | Lean-link review should decide whether linked declarations are support theorems or wrong declarations. |
| high-degree hot spots | [[node:game_theory.strategic_game.nash_equilibrium]], [[node:game_theory.strategic_game.strategic_game]], [[node:game_theory.strategic_game.zero_sum.core.value]] | Expected foundational nodes; no pack evidence showed an overbroad formulation in this run. | Revisit if descendants fail alignment or if a topic-specific refactor targets these foundations. |
| `LINT_ORPHAN` | [[node:foundation.profile.deviate]], [[node:math.order.sup_inf_choice_function_identity]] | Lower priority. One is an admitted compatibility layer and one is staged. | Node owner can decide whether to add legitimate dependencies or keep them standalone. |

## Generality Gate

For refactor-001, the most useful general form appears to be the zero-sum matrix-game strong-complementarity theorem. The LP strong-complementarity theorem is already separate as [[node:math.linear_programming.strong_complementarity]], so the matrix-game theorem should not be duplicated under `math.minimax` solely because its proof route uses LP. The open question is how to preserve the richer proof explanation from [[node:math.minimax.strong_complementarity]] if [[node:game_theory.strategic_game.zero_sum.core.strong_complementarity]] is the canonical survivor.

For refactor-003, the generality question is topical rather than mathematical: zero-sum games are special strategic games, while extensive-game normal forms and SPE definitions genuinely depend on strategic-game notions. Catalog nodes are less clear, because they aggregate results across topics and may create browsing cycles without representing a theorem dependency.

For refactor-004, the staged nodes look like generalizations or variants rather than duplicates: chance versus no-chance and imperfect-information versus perfect-information are mathematical hypothesis changes. They should be reviewed as staged variants, not mechanically merged.

## Formulation-Sensitive Impact

Refactor-001 has no loaded reverse dependents for either duplicate target in the refactor packs, so immediate descendant breakage is low. The risk is not downstream reachability; it is loss of proof-route detail, source interpretation, and topic ownership if one node is retired without preserving the useful body content.

Refactor-002 directly concerns a high-impact theorem. The minimax target has descendants including [[node:game_theory.strategic_game.zero_sum.matrix_game_nash_equilibrium]], [[node:game_theory.strategic_game.zero_sum.operators.value_operator_properties]], [[node:math.minimax.common_guarantee_value]], [[node:math.minimax.ville_theorem]], and [[node:math.minimax.strong_complementarity]]. These descendants rely on the theorem statement, not on every route reference named in its explanatory body. Adding all route references to theorem `uses` would expand every descendant's ancestor set and can create a cycle through [[node:math.minimax.ordered_field_minimax]]. The least-bloated response is to keep route dependencies on proof-plan nodes.

Refactor-003 affects only topic projection unless ordinary `uses` edges are changed. The node-level DAG is acyclic. Topic-cycle resolution should first classify catalog dependencies and then decide whether any topic membership or dependency operation is warranted.

Refactor-004 affects staged candidates only. Because staged nodes are non-admitted and the overlap pairs change hypotheses, no deletion, merge, or promotion is proposed here.

## Request Files

No request files were written. Every target id discussed in the proposals already exists in the admitted or staged graph, and staged-node admission or promotion belongs to the admission workflow.

If refactor-001 leads to a new bridge or proof-route summary node rather than a direct merge, that should be requested explicitly after human review.

## Human Decisions

Human review is needed to choose the canonical strong-complementarity node and preserve the proof-route evidence.

Human review is needed to decide how theorem bodies should mention alternate proof routes without turning those references into theorem-level logical dependencies.

Human review is needed for game-theory topic-cycle policy, especially whether catalog nodes should have ordinary `uses` edges.

Admission or node review is needed for the three staged/admitted overlap pairs.
