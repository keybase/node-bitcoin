
lib/lib.js: src/pre.js \
	src/array.map.js \
	src/biginteger.js \
	src/cryptojs.js \
	src/cryptojs.ripemd160.js \
	src/cryptojs.sha256.js \
	src/ellipticcurve.js \
	src/bitcoinjs-lib.address.js \
	src/bitcoinjs-lib.base58.js \
	src/bitcoinjs-lib.eckey.js \
	src/bitcoinjs-lib.util.js \
	src/post.js
	cat $^ > $@

default: lib/lib.js

test:
	./node_modules/.bin/iced test/run.iced

.PHONY: test