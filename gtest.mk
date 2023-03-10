.PHONY: all clean

CMAKE   = cmake
MAKE    = make

GTEST             = .

GTEST_BUILD_DIR   = $(GTEST)/build
GTEST_INSTALL_DIR = $(GTEST)/gtest
GTEST_CMAKELIST   = $(GTEST)/CMakeLists.txt

GTEST_LIB         = $(GTEST_INSTALL_DIR)/lib/libgtest.a
GTEST_LIBMAIN     = $(GTEST_INSTALL_DIR)/lib/libgtest_main.a

all:
	if [ ! -e $(GTEST_LIB) ] || [ ! -e $(GTEST_LIBMAIN) ]; then \
		mkdir -p $(GTEST_BUILD_DIR) && \
		$(CMAKE) -S $(GTEST) -B $(GTEST_BUILD_DIR) -DBUILD_GMOCK=OFF -DCMAKE_INSTALL_PREFIX=$(GTEST_INSTALL_DIR) && \
		$(MAKE) -C $(GTEST_BUILD_DIR) && \
		$(MAKE) -C $(GTEST_BUILD_DIR) install; \
	fi

clean:
	if [ -e $(GTEST_BUILD_DIR) ]; then \
		$(MAKE) -C $(GTEST_BUILD_DIR) clean; \
	fi
	rm -rf $(GTEST_BUILD_DIR)
	rm -rf $(GTEST_INSTALL_DIR)
