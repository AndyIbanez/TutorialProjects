// Required
extern "C" BOOL isCapable() {
	return YES;
}

// Required
extern "C" BOOL isEnabled() {
	NSDictionary *weatherSettings = [NSDictionary dictionaryWithContentsOfFile:@"/var/mobile/Library/Preferences/com.apple.weather.plist"];
	BOOL inCelsius = [[weatherSettings objectForKey:@"Celsius"] boolValue];
	return inCelsius;
}

// Optional
// Faster isEnabled. Remove this if it's not necessary. Keep it if isEnabled() is expensive and you can make it faster here.
extern "C" BOOL getStateFast() {
	return isEnabled();
}

// Required
extern "C" void setState(BOOL enabled) {
	NSMutableDictionary *weatherSettings = [NSMutableDictionary dictionaryWithContentsOfFile:@"/var/mobile/Library/Preferences/com.apple.weather.plist"];
	if(enabled == YES)
	{
		//We want to display weather data in celsius.
		[weatherSettings setObject:[NSNumber numberWithBool:YES] forKey:@"Celsius"];
		NSLog(@"Celsius");
	}else
	{
		//We want to display data in fahrenheit.
		[weatherSettings setObject:[NSNumber numberWithBool:NO] forKey:@"Celsius"];
		NSLog(@"Fahrenheit");
	}
	[weatherSettings writeToFile:@"/var/mobile/Library/Preferences/com.apple.weather.plist" atomically:YES];
}

// Required
// How long the toggle takes to toggle, in seconds.
extern "C" float getDelayTime() {
	return 0.6f;
}

// vim:ft=objc
