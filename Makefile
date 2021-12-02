crystal ?= $(shell which crystal)
shards ?= $(shell which shards)

test: shard.lock
	$(crystal) spec --warnings all --error-on-warnings

clean:
	-rm -rf bin doc

bin/image-to-html: bin shard.lock src/*.cr src/**/*.cr
	$(crystal) build --release --no-debug -o bin/image-to-html src/image-to-html.cr $(CRFLAGS)

bin:
	mkdir -p bin

shard.lock: shard.yml
	$(shards) prune
	$(shards) install
	touch $@
