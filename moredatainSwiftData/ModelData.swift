//
//  Media.swift
//  moredatainSwiftData
//
//  Created by duverney muriel on 23/11/23.
//

import Foundation
import SwiftUI
import SwiftData


@Model
final class User{
    var avatar: Data?
    var name: String
    var date: Date
    
    @Relationship(deleteRule: .cascade) var post: [Post]
    
    init(avatar: Data? = nil, name: String, date: Date, post: [Post]) {
        self.avatar = avatar
        self.name = name
        self.date = date
        self.post = []
    }
}


@Model
class Post {
    var imgPost: Data?
    var caption: String
    var descriptions: String
    var data: Date
    var isLiked: Bool
    
    @Relationship(deleteRule: .cascade) var comentary: [Comentary]
    
    init(imgPost: Data? = nil, caption: String, descriptions: String, data: Date, isLiked: Bool, comentary: [Comentary]) {
        self.imgPost = imgPost
        self.caption = caption
        self.descriptions = descriptions
        self.data = data
        self.isLiked = isLiked
        self.comentary = comentary
    }
}

// comentaries model
@Model
class Comentary{
    var comment: String
    var date: Date
    var isMarked: Bool
    
    @Relationship var post: [Post]
     
    init(comment: String, date: Date, isMarked: Bool) {
        self.comment = comment
        self.date = date
        self.isMarked = isMarked
    }
    
}
