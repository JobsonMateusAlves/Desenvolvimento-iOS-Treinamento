//
//  ViewController.swift
//  Treinamento-iOS
//
//  Created by Jobson Mateus on 12/07/19.
//  Copyright © 2019 Treinamento. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var tableView: UITableView!
    
    var service: GitApiService!
    
    var repositoriosView: [RepositorioView] = []
    var strings: [[String]] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.service = GitApiService(delegate: self)
        
        self.setupTableView()
    }
    
    func setupTableView() {
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.register(cellType: RepositorioTableViewCell.self)
    }
    
    @IBAction func confirmar(_ sender: Any) {
        
        self.service.getRepositorio(username: self.textField.text ?? "")
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
//    func numberOfSections(in tableView: UITableView) -> Int {
//
//        return 1
//    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.repositoriosView.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(for: indexPath) as RepositorioTableViewCell
        
        cell.bind(repositorio: self.repositoriosView[indexPath.row])
        
        return cell
    }
}


extension ViewController: GitApiServiceDelegate {
    func success() {
        
        self.repositoriosView = RepositorioViewModel.getAll()
        self.tableView.reloadData()
//        for repositorio in self.repositoriosView {
//            print("\n$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$\n")
//            print("nome: \(repositorio.name)")
//            print("language: \(repositorio.language)")
//        }
    }
    
    func failure(error: String) {
        
        print(error)
    }
}

