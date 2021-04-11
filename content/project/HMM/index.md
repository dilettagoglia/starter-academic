---
title: Hidden Markov Model for regime detection
summary: Python analysis of timeseries to cluster ranges of consumption, using Hidden Markov Models with Gaussian emissions.
tags:
- NN
- Signal Processing
- Python

date: "2020-05-01T00:00:00Z"

# Optional external URL for project (replaces project detail page).
external_link: "https://github.com/dilettagoglia/Signal-Processing/tree/master/midterm2"

image:
  caption: Hidden Markov Model for regime detection
  focal_point: Smart

links:
- icon: github
  icon_pack: fab
  name: Repo
  url: https://github.com/dilettagoglia/Signal-Processing/tree/master/midterm2
url_code: "https://github.com/dilettagoglia/Signal-Processing/tree/master/midterm2"
url_pdf: "https://drive.google.com/file/d/1g-ZAtKqzcgngBozkJB9qpgC8suOgeHd7/view?usp=sharing"
url_slides: ""
url_video: ""

# Slides (optional).
#   Associate this project with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides = "example-slides"` references `content/slides/example-slides.md`.
#   Otherwise, set `slides = ""`.
slides: example
---

### Project Assignment:

Hidden Markov Models for regime detection.

Fit an Hidden Markov Model with Gaussian emissions to the data in DSET1; it is sufficient to focus on the “Appliances” and “Lights” columns of the dataset which measure the energy consumption of appliances and lights, respectively, across a period of 4.5 months.
Consider the two columns in isolation, i.e. train two separate HMM, one for appliances and one for light.
Experiment with HMMs with a varying number of hidden states (e.g. at least 2, 3 and 4).
Once trained the HMMs, perform Viterbi on a reasonably sized subsequence (e.g. 1 month of data) and plot the timeseries data highlighting (e.g. with different colours) the hidden state assigned to each timepoint by the Viterbi algorithm.
Then, try sampling a sequence of at least 100 points from the trained HMMs and show it on a plot discussing similarities and differences w.r.t. the ground truth data.
