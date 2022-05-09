//
//  CustomHeader.swift
//  ContactBook
//
//  Created by Maksim Grischenko on 09.05.2022.
//

import UIKit

class CustomHeader: UITableViewHeaderFooterView {
    
    let title = UILabel()
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        configureContents()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureContents() {
        title.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.addSubview(title)
        
        // Center the image vertically and place it near the leading
        // edge of the view. Constrain its width and height to 50 points.
        NSLayoutConstraint.activate([
            title.leadingAnchor.constraint(equalTo: contentView.layoutMarginsGuide.leadingAnchor),
            title.heightAnchor.constraint(equalToConstant: 30),
            title.trailingAnchor.constraint(equalTo:
                                                contentView.layoutMarginsGuide.trailingAnchor),
            title.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
        ])
    }
}


