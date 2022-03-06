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
    
    let authKey = "ed7482b8-22ce-45c4-b49c-f8e42321ea7a"
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
