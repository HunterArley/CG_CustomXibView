//
//  CustomXibView.swift
//  SwiftTester
//
//  Created by yj on 2018/10/26.
//  Copyright © 2018年 曹先生. All rights reserved.
//

import UIKit

@IBDesignable
class CustomXibView: UIView, Nibloadable {
    var contentView: UIView!
    var model: String? {
        didSet {
            desL.text = model
        }
    }
    @IBOutlet weak var desL: UILabel!
    @IBInspectable
    var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = cornerRadius > 0
        }
    }
    @IBInspectable
    var contentColor: UIColor? {
        didSet {
           contentView.backgroundColor = contentColor
        }
    }
    @IBInspectable
    var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    @IBInspectable
    var borderColor: UIColor? {
        didSet {
            layer.borderColor = borderColor?.cgColor
        }
    }
   
    override init(frame: CGRect) {
        super.init(frame: frame)
          initFromXib()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        initFromXib()
    }
    func initFromXib() {
        self.contentView = CustomXibView.loadNibView(className: self)
        self.contentView.frame = bounds
        self.addSubview(contentView)
    }
 
    @IBAction func click(_ sender: UIButton) {
        print("漂亮的模特\(sender.tag)")
    }
}
