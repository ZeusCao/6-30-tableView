//
//  ViewController.swift
//  17-6-30-tableView
//
//  Created by Zeus on 2017/6/30.
//  Copyright © 2017年 Zeus. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        setUpUI()
    }

    
    func setUpUI() {
        
        // 1.创建表格
        let tv = UITableView(frame: view.bounds, style: .plain)
        
        // 2.添加到视图
        view.addSubview(tv)
        
        // 3.注册可重用cell（UITableViewcell class）
        tv.register(UITableViewCell.self, forCellReuseIdentifier: "cellId")
        
        // 4. 设置数据源
        tv.dataSource = self
        
    }
    
    // MARK --- UITableViewDataSource 
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
        
        // 提示 textLabel是可选的
        cell.textLabel?.text = "\(indexPath.row)"
        return cell
    }
    
    

}

