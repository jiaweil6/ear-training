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

The sound is a recorded grand piano (see Credits), played with the Web Audio API. If the samples can't load, it falls back to a synthesized tone.

## Run locally

```bash
./scripts/build.sh
```

Then open `_site/index.html` in a browser.

`app.html` is the source (a page fragment); the build script wraps it in a full HTML document and copies `piano-samples.js` next to it.

`piano-samples.js` holds 12 short piano notes (C3 to A5, every minor third) as base64 MP3. Other notes are pitch-shifted by at most one semitone. To regenerate it, download the npm package `@audio-samples/piano-mp3-velocity10` and run:

```bash
./scripts/make-piano-samples.sh path/to/package/audio
```

This needs `ffmpeg`.

## Deploy

`.github/workflows/pages.yml` publishes the site to GitHub Pages on every push to `main`. To turn it on once:
go to **Settings → Pages → Build and deployment → Source** and choose **GitHub Actions**.

## Credits

Piano samples: [Salamander Grand Piano V3](https://archive.org/details/SalamanderGrandPianoV3) recorded by Alexander Holm, licensed [CC BY 3.0](https://creativecommons.org/licenses/by/3.0/). The samples here are trimmed to 3.2 seconds and mixed to mono.
