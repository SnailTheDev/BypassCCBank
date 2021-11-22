THEOS_DEVICE_IP = 192.168.99.102
THEOS_DEVICE_PORT = 22

ARCHS = arm64
TARGET = iphone:clang:13.5:10.0

DEBUG = 0
PACKAGE_VERSION = $(THEOS_PACKAGE_BASE_VERSION)

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = BypassCCBank
BypassCCBank_FILES = Tweak.xm
$(TWEAK_NAME)_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 CCBMobileBank"
