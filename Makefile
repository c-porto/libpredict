STATIC_TARGET=libpredict.a
SHARED_TARGET=libpredict.so

LIB_PREDICT_VERSION = 1

ifndef BUILD_DIR
	BUILD_DIR = $(CURDIR)
endif

ifndef INSTALL_DIR
	INSTALL_DIR = /usr/lib/
endif

AR = ar
LD = ld
AR_FLAGS = rcs
LD_FLAGS = -shared -soname $(SHARED_TARGET).$(LIB_PREDICT_VERSION) -lc -lm

.PHONY: all
all:
	@echo "Compiling libpredict..."
	$(MAKE) BUILD_DIR=$(BUILD_DIR) -C src
	$(AR) $(AR_FLAGS) $(BUILD_DIR)/$(STATIC_TARGET) $(BUILD_DIR)/*.o
	$(LD) $(LD_FLAGS) -o $(BUILD_DIR)/$(SHARED_TARGET) $(BUILD_DIR)/*.o

.PHONY: install
install:
	@echo "Installing libpredict..."
	cp -r $(BUILD_DIR)/$(SHARED_TARGET) $(INSTALL_DIR)
	cp -r $(BUILD_DIR)/$(STATIC_TARGET) $(INSTALL_DIR)
	cp -r include/predict /usr/include/

.PHONY: uninstall
uninstall:
	@echo "Uninstalling libpredict..."
	rm $(INSTALL_DIR)/$(STATIC_TARGET)
	rm $(INSTALL_DIR)/$(SHARED_TARGET)
	rm -r /usr/include/predict/

.PHONY: clean
clean:
	rm $(BUILD_DIR)/*.o $(BUILD_DIR)/*.a $(BUILD_DIR)/*.so*
