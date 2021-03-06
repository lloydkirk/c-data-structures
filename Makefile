BINS := linked-list
INCLUDE_DIR := ./
CFLAGS += -std=c11 -I$(INCLUDE_DIR)
CFLAGS += -Wall -Werror
#TODO: some ifdef DEBUG or something here
CFLAGS += -g

all: $(BINS)

%: %.c
	$(CC) $(CFLAGS) $^ -o $@

test:
	for bin in $(BINS); do \
		./$$bin; \
	done

.PHONY: clean
clean:
	rm -f $(BINS)
