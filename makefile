all: clean
	emcc -Os calculator.c -o calculator.wasm --no-entry

clean:
	rm -f calculator.wasm
