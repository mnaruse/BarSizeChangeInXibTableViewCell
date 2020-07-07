//
//  BarSizeChangeModel.swift
//  BarSizeChangeInXibTableViewCell
//
//  Created by MiharuNaruse on 2020/07/08.
//  Copyright © 2020 m_rn. All rights reserved.
//

struct BarSizeChangeModel {
    let barWidthPercent: Double
    let title: String

    init(barWidthPercent: Double, title: String) {
        self.barWidthPercent = barWidthPercent
        self.title = title
    }
}
