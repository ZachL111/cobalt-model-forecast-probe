# Cobalt Model Forecast Probe Walkthrough

This note is the quickest way to read the extra review model in `cobalt-model-forecast-probe`.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | feature drift | 113 | watch |
| stress | window width | 103 | hold |
| edge | metric stability | 176 | ship |
| recovery | explainability | 206 | ship |
| stale | feature drift | 134 | watch |

Start with `recovery` and `stress`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

The useful comparison is `explainability` against `window width`, not the raw score alone.
