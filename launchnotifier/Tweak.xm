@interface SBApplicationIcon
-(void)launch;
-(id)displayName;
@end

%hook SBApplicationIcon
-(void)launch
{
    NSString *appName = [self displayName];
    
	NSMutableDictionary *settings = [NSMutableDictionary dictionaryWithContentsOfFile:
									[NSString stringWithFormat:@"%@/Library/Preferences/%@", NSHomeDirectory(), @"com.AndyIbanez.NotifierSettings.plist"]];
	NSNumber* shouldNotify = [settings objectForKey:@"alertLaunch"];
	
	if([shouldNotify boolValue] == YES)
	{
	    NSString *message = [NSString stringWithFormat:@"The app %@ has been launched", appName, nil];
	    UIAlertView *alert1 = [[UIAlertView alloc] initWithTitle:appName message:message delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
	    [alert1 show];
	    [alert1 release];
    }
    %orig;
}
%end