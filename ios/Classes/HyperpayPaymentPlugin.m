#import "HyperpayPaymentPlugin.h"
#if __has_include(<hyperpay_payment/hyperpay_payment-Swift.h>)
#import <hyperpay_payment/hyperpay_payment-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "hyperpay_payment-Swift.h"
#endif

@implementation HyperpayPaymentPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftHyperpayPaymentPlugin registerWithRegistrar:registrar];
}
@end
