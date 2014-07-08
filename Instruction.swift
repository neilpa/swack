//
//  Instruction.swift
//  Swack
//
//  Created by Neil Pankey on 7/7/14.
//  Copyright (c) 2014 Neil Pankey. All rights reserved.
//

import Foundation

struct Instruction {
    let name: String;
    let operands: Int;
    
    init(_ name: String) {
        self.init(name, 0)
    }
    
    init (_ name: String, _ operands: Int) {
        self.name = name
        self.operands = operands
    }
}

// Index maps to opcode values
let instructions = [
    Instruction("INVALID"),
    Instruction("iadd"),
    Instruction("isub"),
    Instruction("imul"),
    Instruction("ilt"),
    Instruction("ieq"),
    Instruction("br", 1),
    Instruction("brt", 1),
    Instruction("brf", 1),
    Instruction("iconst", 1),
    Instruction("load", 1),
    Instruction("gload", 1),
    Instruction("store", 1),
    Instruction("gstore", 1),
    Instruction("print"),
    Instruction("pop"),
    Instruction("halt")
]
