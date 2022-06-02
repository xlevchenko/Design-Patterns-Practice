//
//  ViewController.swift
//  Factory Method [Homework]
//
//  Created by Olexsii Levchenko on 6/2/22.
//

import UIKit


class ViewController: UIViewController {
    
    var airplaneButton: UIButton = {
        let button = UIButton(type: .roundedRect)
        button.setTitle("Start Plane Delivery", for: .normal)
        button.backgroundColor = .systemYellow
        button.layer.cornerRadius = 16
        button.tintColor = .black
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button.widthAnchor.constraint(equalToConstant: 150).isActive = true
        return button
    }()
    
    var truckButton: UIButton = {
        let button = UIButton(type: .roundedRect)
        button.setTitle("Start Road Delivery", for: .normal)
        button.backgroundColor = .systemYellow
        button.layer.cornerRadius = 16
        button.tintColor = .black
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button.widthAnchor.constraint(equalToConstant: 150).isActive = true
        return button
    }()
    
    var statusDelivery: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 20)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "0"
        return label
    }()
    
    var status = StatusDelivery.self
    
    
    var deliveryArray = [DeliveryType]() //масив такого самого типу як і наш протокол

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        setupConstarin()
        
        airplaneButton.addTarget(self, action: #selector(handlePlane), for: .touchUpInside)
        truckButton.addTarget(self, action: #selector(handleTruck), for: .touchUpInside)
    }
    
    
    @objc func handlePlane() {
        //init delivery type
        createDelivey(type: .airplane)
        statusDelivery.text = "Finish delivery on Plane"
        runDelivery()
    }
    
    @objc func handleTruck() {
        //init delivery type
        createDelivey(type: .truck)
        runDelivery()
        statusDelivery.text = "Finish delivery on Truck"
    }
    
    //create delivery type
    func createDelivey(type delivery: DeliveryTypes) {
        let delivery = Logistic.delivery.createDelivery(delivery: delivery)
        deliveryArray.append(delivery)
    }
    
    //create run delivery
    func runDelivery() {
        for delivery in deliveryArray {
            delivery.startDelivery()
            delivery.finishDelivery()
        }
    }
    
    private func setupConstarin() {
        let stackView = UIStackView(arrangedSubviews: [airplaneButton, truckButton])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.alignment = .center
        stackView.distribution = .fillEqually
        stackView.spacing = 20
        view.addSubview(stackView)
        
        view.addSubview(statusDelivery)
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.heightAnchor.constraint(equalToConstant: 155),
            
            statusDelivery.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 10),
            statusDelivery.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
}

