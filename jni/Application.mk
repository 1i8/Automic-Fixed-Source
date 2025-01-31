APP_ABI          := armeabi-v7a
APP_OPTIM        := release
APP_PLATFORM     := android-16
APP_STL          := system
APP_STL          := gnustl_static
APP_THIN_ARCHIVE := true
APP_PIE:= true


ifneq ($(APP_OPTIM), debug)
  $(info APP_OPTIM is $(APP_OPTIM) ...)
  APP_LDFLAGS += -Wl,--strip-all -Wignored-attributes
  APP_CFLAGS  += -fvisibility=hidden -fvisibility-inlines-hidden
  APP_CPPFLAGS += -std=gnu++11
  APP_CFLAGS  += -g0 -O3 -fomit-frame-pointer -ffunction-sections -fdata-sections
endif
