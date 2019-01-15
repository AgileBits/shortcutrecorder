//
//  NSAppearance+DarkMode.h
//  ShortcutRecorder.framework
//
//  Created by rudy on 12/24/18.
//

#import <Cocoa/Cocoa.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSAppearance (DarkMode)

@property (class, nonatomic, readonly) BOOL sr_isDarkAquaEnabled;

- (BOOL)sr_isDark;

@end

NS_ASSUME_NONNULL_END
