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

              NSLayoutConstraint.activate([
                  hostingView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
                  hostingView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
                  hostingView.widthAnchor.constraint(equalToConstant: 100),
                  hostingView.heightAnchor.constraint(equalToConstant: 100)
              ])
          }
        } catch {
            print("Error initializing SplineView: \(error)")
        }
    }
}
