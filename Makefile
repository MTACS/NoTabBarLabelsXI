include $(THEOS)/makefiles/common.mk

TWEAK_NAME = CleanCydiaTabs
CleanCydiaTabs_FILES = Tweak.xm
CleanCydiaTabs_FRAMEWORKS = CoreGraphics

include $(THEOS_MAKE_PATH)/tweak.mk
include $(THEOS_MAKE_PATH)/aggregate.mk

after-install::
	install.exec "killall -9 SpringBoard"
