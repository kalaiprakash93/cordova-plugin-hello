#import <Cordova/CDV.h>

@interface HWPHello : CDVPlugin

- (void) greet:(CDVInvokedUrlCommand*)command;
- (void) checkFileLockStatus: (CDVInvokedUrlCommand *) command;
@end
