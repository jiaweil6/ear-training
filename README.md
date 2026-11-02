# Interval Ear Trainer

A small web app for practicing interval recognition, from a minor 2nd up to an octave.

## Features

- **Pick your intervals.** Toggle any of the 12 intervals (m2, M2, m3, M3, P4, TT, P5, m6, M6, m7, M7, P8), or use the quick picks (All, Perfect, 2nds & 3rds, 6ths & 7ths, Clear).
- **Three directions:** ascending, descending, and simultaneous. Choose one or more; with several, each question uses one at random.
- **Rounds of 10 questions.** Intervals are drawn evenly from your selection.
- **Replay freely.** Each question can be played as many times as you like before answering.
- **No spoilers.** A wrong answer turns red and is crossed out, but the right answer is not revealed. Keep listening and guessing until you find it, and it turns green.
- **Learn from the answer.** After you get it right, the notes appear on a keyboard, and tapping any other interval plays it from the same starting note so you can compare.
- **Results.** You get a first-try score, a list of the intervals you mixed up, and a one-click drill of just your mistakes.
- **Keyboard shortcuts** on desktop: `R` or `Space` replays, `1`–`=` answers, `Enter` goes to the next question.
- Your selection is remembered between visits. Light and dark themes follow your system setting.

The sound is synthesized in the browser with the Web Audio API, so there are no audio files or dependencies.

## Run locally

```bash
./scripts/build.sh
```

Then open `_site/index.html` in a browser.

`app.html` is the source (a page fragment); the build script wraps it in a full HTML document.

## Deploy

`.github/workflows/pages.yml` publishes the site to GitHub Pages on every push to `main`. To turn it on once:
go to **Settings → Pages → Build and deployment → Source** and choose **GitHub Actions**.
