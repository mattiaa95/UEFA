//
//  ClubSquadViewController+TableView.swift
//  UEFA
//
//  Created by Mattia La Spina on 22/4/22.
//

import UIKit

extension ClubSquadViewController: UITableViewDelegate,UITableViewDataSource {
    
    func initTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "PlayerCell", bundle: nil), forCellReuseIdentifier: "PlayerCell")
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlayerCell") as? PlayerCell
        cell!.playerName.text = PlayersModel.squadMocked.squad[indexPath.section].players[indexPath.row]
//        TODO: Add player data to cell
        return cell!
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return PlayersModel.squadMocked.squad[section].section
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return PlayersModel.squadMocked.squad.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return PlayersModel.squadMocked.squad[section].players.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
}
