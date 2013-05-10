ARCHS = armv7
include theos/makefiles/common.mk

TWEAK_NAME = LaunchNotifier
LaunchNotifier_FILES = Tweak.xm
LaunchNotifier_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += notifiersettings
include $(THEOS_MAKE_PATH)/aggregate.mk
