//
//  BookModel.swift
//  YaLearn
//
//  Created by Thabet on 3/2/20.
//  Copyright © 2020 Thabet. All rights reserved.
//


import Foundation
 
public class BookModel {
    public var book_id : Int?
    public var category_id : Int?
    public var Module_id : Int?
    public var title : String?
    public var description : String?
    public var default_image : String?
    public var mobile_image : String?
    public var picture : String?
    public var wishlist_status : Int?

/**
    Returns an array of models based on given dictionary.
    
    Sample usage:
    let homeSubData_list = HomeSubData.modelsFromDictionaryArray(someDictionaryArrayFromJSON)

    - parameter array:  NSArray from JSON dictionary.

    - returns: Array of HomeSubData Instances.
*/
    public class func modelsFromDictionaryArray(array:NSArray) -> [BookModel]
    {
        var models:[BookModel] = []
        for item in array
        {
            models.append(BookModel(dictionary: item as! NSDictionary)!)
        }
        
        return models
    }

/**
    Constructs the object based on the given dictionary.
    
    Sample usage:
    let homeSubData = HomeSubData(someDictionaryFromJSON)

    - parameter dictionary:  NSDictionary from JSON.

    - returns: HomeSubData Instance.
*/
    required public init?(dictionary: NSDictionary) {

        book_id = dictionary["book_id"] as? Int ?? 0
        category_id = dictionary["category_id"] as? Int ?? 0
        Module_id = dictionary["Module_id"] as? Int ?? 0
        title = dictionary["title"] as? String ?? ""
        description = dictionary["description"] as? String ?? ""
        default_image = dictionary["default_image"] as? String ?? ""
        mobile_image = dictionary["mobile_image"] as? String ?? ""
        picture = dictionary["picture"] as? String ?? ""
        wishlist_status = dictionary["wishlist_status"] as? Int ?? 0
    }

        
/**
    Returns the dictionary representation for the current instance.
    
    - returns: NSDictionary.
*/
    public func dictionaryRepresentation() -> NSDictionary {

        let dictionary = NSMutableDictionary()

        dictionary.setValue(self.book_id, forKey: "admin_video_id")
        dictionary.setValue(self.category_id, forKey: "category_id")
        dictionary.setValue(self.Module_id, forKey: "Module_id")
        dictionary.setValue(self.title, forKey: "title")
        dictionary.setValue(self.description, forKey: "description")
        dictionary.setValue(self.default_image, forKey: "default_image")
        dictionary.setValue(self.mobile_image, forKey: "mobile_image")
        dictionary.setValue(self.picture, forKey: "picture")
        dictionary.setValue(self.wishlist_status, forKey: "wishlist_status")
        
        return dictionary
    }

}
