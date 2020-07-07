//
//  BarSizeChangeViewController.swift
//  BarSizeChangeInXibTableViewCell
//
//  Created by MiharuNaruse on 2020/07/08.
//  Copyright © 2020 m_rn. All rights reserved.
//

import UIKit
import Foundation

class BarSizeChangeViewController: UIViewController, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "BarSizeChangeTableViewCell", bundle: nil), forCellReuseIdentifier: "CustomCell")
    }
}

extension BarSizeChangeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as! BarSizeChangeTableViewCell
        setTableViewCell(cell: cell, indexPath: indexPath)

        return cell
    }

    private func setTableViewCell(cell: BarSizeChangeTableViewCell, indexPath: IndexPath) {
        let model = BarSizeChangeModel(barWidthPercent: Double.random(in: 1...100), title: "No. \(indexPath.row)")
        cell.setCell(model: model)
    }

}
