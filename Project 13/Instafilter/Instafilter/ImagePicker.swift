//
//  ImagePicker.swift
//  Instafilter
//
//  Created by Reema on 03/09/1441 AH.
//  Copyright © 1441 Reema. All rights reserved.
//

import SwiftUI

struct ImagePicker: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> UIImagePickerController {
        let picker = UIImagePickerController()
        return picker
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: UIViewControllerRepresentableContext<ImagePicker>) {
    }
    
    typealias UIViewControllerType = UIImagePickerController
}
