//
//  DismissView.swift
//  ProgramaticNavigationFromNonSwiftUIViews
//
//  Created by SchwiftyUI on 9/18/19.
//  Copyright © 2019 SchwiftyUI. All rights reserved.
//

import SwiftUI

struct DismissView: View {
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var cameraState: CameraState
    @ObservedObject var shouldDismiss = ShouldDismiss()
    
    var body: some View {
        
        if shouldDismiss.dismiss {
            presentationMode.wrappedValue.dismiss()
            shouldDismiss.dismiss = false
        }
        
        return CameraView(cameraState: cameraState, shouldDismiss: shouldDismiss)
            .navigationBarTitle("")
            .navigationBarHidden(true)
    }
}

struct DismissView_Previews: PreviewProvider {
    static var previews: some View {
        DismissView(cameraState: CameraState())
    }
}
