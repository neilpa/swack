//
//  main.swift
//  svm
//
//  Created by Neil Pankey on 7/7/14.
//  Copyright (c) 2014 Neil Pankey. All rights reserved.
//

import Foundation

let prog: Int[] = [
    ICONST, 99,
    PRINT,
    HALT
]

let vm = VirtualMachine(program: prog, mem: 0, main: 0)
vm.cpu()
