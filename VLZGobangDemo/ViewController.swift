//
//  ViewController.swift
//  VLZGobangDemo
//
//  Created by 韩云智 on 2017/10/26.
//  Copyright © 2017年 韩云智. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    lazy var collectionView = { () -> UICollectionView in
        let collectionViewLayout = UICollectionViewFlowLayout.init()
        
        collectionViewLayout.itemSize = CGSize(width: view.frame.size.width/10, height: view.frame.size.width/10)
        collectionViewLayout.minimumLineSpacing = 0
        collectionViewLayout.minimumInteritemSpacing = 0
        
        let collectionView = UICollectionView.init(frame: CGRect(x: 0, y: 80, width: view.frame.size.width, height: view.frame.size.width), collectionViewLayout: collectionViewLayout)
        
        collectionView.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        collectionView.register(VLZCollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        
        return collectionView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        view.addSubview(collectionView)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
//    MARK: collection代理
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell : VLZCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! VLZCollectionViewCell
        cell.indexPath = indexPath
        
        return cell
    }

}

