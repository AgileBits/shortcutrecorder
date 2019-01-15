//
//  NSImage+RTL.m
//  ShortcutRecorder.framework
//
//  Created by rudy on 12/24/18.
//

#import "NSImage+RTL.h"

@implementation NSImage (RTL)

- (NSImage *)sr_RTLFlipImage {
	return [NSImage imageWithSize:self.size flipped:NO drawingHandler:^BOOL(NSRect dstRect) {
		[[NSGraphicsContext currentContext] setImageInterpolation:NSImageInterpolationHigh];

		NSAffineTransform *transform = [NSAffineTransform transform];
		[transform translateXBy:self.size.width yBy:0];
		[transform scaleXBy:-1 yBy:1];
		[transform concat];

		[self drawInRect:dstRect fromRect:NSZeroRect operation:NSCompositingOperationSourceOver fraction:1.0];

		return YES;
	}];
}

@end
