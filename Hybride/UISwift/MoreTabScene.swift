//
//  MoreTabScene.swift
//  Hybride
//
//  Created by Aileen Gabriela Moreno Perez on 8/17/19.
//  Copyright © 2019 Aileen Gabriela Moreno Perez. All rights reserved.
//

import SwiftUI
import UIKit

struct HomeControllerWrapper: UIViewControllerRepresentable {
    typealias UIViewControllerType = HomeViewController


    func makeUIViewController(context: UIViewControllerRepresentableContext<HomeControllerWrapper>) -> HomeControllerWrapper.UIViewControllerType {
        return HomeViewController()
    }

    func updateUIViewController(_ uiViewController: HomeControllerWrapper.UIViewControllerType, context: UIViewControllerRepresentableContext<HomeControllerWrapper>) {
        //
    }
}

struct MoreTabScene: View {
    var body: some View {
        NavigationView {
            List(0..<10) { item in
                NavigationLink(destination: HomeControllerWrapper()) {
                    Text("Hola")
                }
            }
        }
    }
}

