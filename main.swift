//
//  main.swift
//  Swack
//
//  Created by Neil Pankey on 7/7/14.
//  Copyright (c) 2014 Neil Pankey. All rights reserved.
//

import Foundation

let prog: Int[] = [
    ICONST, 99,
    ICONST, 88,
    ISUB,
    ICONST, 2,
    IMUL,
    ICONST, 6,
    IADD,
    PRINT,  // should print 28
    HALT
]

let vm = VirtualMachine(program: prog)
vm.cpu()
