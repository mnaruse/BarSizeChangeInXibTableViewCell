//
//  BarSizeChangeTableViewCell.swift
//  BarSizeChangeInXibTableViewCell
//
//  Created by MiharuNaruse on 2020/07/08.
//  Copyright © 2020 m_rn. All rights reserved.
//

import UIKit

class BarSizeChangeTableViewCell: UITableViewCell {

    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var title: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    override func layoutSubviews() {
        super.layoutSubviews()
    }

    func setCell(model: BarSizeChangeModel) {
        title.text = model.title

        let newView = UIView()
        newView.backgroundColor = UIColor.systemYellow
        newView.layer.cornerRadius = 6
        stackView.insertArrangedSubview(newView, at: 0)

        let maxWidth = newView.superview!.bounds.size.width

        newView.translatesAutoresizingMaskIntoConstraints = false
        newView.heightAnchor.constraint(equalToConstant: 40).isActive = true
        newView.widthAnchor.constraint(equalToConstant: maxWidth * (CGFloat(model.barWidthPercent) / 100)).isActive = true
        newView.centerYAnchor.constraint(equalTo: newView.superview!.centerYAnchor).isActive = true
        newView.leadingAnchor.constraint(equalTo: newView.superview!.leadingAnchor).isActive = true
        newView.trailingAnchor.constraint(equalTo: title.leadingAnchor, constant: -8).isActive = true
    }
}
