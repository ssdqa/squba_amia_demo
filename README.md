# squba_amia_demo

This repository contains resources to facilitate the exploration and demonstration of the [SQUBA](https://github.com/ssdqa) toolset for study-specific data quality assessment in clinical data.  It was constructed for the workshop _Diving into Data_  at the 2026 American Medical Informatics Association Symposium.

## Option A: Using with your own R toolchain

If you are a regular R user, and have your own editor and packages set up, but want to explore [SQUBA](https://github.com/ssdqa) for the first time, you can

* Clone this repository to a location (*e.g.*, your desktop) where you can access data from your R editor.

* Install the most recent version of [SQUBA](https://github.com/ssdqa) using your preferred package manager, or using `remotes::install_github('ssdqa/SQUBA', dependencies = TRUE)` (you may need to `install.packages('remotes')` if you haven't already).

* Change your working directory in R to the top-level directory of this repository.

## Option B: Use the containerized version

If you prefer to explore in a sandbox separated from the rest of your files, or are just looking for an option that doesn't require an existing R toolchain, you have two containerized options:

1. Use the prebuilt image:

   * In your desktop (or server) Docker or Podman, pull the image `baileyc/squba_amia_demo` from Docker Hub.

2. Build your own:

   * Clone this repository to a local system with Docker/Podman available.

   * Use the `docker build` command to construct a new image from the [Dockerfile] in this repository.  See the comments at the top of the file for some setup you may need to do so that the build is not throttled by GitHub's anonymous access limits.

After you have an image from either option, fire it up!

* Run the image, allowing it to use port 8787 - you can do this in the desktop application under Options, or if you're using the command line, adding the `-p 8787:8787` switch to the `docker run` command.

* Within the image, you'll find the contents of this repository in the `squba_amia_demo` directory.

* The image also contains a `squba_startup` directory, with the contents of the [squba_startup](https://github.com/ssdqa/squba_startup) repository that demonstrates check application to synthetic data.

## Files in the repository

|                               |                                                                                   |
| ----------------------------- | --------------------------------------------------------------------------------- |
| `amia_squba_sampledata`       | Set of tables produced by SQUBA modules, used as input to visualization functions |
| `code_sets`                   | CSV files containing codesets used as auxiliary input to visualization functions  |
| `squba_study_walkthrough.qmd` | Quarto markdown document demonstrating SQUBA visualization functions.             |
| `squba_amia_demo.Rproj`       | RStudio project file for this                                                     |
| `Dockerfile`                  | Docker/Podman recipe for building a container with demo resources                 |

## LICENSE

This content is licensed under the terms of the [Mozilla Public License version 2.0](https://www.mozilla.org/en-US/MPL/2.0/) .
