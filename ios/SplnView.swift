//
//  SplnView.swift
//  Spline
//
//  Created by Maxim Chernyshov on 04.01.2024.
//

import UIKit
import SwiftUI
import SplineRuntime

class SplnView: UIView {
  private var hostingController: UIHostingController<SplineView>?

  override init(frame: CGRect) {
    super.init(frame: frame)
    setupSplineView()
  }

  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    setupSplineView()
  }

  private func setupSplineView() {
    do {
      let url = URL(string: "https://build.spline.design/odjITR4fWGBNf3Pn5dKL/scene.splineswift")!
      let splineView = try SplineView(sceneFileURL: url)
      hostingController = UIHostingController(rootView: splineView)
      if let hostingView = hostingController?.view {
        self.addSubview(hostingView)
        hostingView.translatesAutoresizingMaskIntoConstraints = false
        
        let (width, height, safeAreaInsets) = getScreenAndSafeAreaDimensions()
        
        NSLayoutConstraint.activate([
         hostingView.widthAnchor.constraint(equalToConstant: width - safeAreaInsets.left - safeAreaInsets.right),
         hostingView.heightAnchor.constraint(equalToConstant: height - safeAreaInsets.top - safeAreaInsets.bottom)
        ])
      }
    } catch {
      print("Error initializing SplineView: \(error)")
    }
  }

  private func getScreenAndSafeAreaDimensions() -> (width: CGFloat, height: CGFloat, safeAreaInsets: UIEdgeInsets) {
    let scenes = UIApplication.shared.connectedScenes
    let windowScene = scenes.first as? UIWindowScene
    let window = windowScene?.windows.first

    let height = window?.screen.bounds.height ?? 0
    let width = window?.screen.bounds.width ?? 0
    let safeAreaInsets = window?.safeAreaInsets ?? UIEdgeInsets.zero

    return (width, height, safeAreaInsets)
  }
}
