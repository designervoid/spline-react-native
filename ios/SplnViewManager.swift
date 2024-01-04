//
//  SplnViewManager.swift
//  Spline
//
//  Created by Maxim Chernyshov on 04.01.2024.
//

import Foundation

@objc(SplnViewManager)
class SplnViewManager: RCTViewManager {
  override func view() -> UIView! {
      return SplnView()
    }
}
