//
//  CameraState.swift
//  ProgramaticNavigationFromNonSwiftUIViews
//
//  Created by SchwiftyUI on 9/18/19.
//  Copyright © 2019 SchwiftyUI. All rights reserved.
//

import SwiftUI

class CameraState: ObservableObject {
    @Published var photo: UIImage? = nil
}
