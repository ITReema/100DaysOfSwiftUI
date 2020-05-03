//
//  ImageSaver.swift
//  Instafilter
//
//  Created by Reema on 10/09/1441 AH.
//  Copyright © 1441 Reema. All rights reserved.
//

import UIKit

class ImageSaver: NSObject {
    var successHandler: (() -> Void)?
    var errorHandler: ((Error) -> Void)?
    
    func writeToPhotoAlbum(image: UIImage) {
        UIImageWriteToSavedPhotosAlbum(image, self, #selector(saveError), nil)
    }

    @objc func saveError(_ image: UIImage, didFinishSavingWithError error: Error?, contextInfo: UnsafeRawPointer) {
        // save complete
        if let error = error {
            errorHandler?(error)
        } else {
            successHandler?()
        }
    }
}
