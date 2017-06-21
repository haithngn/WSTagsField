//
//  WSTag.swift
//  Whitesmith
//
//  Created by Ricardo Pereira on 12/05/16.
//  Copyright © 2016 Whitesmith. All rights reserved.
//

import Foundation

public struct WSTag: Hashable {

    public let text: String
    
    public let token: String

    public init(_ text: String,_ token: String) {
        self.text = text
        self.token = token
    }

    public var hashValue: Int {
        return self.token.hashValue
    }

    public func equals(_ other: WSTag) -> Bool {
        return self.token == other.token
    }

}

public func ==(lhs: WSTag, rhs: WSTag) -> Bool {
    return lhs.equals(rhs)
}
