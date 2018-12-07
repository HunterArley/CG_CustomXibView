//
//  ViewController.swift
//  CG_CustomXibView
//
//  Created by yj on 2018/12/6.
//  Copyright © 2018年 CaoDeDi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var testXibView: TestXibView!
    @IBOutlet weak var customXibView: CustomXibView!
    @IBOutlet weak var contentView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
       let des = """
        嫌写的多，用继承啊！
        协议和继承配合使用
        """
        testXibView.model = ["des": des]
        // 纯代码添加一个自定义VIew
        let mv = CustomXibView(frame: CGRect(x: 0, y: customXibView.frame.maxY+30, width: customXibView.bounds.size.width, height: customXibView.bounds.size.height))
        mv.model = "纯代码添加一个自定义VIew"
        mv.contentColor = .cyan
        contentView.addSubview(mv)
        
        /*
        let testView = TestXibView(frame: CGRect(x: 0, y: customXibView.frame.maxY+30, width: customXibView.bounds.size.width, height: customXibView.bounds.size.height))
       
        contentView.addSubview(testView)
     */

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

