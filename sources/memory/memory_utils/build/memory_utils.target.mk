# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := memory_utils
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

INCS_debug := -I$(XTD_HOME)/include

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

INCS_release := -I$(XTD_HOME)/include

OBJS := $(obj).target/$(TARGET)/../sources/memory/memory_utils/sources/memory_utils.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

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
LDFLAGS_debug := 

LDFLAGS_release := 

LIBS := 

$(obj).target/../sources/memory/memory_utils/build/libmemory_utils.a: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(obj).target/../sources/memory/memory_utils/build/libmemory_utils.a: LIBS := $(LIBS)
$(obj).target/../sources/memory/memory_utils/build/libmemory_utils.a: TOOLSET := $(TOOLSET)
$(obj).target/../sources/memory/memory_utils/build/libmemory_utils.a: $(OBJS) FORCE_DO_CMD
	$(call do_cmd,alink)

all_deps += $(obj).target/../sources/memory/memory_utils/build/libmemory_utils.a
# Add target alias
.PHONY: memory_utils
memory_utils: $(obj).target/../sources/memory/memory_utils/build/libmemory_utils.a

# Add target alias to "all" target.
.PHONY: all
all: memory_utils

