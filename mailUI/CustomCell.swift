//
//  CustomCell.swift
//  mailUI
//
//  Created by Jeyaram on 04/05/21.
//

import UIKit

class CustomCell: UITableViewCell {

    static let identifier = "mailCell"
    @IBOutlet var mailImageview : UIImageView!
    @IBOutlet var attachImageView : UIImageView!
    @IBOutlet var senderName : UILabel!
    @IBOutlet var memorySize : UILabel!
    @IBOutlet var dateOfMail : UILabel!
    @IBOutlet var subjectOfMail : UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    public func configure (from sender:String,subject:String,on date:String,size:String,hasAttachments:Bool,isMailOpened:Bool){
//        attachImageView.isHidden = !hasAttachments
        if(hasAttachments){
            attachImageView.widthAnchor.constraint(equalToConstant: 0).isActive = true
        }
//
        
        senderName.text = sender
        subjectOfMail.text = subject
        dateOfMail.text = date
        memorySize.text = size
      let mailName =  (isMailOpened) ? "mail" : "mailClosed"
        mailImageview.image = UIImage(named: mailName)
        
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
