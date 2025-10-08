# Minimal Makefile for libPyGalPot.so
all: obj/libPyGalPot.so

obj/libPyGalPot.so:
	@mkdir -p obj
	g++ -fpic -O3 -ffast-math -Isrc/ -shared -lm -o $@ \
	    src/Numerics.cc \
	    src/WDMath.cc \
	    src/GalPot.cc \
	    src/KeplerPot.cc \
	    src/MiyamotoNagaiPot.cc \
	    src/MultiPot.cc \
	    src/OrbitIntegrator.cc \
	    src/PJMCoords.cc \
	    src/Random.cc \
	    src/PyGalPot.cc

clean:
	rm -rf obj