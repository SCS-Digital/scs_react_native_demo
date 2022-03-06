//
//  SCSNative.m
//  SCSDemo
//
//  Created by Greg Ewing on 3/3/22.
//

#import <Foundation/Foundation.h>
#import "SCSNative.h"
#import <React/RCTLog.h>





#import "SCSSDKiOS.xcframework/ios-arm64/SCSSDKiOS.framework/Headers/SCSSDKiOS.h"

@implementation SCSNative

// To export a module named SCSNative
RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(score:(NSString *)authkey
                  email:(NSString *)email
                  resolver:(RCTPromiseResolveBlock)resolve
                  rejecter:(RCTPromiseRejectBlock)reject)
{
 RCTLogInfo(@"Pretending to create an event %@ at %@", authkey, email);
  if (true){
    //sdkios.scoreRefOnly("", "");
    
    resolve(@"Score returned successfully");
  } else {
    reject(@"Score failed", @"Score failed", nil);
  }
}
@end
