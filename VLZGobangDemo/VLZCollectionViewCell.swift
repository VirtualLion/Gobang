//
//  VLZCollectionViewCell.swift
//  VLZGobangDemo
//
//  Created by 韩云智 on 2017/10/26.
//  Copyright © 2017年 韩云智. All rights reserved.
//

import UIKit


class VLZCollectionViewCell: UICollectionViewCell {

    var indexPath : IndexPath? {
        didSet {
            
            guard let indexPath = indexPath else {
                return;
            }
            
            let myCenter = CGPoint(x: self.frame.size.width/2, y: self.frame.size.height/2)
            
            
            if indexPath.item == 0{
                
                drawLine(point: myCenter, toPoint: CGPoint(x: myCenter.x*2, y: myCenter.y), lineWith: 2.0)
                drawLine(point: myCenter, toPoint: CGPoint(x: myCenter.x, y: myCenter.y*2), lineWith: 2.0)
                
                drawLine(point: CGPoint(x:myCenter.x - 13, y:myCenter.y - 10), toPoint: CGPoint(x: myCenter.x*2, y: myCenter.y - 10), lineWith: 6.0)
                drawLine(point: CGPoint(x:myCenter.x - 10, y:myCenter.y - 10), toPoint: CGPoint(x: myCenter.x - 10, y: myCenter.y*2), lineWith: 6.0)
            }
            else if indexPath.item == 9 {
                
                drawLine(point: myCenter, toPoint: CGPoint(x: 0, y: myCenter.y), lineWith: 2.0)
                drawLine(point: myCenter, toPoint: CGPoint(x: myCenter.x, y: myCenter.y*2), lineWith: 2.0)
                
                drawLine(point: CGPoint(x:myCenter.x + 13, y:myCenter.y - 10), toPoint: CGPoint(x: 0, y: myCenter.y - 10), lineWith: 6.0)
                drawLine(point: CGPoint(x:myCenter.x + 10, y:myCenter.y - 10), toPoint: CGPoint(x: myCenter.x + 10, y: myCenter.y*2), lineWith: 6.0)
                
            }
            else if indexPath.item == 99 {
                drawLine(point: myCenter, toPoint: CGPoint(x: 0, y: myCenter.y), lineWith: 2.0)
                drawLine(point: myCenter, toPoint: CGPoint(x: myCenter.x, y: 0), lineWith: 2.0)
                
                drawLine(point: CGPoint(x:myCenter.x + 13, y:myCenter.y + 10), toPoint: CGPoint(x: 0, y: myCenter.y + 10), lineWith: 6.0)
                drawLine(point: CGPoint(x:myCenter.x + 10, y:myCenter.y + 10), toPoint: CGPoint(x: myCenter.x + 10, y: 0), lineWith: 6.0)
            }
            else if indexPath.item == 90 {
                drawLine(point: myCenter, toPoint: CGPoint(x: myCenter.x*2, y: myCenter.y), lineWith: 2.0)
                drawLine(point: myCenter, toPoint: CGPoint(x: myCenter.x, y: 0), lineWith: 2.0)
                
                drawLine(point: CGPoint(x:myCenter.x - 13, y:myCenter.y + 10), toPoint: CGPoint(x: myCenter.x*2, y: myCenter.y + 10), lineWith: 6.0)
                drawLine(point: CGPoint(x:myCenter.x - 10, y:myCenter.y + 10), toPoint: CGPoint(x: myCenter.x - 10, y: 0), lineWith: 6.0)
            }
                
            else if indexPath.item < 9 {
                drawLine(point: CGPoint(x: 0, y: myCenter.y), toPoint: CGPoint(x: myCenter.x*2, y: myCenter.y), lineWith: 2.0)
                drawLine(point: myCenter, toPoint: CGPoint(x: myCenter.x, y: myCenter.y*2), lineWith: 2.0)
                
                drawLine(point: CGPoint(x:0, y:myCenter.y - 10), toPoint: CGPoint(x: myCenter.x*2, y: myCenter.y - 10), lineWith: 6.0)
            }
            else if indexPath.item > 90 {
                drawLine(point: CGPoint(x: 0, y: myCenter.y), toPoint: CGPoint(x: myCenter.x*2, y: myCenter.y), lineWith: 2.0)
                drawLine(point: myCenter, toPoint: CGPoint(x: myCenter.x, y: 0), lineWith: 2.0)
                
                drawLine(point: CGPoint(x:0, y:myCenter.y + 10), toPoint: CGPoint(x: myCenter.x*2, y: myCenter.y + 10), lineWith: 6.0)
            }
            else if indexPath.item%10 == 0 {
                drawLine(point: myCenter, toPoint: CGPoint(x: myCenter.x*2, y: myCenter.y), lineWith: 2.0)
                drawLine(point: CGPoint(x: myCenter.x, y: 0), toPoint: CGPoint(x: myCenter.x, y: myCenter.y*2), lineWith: 2.0)
                
                drawLine(point: CGPoint(x:myCenter.x-10, y:0), toPoint: CGPoint(x: myCenter.x-10, y: myCenter.y*2), lineWith: 6.0)
            }
            else if indexPath.item%10 == 9 {
                drawLine(point: myCenter, toPoint: CGPoint(x: 0, y: myCenter.y), lineWith: 2.0)
                drawLine(point: CGPoint(x: myCenter.x, y: 0), toPoint: CGPoint(x: myCenter.x, y: myCenter.y*2), lineWith: 2.0)
                
                drawLine(point: CGPoint(x:myCenter.x+10, y:0), toPoint: CGPoint(x: myCenter.x+10, y: myCenter.y*2), lineWith: 6.0)
            }
            
            else {
                drawLine(point: CGPoint(x: 0, y: myCenter.y), toPoint: CGPoint(x: myCenter.x*2, y: myCenter.y), lineWith: 2.0)
                drawLine(point: CGPoint(x: myCenter.x, y: 0), toPoint: CGPoint(x: myCenter.x, y: myCenter.y*2), lineWith: 2.0)
            }
            
        }
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        upView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func upView() -> () {
        
    }
    
    func drawLine(point:CGPoint, toPoint:CGPoint, lineWith:CGFloat) -> () {
        
        let solidShapeLayer = CAShapeLayer()
        let solidShapePath =  CGMutablePath()
        
        solidShapeLayer.fillColor = UIColor.clear.cgColor
        solidShapeLayer.strokeColor = UIColor.black.cgColor
        solidShapeLayer.lineWidth = lineWith
        
        solidShapePath.move(to: point)
        solidShapePath.addLine(to: toPoint)
        
        solidShapeLayer.path = solidShapePath
        
        self.layer.addSublayer(solidShapeLayer)
    }
}
