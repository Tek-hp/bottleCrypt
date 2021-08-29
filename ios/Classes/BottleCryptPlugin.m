#import "BottleCryptPlugin.h"
#if __has_include(<bottle_crypt/bottle_crypt-Swift.h>)
#import <bottle_crypt/bottle_crypt-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "bottle_crypt-Swift.h"
#endif

@implementation BottleCryptPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftBottleCryptPlugin registerWithRegistrar:registrar];
}
@end
