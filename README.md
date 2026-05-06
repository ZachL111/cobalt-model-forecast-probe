# cobalt-model-forecast-probe

`cobalt-model-forecast-probe` explores ml utilities with a small Haskell codebase and local fixtures. The technical goal is to create a Haskell reference implementation for forecast workflows, centered on incremental indexing, append-only fixtures, and checkpoint recovery checks.

## Reason For The Project

The project exists to keep a narrow engineering decision visible and testable. For this repo, that decision is how feature drift and metric stability should influence a review result.

## Cobalt Model Forecast Probe Review Notes

Start with `explainability` and `window width`. Those cases create the widest score spread in this repo, so they are the best quick check when the model changes.

## What It Does

- `fixtures/domain_review.csv` adds cases for feature drift and window width.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/cobalt-model-forecast-walkthrough.md` walks through the case spread.
- The Haskell code includes a review path for `explainability` and `window width`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## How It Is Put Together

The implementation keeps the scoring rule plain: reward signal and confidence, preserve slack, penalize drag, then classify the result into a review lane.

The Haskell implementation avoids hidden state so fixture changes are easy to reason about.

## Run It

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Check It

The same command runs the local verification path. The highest-scoring domain case is `recovery` at 206, which lands in `ship`. The most cautious case is `stress` at 103, which lands in `hold`.

## Boundaries

No external service is required. A deeper version would add more negative cases and a clearer boundary around invalid input.
