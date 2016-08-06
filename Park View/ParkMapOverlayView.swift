//
//  ParkMapOverlayView.swift
//  Park View
//
//  Created by Niv Yahel on 2014-10-30.
//  Copyright (c) 2014 Chris Wagner. All rights reserved.
//

import UIKit
import MapKit

class ParkMapOverlayView: MKOverlayRenderer {
  var overlayImage: UIImage
  
  init(overlay:MKOverlay, overlayImage:UIImage) {
    self.overlayImage = overlayImage
    super.init(overlay: overlay)
  }
  
  override func draw(_ mapRect: MKMapRect, zoomScale: MKZoomScale, in context: CGContext!) {
    let imageReference = overlayImage.cgImage
    
    let theMapRect = overlay.boundingMapRect
    let theRect = self.rect(for: theMapRect)

    context.scaleBy(x: 1.0, y: -1.0)
    context.translateBy(x: 0.0, y: -theRect.size.height)
    context.draw(in: theRect, image: imageReference!)
  }
}
