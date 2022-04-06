#import "HWPHello.h"

@implementation HWPHello

- (void)greet:(CDVInvokedUrlCommand*)command
{

    NSString* name = [[command arguments] objectAtIndex:0];
    NSString* msg = [NSString stringWithFormat: @"Hello, %@", name];

    CDVPluginResult* result = [CDVPluginResult
                               resultWithStatus:CDVCommandStatus_OK
                               messageAsString:msg];

    [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}

- (void) checkFileLockStatus: (CDVInvokedUrlCommand *) command {
    NSError * error;
    NSString *filePath = [command.arguments objectAtIndex:0];
    NSDictionary *attributes = [[NSFileManager defaultManager] attributesOfItemAtPath:filePath error:&error];
    BOOL isLocked = [[attributes objectForKey:NSFileImmutable] boolValue];
                
    if (isLocked) {
        NSLog(@"File is locked");
    }
    CDVPluginResult *pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:isLocked];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
    return;
}

@end
