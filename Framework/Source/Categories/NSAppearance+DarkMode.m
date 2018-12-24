//
//  NSAppearance+DarkMode.m
//  ShortcutRecorder.framework
//
//  Created by rudy on 12/24/18.
//

#import "NSAppearance+DarkMode.h"

@implementation NSAppearance (DarkMode)

+ (BOOL)sr_isDarkAquaEnabled {
	if (@available(macOS 10.14, *)) {
		return NSApp.effectiveAppearance.sr_isDark;
	}
	return false;
}

- (BOOL)sr_isDark {
	if (@available(macOS 10.14, *)) {
		return [[self bestMatchFromAppearancesWithNames:@[NSAppearanceNameAqua, NSAppearanceNameDarkAqua]] isEqualToString:NSAppearanceNameDarkAqua];
	}
	else {
		return [self.name isEqualToString:NSAppearanceNameVibrantDark];
	}
}

@end
