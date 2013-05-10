@interface PSListController
{
    id _specifiers;
}
-(id)specifiers;
-(id)loadSpecifiersFromPlistName:(id)name target:(id)target;
@end

@interface NotifierSettingsListController: PSListController {
}
@end

@implementation NotifierSettingsListController
- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"NotifierSettings" target:self] retain];
	}
	return _specifiers;
}
@end

// vim:ft=objc
