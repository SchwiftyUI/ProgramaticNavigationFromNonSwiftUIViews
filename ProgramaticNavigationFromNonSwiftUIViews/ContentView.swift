//
//  ContentView.swift
//  ProgramaticNavigationFromNonSwiftUIViews
//
//  Created by SchwiftyUI on 9/18/19.
//  Copyright © 2019 SchwiftyUI. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var cameraState: CameraState
    
    var body: some View {
        NavigationView {
            VStack {
                cameraState.photo.map { hotdogPhoto in
                    Image(uiImage: hotdogPhoto)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                }
                
                NavigationLink(destination: CameraView(cameraState: cameraState)) {
                    Text("Take Photo")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(cameraState: CameraState())
    }
}
