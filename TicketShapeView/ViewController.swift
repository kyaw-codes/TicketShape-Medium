//
//  ViewController.swift
//  TicketShapeView
//
//  Created by Ko Kyaw on 31/05/2021.
//

import UIKit

class ViewController: UIViewController {
    
    let ticketView = TicketView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(ticketView)
        ticketView.translatesAutoresizingMaskIntoConstraints = false
        ticketView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        ticketView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        ticketView.widthAnchor.constraint(equalToConstant: view.frame.width - 100).isActive = true
        ticketView.heightAnchor.constraint(equalToConstant: view.frame.height - 200).isActive = true
    }
}

