//
//  TableViewController.swift
//  Werkstuk1_Jany_Ertveldt
//
//  Created by Jany Ertveldt on 30/03/18.
//  Copyright © 2018 Jany Ertveldt. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    //50.913641, 4.198251 -> Asse
    //50.872762,4.248058 -> Groot Bijgaarden
    //50.866648, 4.162301 -> Ternat
    var persoon_1 = Persoon(voornaam: "Cristiano",naam: "Ronaldo", image: "cristiano", straat: "Hazelaarstraat", huisnummer: 21, postcode: 1702, gemeente: "Groot bijgaarden", gpsLatitude: 50.872762, gpsLongitude: 4.248058, telefoonnummer: 024666703)
    var persoon_2 = Persoon(voornaam: "Lionel",naam: "Messi", image: "messi", straat: "Bosstraat", huisnummer: 21, postcode: 1702, gemeente: "Groot bijgaarden", gpsLatitude: 50.913641, gpsLongitude: 4.198251, telefoonnummer: 024666703)
    var persoon_3 = Persoon(voornaam: "Neymar",naam: "Dos Santos", image: "neymar", straat: "Ezelstraat", huisnummer: 21, postcode: 1702, gemeente: "Groot bijgaarden", gpsLatitude: 50.866648, gpsLongitude: 4.162301, telefoonnummer: 024666703)
    
    var personenArray = [Persoon]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        personenArray.append(persoon_1)
        personenArray.append(persoon_2)
        personenArray.append(persoon_3)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return personenArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)

       
    
        cell.imageView?.image = UIImage(named: personenArray[indexPath.row].image)
        cell.textLabel?.text = "\(personenArray[indexPath.row].voornaam)"+" "+"\(personenArray[indexPath.row].naam)"
        //cell.detailTextLabel?.text = personenArray[indexPath.row].naam
        
    
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 85.0;//Choose your custom row height
    }
    
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let nextvc = segue.destination as? ViewController {
            let indexpath = self.tableView.indexPathForSelectedRow!
            nextvc.temp = self.personenArray[indexpath.row]
        }
    }
    

}
