# Minimal Makefile for libPyGalPot.so
all: GalPot/lib/libPyGalPot.so

GalPot/lib/libPyGalPot.so:
	@mkdir -p GalPot/lib
	g++ -fpic -O3 -ffast-math -IsrcGalPot/include/ -shared -lm -o $@ \
	    srcGalPot/Numerics.cc \
	    srcGalPot/WDMath.cc \
	    srcGalPot/GalPot.cc \
	    srcGalPot/KeplerPot.cc \
	    srcGalPot/MiyamotoNagaiPot.cc \
	    srcGalPot/MultiPot.cc \
	    srcGalPot/OrbitIntegrator.cc \
	    srcGalPot/PJMCoords.cc \
	    srcGalPot/Random.cc \
	    srcGalPot/PyGalPot.cc

clean:
	rm -rf GalPot/lib