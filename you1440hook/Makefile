include $(THEOS)/makefiles/common.mk

TWEAK_NAME = You1440Hook
You1440Hook_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
