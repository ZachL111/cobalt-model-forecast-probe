# Review Journal

I treated `cobalt-model-forecast-probe` as a project where the smallest useful behavior should still be inspectable.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its ml utilities focus without claiming live deployment or external usage.

## Cases

- `baseline`: `feature drift`, score 113, lane `watch`
- `stress`: `window width`, score 103, lane `hold`
- `edge`: `metric stability`, score 176, lane `ship`
- `recovery`: `explainability`, score 206, lane `ship`
- `stale`: `feature drift`, score 134, lane `watch`

## Note

The repository should be understandable without pretending it is larger than it is.
