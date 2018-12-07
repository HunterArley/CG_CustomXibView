//
//  TestXibView.swift
//  CG_CustomXibView
//
//  Created by yj on 2018/12/7.
//  Copyright © 2018年 CaoDeDi. All rights reserved.
//

import UIKit

class TestXibView: CGBaseView {
    var model: [String: String]? {
        didSet {
            desL.text = model?["des"]
        }
    }
    @IBOutlet weak var desL: UILabel!
    /*
    // 要手写其他布局，重写这几个方法
    override init(frame: CGRect) {
        super.init(frame: frame)
        initFromXib()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initFromXib()
    }
    func initFromXib() {
        self.contentView = TestXibView.loadNibView(className: self)
        self.contentView.frame = bounds
        self.addSubview(contentView)
     //开始编写其他布局
    }
 */
}
