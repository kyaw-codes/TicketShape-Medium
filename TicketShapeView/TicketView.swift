//
//  TicketView.swift
//  TicketShapeView
//
//  Created by Ko Kyaw on 31/05/2021.
//

import UIKit

class TicketView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .clear
        layer.cornerRadius = 18
    }
    
    override func layoutSubviews() {
        drawTicket()
    }
    
    private func drawTicket() {
        let ticketShapeLayer = CAShapeLayer()
        ticketShapeLayer.frame = self.bounds
        ticketShapeLayer.fillColor = UIColor.white.cgColor

        let ticketShapePath = UIBezierPath(roundedRect: ticketShapeLayer.bounds, cornerRadius: 18)

        let topLeftArcPath = UIBezierPath(arcCenter: CGPoint(x: 0, y: 100),
                                          radius: 36 / 2,
                                          startAngle:  CGFloat(Double.pi / 2),
                                          endAngle: CGFloat(Double.pi + Double.pi / 2),
                                          clockwise: false)
        topLeftArcPath.close()
        
        let topRightArcPath = UIBezierPath(arcCenter: CGPoint(x: ticketShapeLayer.frame.width, y: 100),
                                          radius: 36 / 2,
                                          startAngle:  CGFloat(Double.pi / 2),
                                          endAngle: CGFloat(Double.pi + Double.pi / 2),
                                          clockwise: true)
        topRightArcPath.close()
        
        let bottomLeftArcPath = UIBezierPath(arcCenter: CGPoint(x: 0, y: frame.height - 200),
                                          radius: 36 / 2,
                                          startAngle:  CGFloat(Double.pi / 2),
                                          endAngle: CGFloat(Double.pi + Double.pi / 2),
                                          clockwise: false)
        bottomLeftArcPath.close()
        
        let bottomRightArcPath = UIBezierPath(arcCenter: CGPoint(x: ticketShapeLayer.frame.width, y: frame.height - 200),
                                          radius: 36 / 2,
                                          startAngle:  CGFloat(Double.pi / 2),
                                          endAngle: CGFloat(Double.pi + Double.pi / 2),
                                          clockwise: true)
        bottomRightArcPath.close()
        
        ticketShapePath.append(topLeftArcPath)
        ticketShapePath.append(topRightArcPath.reversing())
        ticketShapePath.append(bottomLeftArcPath)
        ticketShapePath.append(bottomRightArcPath.reversing())

        ticketShapeLayer.path = ticketShapePath.cgPath
        
        layer.addSublayer(ticketShapeLayer)
        
        // Add elevation
        layer.shadowColor = UIColor.systemGray.cgColor
        layer.shadowOpacity = 0.4
        layer.shadowRadius = 10
        layer.shadowOffset = .zero
    }
    
    required init?(coder: NSCoder) {
        fatalError("No storyboard here")
    }
}
