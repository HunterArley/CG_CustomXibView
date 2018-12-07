//
//  CGBaseView.swift
//  CG_CustomXibView
//
//  Created by yj on 2018/12/7.
//  Copyright © 2018年 CaoDeDi. All rights reserved.
// 用于继承的父视图

import UIKit

@IBDesignable
class CGBaseView: UIView, Nibloadable {
    var contentView: UIView!
    @IBInspectable
    var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = cornerRadius > 0
        }
    }
    @IBInspectable
    var backColor: UIColor? {
        didSet {
            contentView.backgroundColor = backColor
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
        self.contentView = CGBaseView.loadNibView(className: self)
        self.contentView.frame = bounds
        self.addSubview(contentView)
    }
}
