# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := console_logger_tests
DEFS_debug := 

# Flags passed to all source files.
CFLAGS_debug := -std=c++11 \
	-Wall \
	-Wextra \
	-Werror \
	-pedantic \
	-pedantic-errors \
	-Wno-unused-variable \
	-O0 \
	-g

# Flags passed to only C files.
CFLAGS_C_debug := 

# Flags passed to only C++ files.
CFLAGS_CC_debug := 

INCS_debug := -I$(XTD_HOME)/include \
	-I$(GTEST_HOME)/include

DEFS_release := 

# Flags passed to all source files.
CFLAGS_release := -std=c++11 \
	-Wall \
	-Wextra \
	-Werror \
	-pedantic \
	-pedantic-errors \
	-Wno-unused-variable \
	-O3 \
	-s

# Flags passed to only C files.
CFLAGS_C_release := 

# Flags passed to only C++ files.
CFLAGS_CC_release := 

INCS_release := -I$(XTD_HOME)/include \
	-I$(GTEST_HOME)/include

OBJS := $(obj).target/$(TARGET)/../sources/console_logger.o \
	$(obj).target/$(TARGET)/../tests/sources/console_logger.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# Make sure our dependencies are built before any of us.
$(OBJS): | $(obj).target/../../abstract_logger/build/libabstract_logger.a $(obj).target/../../../io/scout/build/libscout.a

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.cpp FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.cpp FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.cpp FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_debug := -lpthread

LDFLAGS_release := -lpthread

LIBS := 

$(builddir)/console_logger_tests: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(builddir)/console_logger_tests: LIBS := $(LIBS)
$(builddir)/console_logger_tests: LD_INPUTS := $(OBJS) $(GTEST_HOME)/build/gtest-all.o $(obj).target/../../abstract_logger/build/libabstract_logger.a $(obj).target/../../../io/scout/build/libscout.a
$(builddir)/console_logger_tests: TOOLSET := $(TOOLSET)
$(builddir)/console_logger_tests: $(OBJS) $(GTEST_HOME)/build/gtest-all.o $(obj).target/../../abstract_logger/build/libabstract_logger.a $(obj).target/../../../io/scout/build/libscout.a FORCE_DO_CMD
	$(call do_cmd,link)

all_deps += $(builddir)/console_logger_tests
# Add target alias
.PHONY: console_logger_tests
console_logger_tests: $(builddir)/console_logger_tests

# Add executable to "all" target.
.PHONY: all
all: $(builddir)/console_logger_tests

