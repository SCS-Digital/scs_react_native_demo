//
//  SCSBridge.m
//  SCSDemo
//
//  Created by Greg Ewing on 3/3/22.
//

#import <Foundation/Foundation.h>
#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_MODULE(SCSModule, NSObject)
  RCT_EXTERN_METHOD(execute:(NSString *)url
                    authKey:(NSString *)authKey
                    referenceNumber:(NSString *)referenceNumber
                    resolver:(RCTPromiseResolveBlock)resolve
                    rejecter:(RCTPromiseRejectBlock)reject)

@end
