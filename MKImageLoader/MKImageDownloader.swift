//
//  MKImageDownloader.swift
//  AsyncImageLoading
//
//  Created by Mohit Kumar on 27/11/18.
//  Copyright © 2018 Mohit Kumar. All rights reserved.
//

import UIKit

class MKImageDownloader: NSObject {

    func downloadAndCacheImage(url:String,onSuccess:@escaping (_ image:UIImage?) -> Void, onFailure:@escaping (_ error:Error?) -> Void) -> Void {
        
        let url = URL(string: url )
        
        URLSession.shared.dataTask(with: url!, completionHandler: { (data, response, error) in
            
            if error != nil {
                print(error!)
                onFailure(error)
            }else{
                onSuccess(UIImage(data: data!))
            }
            
        }).resume()
    }
    
  
    
}
