//
//  FaceDetector.swift
//  FaceDetector
//
//  Created by Sunil Prajapati on 24/08/20.
//  Copyright © 2020 Sunil Prajapati. All rights reserved.
//

import UIKit

extension UIImage {
    
    var faceFeature: [CIFeature] {
        let ciImage = CIImage(cgImage: self.cgImage!)
        let options = [CIDetectorAccuracy: CIDetectorAccuracyHigh]
        let faceDetector = CIDetector(ofType: CIDetectorTypeFace, context: nil, options: options)!
        return faceDetector.features(in: ciImage)
    }
    
    var hasFace: Bool {
        return ((self.faceFeature.first) as? CIFaceFeature) != nil
    }
    
    var faceBounds: CGRect? {
        if let face = (self.faceFeature.first as? CIFaceFeature) {
            return face.bounds
        } else {
            return nil
        }
    }
    
    var mouthPosition: CGPoint? {
        if let face = (self.faceFeature.first as? CIFaceFeature), face.hasMouthPosition {
            return face.mouthPosition
        } else {
            return nil
        }
    }
    
    var leftEyePosition: CGPoint? {
        if let face = (self.faceFeature.first as? CIFaceFeature),
            face.hasLeftEyePosition {
            return  face.leftEyePosition
        } else {
            return nil
        }
    }
    
    var rightEyePosition: CGPoint? {
        if let face = (self.faceFeature.first as? CIFaceFeature),
            face.hasRightEyePosition {
            return face.rightEyePosition
        } else {
            return nil
        }
    }
}
