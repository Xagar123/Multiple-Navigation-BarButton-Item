//
//  ViewController.swift
//  MultipleNavigationBarButton Item
//
//  Created by Admin on 07/12/22.

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        title = "Bar button item"
        navigationController?.navigationBar.tintColor = .label
        configureItem()
        
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        view.addSubview(button)
        button.center = view.center
        button.backgroundColor = .systemBlue
        button.setTitle("Go to view 2", for: .normal)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }

    let addButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: nil)
    let circle = UIBarButtonItem(image: UIImage(systemName: "rectangle.grid.2x2"), style: .done, target: self, action: nil)
                            
    func configureItem(){
        self.navigationItem.rightBarButtonItems = [addButton,circle]
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "gear"), style: .done, target: self, action: nil)
        
        
    }

    @objc func didTapButton(){
        let vc = UIViewController()
        vc.title = "View 2"
        vc.view.backgroundColor = .systemGreen
        vc.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Sign Out", style: .done, target: self, action: nil)
    }
}

