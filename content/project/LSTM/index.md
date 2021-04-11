---
title: Gated Recurrent Neural Network for timeseries prediction
summary: Long-Short Term Memory (LSTM) to predict energy consumption from multivariate timeseries.
tags:
- NN
- Signal Processing
- Python

date: "2020-06-01T00:00:00Z"

# Optional external URL for project (replaces project detail page).
external_link: "https://github.com/dilettagoglia/Signal-Processing/tree/master/midterm3/midterm3"

image:
  caption: Timeseries prediction with a Gated RNN (LSTM)
  focal_point: Smart

links:
- icon: github
  icon_pack: fab
  name: Repo
  url: https://github.com/dilettagoglia/Signal-Processing/tree/master/midterm3/midterm3
url_code: "https://github.com/dilettagoglia/Signal-Processing/tree/master/midterm3/midterm3"
url_pdf: "https://drive.google.com/file/d/1Hn07hzDoOI3NvhA0birDJUs2vK-up1L1/view?usp=sharing"
#url_slides: ""
url_video: ""

# Slides (optional).
#   Associate this project with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides = "example-slides"` references `content/slides/example-slides.md`.
#   Otherwise, set `slides = ""`.
slides: example
---

### Project Assignment:

Train a gated recurrent neural network (LSTM) to predict energy expenditure (“Appliances” column) using two approaches:
- Predict the current energy expenditure given as input information the temperature (T_i) and humidity (RH_i) information from all the i sensors in the house.
- Setup a one step-ahead predictor for energy expenditure, i.e. given the current energy consumption, predict its next value.

Show and compare performance of both methods.
