# Docker image for CMPL

This docker image contains the [CMPL software suite](http://coliop.org/). Be sure to mount your working directory containing input files as a volume to `/data`.

CMPL is installed under /usr/share and the cmpl executable is the entrypoint.

## Usage

Assume that your model file is called `model.cmpl` and stored in the current directory. Run Docker as follows:

	docker run --rm -v $(pwd):/data chrisnig/cmpl model.cmpl
For more documentation on the parameters to supply to CMPL, see the [CMPL manual](http://www.coliop.org/_download/CMPL.pdf).
