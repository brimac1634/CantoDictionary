//
//  Entries.swift
//  CantoDict
//
//  Created by Brian MacPherson on 2/5/2018.
//  Copyright © 2018 Brian MacPherson. All rights reserved.
//

import Foundation

class Entries {
    
    enum WordType {
        case Noun
        case Verb
        case Adjective
    }
    
    
    
    var englishWord : String = ""
    var cantoneseWord : String = ""
    var pronunciation : String = ""
    var wordType : WordType = nil
    var sentenceExample : String = ""
    
}
