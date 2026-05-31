default: build

build: hello raylib curl

hello: hello.zig
	zig build-exe hello.zig 

raylib: raylib.zig
	zig build-exe raylib.zig -lc -lraylib 

curl: curl.zig
	zig build-exe curl.zig --library curl

clean:
	rm -rf hello raylib curl
