---
title: Implementation of a Neural Network from scratch 
summary: Implementation of a Neural Network from scratch in Python for the Machine Learning course.
tags:
- Algorithms
- Python
- AI
- 2022
- NN

date: "2021-09-01T00:00:00Z"
draft: false

# Optional external URL for project (replaces project detail page).
external_link: ""

image:
  caption: Machine Learning
  focal_point: Smart

links:
- icon: github
  icon_pack: fab
  name: Repo
  url: https://github.com/dilettagoglia/impl-NN-from-scratch

url_code: "https://github.com/dilettagoglia/impl-NN-from-scratch"
url_pdf: "https://github.com/dilettagoglia/impl-NN-from-scratch/blob/main/GOGLIA_MURGIA_Report.pdf"
url_slides: ""
url_video: ""

# Slides (optional).
#   Associate this project with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides = "example-slides"` references `content/slides/example-slides.md`.
#   Otherwise, set `slides = ""`.
slides: example
---
The project consists in the implementation of an Artificial Neural Network built from scratch using Python, without using pre-built libraries. The overall validation schema consists in a preliminary screening phase to reduce the hyperparameters search space, followed by a first coarse grid-search and a second but finer one. All the explored models are validated with a 5-fold cross validation. The resulting model is a 2 hidden layer network with 20 units each and ReLU activation for both layers.
