BIN_DIR := bin
INSTALL_DIR := /opt/eth-watchtower

WATCHTOWER := eth-watchtower
SUPERVISOR := eth-watchtower-supervisor

all: build

build:
	mkdir -p $(BIN_DIR)
	cd $(WATCHTOWER) && go build -trimpath -ldflags="-s -w" -o ../$(BIN_DIR)/$(WATCHTOWER)
	cd $(SUPERVISOR) && go build -trimpath -ldflags="-s -w" -o ../$(BIN_DIR)/$(SUPERVISOR)

install: build
	mkdir -p $(INSTALL_DIR)
	cp $(BIN_DIR)/$(WATCHTOWER) $(INSTALL_DIR)/
	cp $(BIN_DIR)/$(SUPERVISOR) $(INSTALL_DIR)/
	cp config.json $(INSTALL_DIR)/

clean:
	rm -rf $(BIN_DIR)

