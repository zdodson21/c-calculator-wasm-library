# C Calculator WASM Library

A C library for the web providing mathematical operations.

**Note:** This library is not yet in a stable state. Exponent function cannot calculate with decimals powers (which results in root function not working yet either)

## Supported Operations

The following functions are provided:

- `add(a, b)` - Calculates the sum of values `a` & `b`
  
- `subtract(a, b)` - Calculates the difference of `b` subtracted from `a`
  
- `multiply(a, b)` - Calculates the product of values `a` & `b`
  
- `divide(a, b)` - Calculates the quotient of `a` divided by `b`
  
- `one_over(a)` - Calculates the quotient of 1 divided by `a`
  
- `is_whole_num(a)` - Returns whether or not `a` is a whole number
  
- `is_even(a)` - Returns whether or not `a` is an even number
  
- `am(a, b)` - Calculates the [Arithmetic Mean](https://en.wikipedia.org/wiki/Arithmetic_mean) of provided values `a` & `b`
  
- `gm(a, b)` - Calculates the [Geometric Mean](https://en.wikipedia.org/wiki/Geometric_mean) of provided values `a` & `b`
  
- `agm(a, b)` - Calculates the [Arithmetic-Geometric Mean](https://en.wikipedia.org/wiki/Arithmetic%E2%80%93geometric_mean) of `a` and `b`
  
- `sq_root(a)` - Calculates the square root of `a`
  
- `ln(a)` - Calculates the natural log of `a` using the formula in `formulas/natural-log.odf`. This file can be opened w/ [LibreOffice Math](https://www.libreoffice.org/download/download-libreoffice/)
  - Note: The results returned from this function will start to lose precision around the hundred thousandths decimal place.
  
- `log(base, arguement)` - Calculates the logarithm of `base` & `arguement`
  
- `exponent(base, exponent)` - Calculates the value of `base` to the `exponent` power
  - Note: This only works when the exponent is a whole number (currently)
  
- `root(index, radicand)` - Calculates the value of `index` to the root of `radicand`

---

## Building

### `calculator.c`

[Emscripten](https://emscripten.org/) is required to compile this project to WebAssembly.

Run either of the following commands to compile `calculator.c` to `calculator.wasm`

```bash
# Make Command:
make

# Build Command:
emcc -Os calculator.c -o calculator.wasm --no-entry
```

### `calculator.wat`

This file is provided for convenience and is generated using the [WebAssembly](https://marketplace.visualstudio.com/items?itemName=dtsvet.vscode-wasm) [Visual Studio Code](https://code.visualstudio.com/) extension.

---

## Other

- [Releases]()
- [License](https://github.com/zdodson21/c-calculator-wasm-library/blob/main/LICENSE)
- [GitHub Repo](https://github.com/zdodson21/c-calculator-wasm-library)
