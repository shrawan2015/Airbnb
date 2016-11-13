//
//  SlideViewCell.swift
//  Airbnb
//
//  Created by SKS on 12/11/16.
//  Copyright © 2016 Airbnb. All rights reserved.
//

import UIKit

class SlideViewCell: UICollectionViewCell {
    
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var imageView: UIImageView!
    
    var slide:SlideModel?{
        didSet {
            textView.text = slide?.textString
            imageView.image = UIImage(named: (slide?.imageName)!)
        }
    }
    
    
}


struct SlideModel {
    var imageName:String
    var textString:String
}
