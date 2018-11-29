//
//  ViewController.swift
//  AsyncImageLoading
//
//  Created by Mohit Kumar on 27/11/18.
//  Copyright © 2018 Mohit Kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    

    @IBOutlet weak var tableView: UITableView!
    var images:[String] = ["https://static-news.moneycontrol.com/static-mcnews/2018/09/Hyderabad_metro_2017-770x433.jpg","https://images.news18.com/ibnlive/uploads/2017/11/hyderabad-metro.jpg","https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/FE-10_06.jpg/300px-FE-10_06.jpg",
                           "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrJs8o3KMv540XJ-TTrrAuYFsOdynt5N8BpDnbPRIHg8im0BwL",
                           "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSgz7qa9amOxMUHEFCLpUIfnFDvcUde4h9PphEd7VfBZTgzL029w",
                           "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRzpfwaznhoP6CV6O6928txuaFpGbHIs7anegXc_61DcCwuXhL",
                           "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmMS0_YBsLV9fYLqcYe867YOBNNRA2QBHcwUc5paQSjqmuFVCQ",
                           "https://images.financialexpress.com/2018/06/delhi-metro-660-3.jpg",
                           "https://www.worldatlas.com/r/w728-h425-c728x425/upload/a7/b8/01/shutterstock-564527287.jpg",
                           "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1EjwE_XYF-txHiSQYuxfnOl2QrWXYnjhC3I8q0ZioOJtt9dCV",
                           "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJOxBQrZE0M--9HlikacIBrvrOcAEZJAKXHS5Wxd8-66HELPka",
                           "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrF_BPn3VbpAT--7gSK54Be85g7eLi91V30BGEKdPs4hBNmy_C",
                           "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7YZSnydiJHQHBPRhbdDB_6tbo93SnK-gdJL89UqhlRktGp2OY",
                           "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHLVOPKlha9PbeWpWWk2Ztk08keMHTTfbileMQZScw_j7omFHN",
                           "https://www.tecake.com/wp-content/uploads/2018/06/p03v9b0v.jpg",
                           "https://images.pexels.com/photos/130576/pexels-photo-130576.jpeg?auto=compress&cs=tinysrgb&h=350",
                           "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdRY7Y5VTa8qHA5RTol9P9sVkOFVSOb2IhucWco_xJnHUwUq8X",
                           "https://upload.wikimedia.org/wikipedia/commons/thumb/2/28/Chocolate_Hills_overview.JPG/1200px-Chocolate_Hills_overview.JPG",
                           "https://dwgyu36up6iuz.cloudfront.net/heru80fdn/image/upload/c_fill,d_placeholder_golfdigest.png,fl_progressive,g_face,h_450,q_80,w_800/v1496421873/golfdigest_major-championships-7-things-you-need-to-know-about-erin-hills.jpg",
                           "https://i.ytimg.com/vi/X57Lx9GllRg/maxresdefault.jpg",
                           "https://i.ytimg.com/vi/t1QzlkHv1R4/hqdefault.jpg",
                           "https://i.ytimg.com/vi/0Y6mBWyEDlY/hqdefault.jpg",
                           "https://seaworld.scdn3.secure.raxcdn.com/tampa/-/media/busch-gardens-tampa/listing-images/357x229/animals/2017_buschgardenstampabay_animals_cheetah2_357x229.ashx?version=1_201704101205",
                           "https://ichef.bbci.co.uk/news/660/cpsprodpb/3EBA/production/_96985061_gettyimages-531027327.jpg",
                           "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNO8Uo6q_J8V5YWpHKkpf65HDqBjg0-M_JZBQKkqvKJT990BZY",
                           "https://img.purch.com/w/660/aHR0cDovL3d3dy5saXZlc2NpZW5jZS5jb20vaW1hZ2VzL2kvMDAwLzA5NS80MjMvb3JpZ2luYWwvbWVlcmthdHMtZmlnaHRpbmcuanBn",
                           "https://insider.si.edu/wp-content/uploads/2017/04/SCTA-copy.jpg",
                           "https://files.allaboutbirds.net/wp-content/uploads/2015/06/prow-featured.jpg",
                           "https://upload.wikimedia.org/wikipedia/commons/thumb/6/66/Icterus-galbula-002.jpg/1200px-Icterus-galbula-002.jpg",
                           "https://s7d2.scene7.com/is/image/PetSmart/ARTHMB-NewPetBirdChecklist-20160818?$AR1104$",
                           "https://s7d2.scene7.com/is/image/PetSmart/AR1501_TOPIC_IMAGE-NewPetBirdChecklist-20160818?$AR1501$"
                           ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    // MARK: TableView datasource methods
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return images.count;
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200;
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:ExampleCell = self.tableView.dequeueReusableCell(withIdentifier: "examplecell") as! ExampleCell
        
        
        cell.cellImage.setImage(withUrl: images[indexPath.row], placeholderImage: UIImage(named: "test")!, onSuccess: { (image) in
            
            DispatchQueue.main.async {
                
                let cell1:ExampleCell? = tableView.cellForRow(at: indexPath) as? ExampleCell
                cell1?.cellImage.image = image
                
            }
            
        }) { (error) in
            
        }
        
        cell.cellImage.contentMode = .scaleAspectFit
        
        return cell;
       
    }
    

}

