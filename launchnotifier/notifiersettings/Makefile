ARCHS = armv7
include theos/makefiles/common.mk

BUNDLE_NAME = NotifierSettings
NotifierSettings_FILES = NotifierSettings.mm
NotifierSettings_INSTALL_PATH = /Library/PreferenceBundles
NotifierSettings_FRAMEWORKS = UIKit
NotifierSettings_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/NotifierSettings.plist$(ECHO_END)
