//
//  CollectionViewCell.swift
//  UberEats
//
//  Created by 이혜주 on 06/02/2019.
//  Copyright © 2019 team-b1. All rights reserved.
//

import UIKit

class SaleCollectionViewCell: UICollectionViewCell {

    let saleTitleLabel: UILabel = {
        let label = UILabel().setupWithFontSize(14)
        label.text = "친구 초대"
        label.textColor = .gray
        return label
    }()

    let saleContentsLabel: UILabel = {
        let label = UILabel().setupWithFontSize(15)
        label.text = "주문 시 ₩5,000 할인받기"
        return label
    }()

    let burgerImageView: UIImageView = {
        let imageView = UIImageView().initImageView("sale")
        imageView.backgroundColor = .lightGray
        return imageView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupLayout()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupLayout() {
        backgroundColor = .white

        addSubview(saleTitleLabel)
        addSubview(saleContentsLabel)
        addSubview(burgerImageView)

        NSLayoutConstraint.activate([
            saleTitleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 23),
            saleTitleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 23),

            saleContentsLabel.topAnchor.constraint(equalTo: saleTitleLabel.bottomAnchor, constant: 15),
            saleContentsLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 23),

            burgerImageView.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            burgerImageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10),
            burgerImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -13),
            burgerImageView.widthAnchor.constraint(equalTo: burgerImageView.heightAnchor)
            ])
    }

}
