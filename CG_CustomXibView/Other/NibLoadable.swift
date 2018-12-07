//
//  NibLoadable.swift
//  SwiftTester
//
//  Created by yj on 2018/10/26.
//  Copyright © 2018年 曹先生. All rights reserved.
//

import Foundation
import UIKit

protocol Nibloadable {
    
}
extension Nibloadable where Self : UIView {
    /**
     * 如下使用两种方法替代：storboard报错 Failed to update auto layout status但程序还是可以运行的切不显示view内容尴尬了。
     * 报错原因参考：https://www.jianshu.com/p/a5351d270ac1
     let nib = UINib(nibName: "CustomXibView", bundle: nil)
     self.contentView = nib.instantiate(withOwner: nil, options: nil)[0] as! UIView
     self.contentView.frame = bounds
     self.addSubview(contentView)
     或者
     self.contentView = CustomXibView.loadNib()
     self.contentView.frame = bounds
     addSubview(self.contentView)
     */
    static func loadNibView(className: Self) -> UIView {
        let myclass = type(of: className)
        let bundle = Bundle(for: myclass)
        let name = NSStringFromClass(myclass).components(separatedBy: ".").last
        let nib = UINib(nibName: name!, bundle: bundle)
        return nib.instantiate(withOwner: className, options: nil)[0] as! UIView
    }
    // 可以直接返回想要的自定义VIew
    static func loadNib(_ nibname : String? = nil) -> Self {
        let loadName = nibname == nil ? "\(self)" : nibname!
        return Bundle.main.loadNibNamed(loadName, owner: nil, options: nil)?.first as! Self
    }
 
}
