//
//  SCSModule.swift
//  SCSDemo
//
//  Created by Greg Ewing on 3/3/22.
//

import Foundation
import SCSSDKiOS

// add imports of credolab modules according to your needs
@objc(SCSModule)
class SCSModule: RCTEventEmitter {

  @objc(execute:authKey:referenceNumber:resolver:rejecter:)
  func execute(_ url: String, authKey: String, referenceNumber: String, resolver resolve: @escaping RCTPromiseResolveBlock, rejecter reject: @escaping RCTPromiseRejectBlock) -> Void {
    
    let authKey = "044bbc6e-37e1-4e7a-bb64-ba8dc8696dd5"
    //let userEmail = 'test@test.com';
    if #available(iOS 13.0, *) {
      Task {
        //let scs = await SCSSDKiOS.scoreRefOnly(scsapikey: authKey, scsurl: "")
        let scs = SCSSDKiOS()
        let res = await scs.score(scsapikey: authKey, scsurl: "")
        resolve(res)
      }
    } else {
      // Fallback on earlier versions
    }
    
  
  }
  override func supportedEvents() -> [String]! {
    return []
  }
  
}
