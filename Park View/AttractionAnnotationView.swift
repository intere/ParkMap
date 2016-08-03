//
//  AttractionAnnotationView.swift
//  Park View
//
//  Created by Niv Yahel on 2014-10-30.
//  Copyright (c) 2014 Chris Wagner. All rights reserved.
//

import UIKit
import MapKit

class AttractionAnnotationView: MKAnnotationView {
  
  // Required for MKAnnotationView
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }
  
//  // Called when drawing the AttractionAnnotationView
//  override init(frame: CGRect) {
//    super.init(frame: frame)
//  }

  override init(annotation: MKAnnotation?, reuseIdentifier: String?) {
    super.init(annotation: annotation, reuseIdentifier: reuseIdentifier)
    let attractionAnnotation = self.annotation as! AttractionAnnotation
    switch (attractionAnnotation.type) {
    case .attractionFirstAid:
      image = UIImage(named: "firstaid")
    case .attractionFood:
      image = UIImage(named: "food")
    case .attractionRide:
      image = UIImage(named: "ride")
    default:
      image = UIImage(named: "star")
    }
  }
}
