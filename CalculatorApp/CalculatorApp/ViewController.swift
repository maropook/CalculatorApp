//
//  ViewController.swift
//  CalculatorApp
//
//  Created by 長谷川樹 on 2021/08/16.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //セルの数
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //セルの情報
        let cell = calculatorCollectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath)
        cell.backgroundColor = .blue
        return cell
    }
    

    @IBOutlet weak var calculatorHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var calculatorCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        calculatorCollectionView.delegate = self
        calculatorCollectionView.dataSource = self
        calculatorCollectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cellId")
    }


}

