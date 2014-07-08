//
//  VirtualMachine.swift
//  Swack
//
//  Created by Neil Pankey on 7/7/14.
//  Copyright (c) 2014 Neil Pankey. All rights reserved.
//

import Foundation

// Simple stack based virtual machine written in Swift
// https://www.youtube.com/watch?v=OjaAToVkoTw

class VirtualMachine {

    // Memory
    let code: Int[]
    var data: Int[]

    // Registers
    var ip: Int // instruction pointer
    var sp: Int // stack pointer
    
    // Stack
    var stack: Int[] = Int[](count: 4096, repeatedValue: 0)
    
    init(program: Int[], mem: Int, main: Int) {
        // Store our program and allocate main memory
        code = program
        data = Int[](count: mem, repeatedValue: 0)

        // Setup our registers
        ip = main
        sp = -1
    }
    
    // Runs the fetch-decode-execute cycle for our VM
    func cpu() -> () {
        while (ip < code.count) {
            let opcode = code[ip++]
            switch opcode {

            // Push a constant onto the stack
            case ICONST:
                let operand = code[ip++]
                stack[++sp] = operand

            // Print the top of the stack
            case PRINT:
                let operand = stack[sp--]
                println(operand)

            // Halt execution
            case HALT:
                break

            default:
                println("Error unrecognized opcode")

            }
        }
    }
}
