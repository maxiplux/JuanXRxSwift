//
//  ContactLis.swift
//  JuanXRxSwift
//
//  Created by JUAN on 2/01/18.
//  Copyright © 2018 net.juanfrancisco.blog. All rights reserved.
//

import Foundation
import UIKit

class ContactList: UIViewController {
    
    //MARK: - Properties
    let contactListViewModel = ContactListViewModel()
    @IBOutlet weak var contactListTableView: UITableView!

    
    //MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contactListTableView.dataSource = self
        contactListTableView.delegate = self
    }
}
//MARK: - TableView DataSource

extension ContactList: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactListViewModel.data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ContactCell") else {
            return UITableViewCell()
        }
        
        let contact = contactListViewModel.data[indexPath.row]
        
        cell.textLabel?.text = contact.name
        cell.detailTextLabel?.text = contact.phone
        cell.imageView?.image = contact.image
        return cell
    }
}

extension ContactList: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        print("\(contactListViewModel.data[indexPath.row].name)")
    }
}
