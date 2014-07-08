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
    var sp: Int = -1 // stack pointer
    var fp: Int = -1 // frame pointer
    
    // Stack
    var stack: Int[] = Int[](count: 4096, repeatedValue: 0)
    
    convenience init(program: Int[]) {
        self.init(program: program, mem: 0, main: 0)
    }
    
    init(program: Int[], mem: Int, main: Int) {
        // Store our program and allocate main memory
        code = program
        data = Int[](count: mem, repeatedValue: 0)

        // Setup our registers
        ip = main
    }
    
    // Runs the fetch-decode-execute cycle for our VM
    func cpu() -> () {
        while (ip < code.count) {
            let opcode = code[ip++]
            switch opcode {
            
            case IADD:
                let b = stack[sp--]
                let a = stack[sp--]
                stack[++sp] = a + b
                
            case ISUB:
                let b = stack[sp--]
                let a = stack[sp--]
                stack[++sp] = a - b

            case IMUL:
                let b = stack[sp--]
                let a = stack[sp--]
                stack[++sp] = a * b

            case ILT:
                let b = stack[sp--]
                let a = stack[sp--]
                stack[++sp] = a < b ? 1 : 0
            
            case ILT:
                let b = stack[sp--]
                let a = stack[sp--]
                stack[++sp] = a == b ? 1 : 0
                
            case BR:
                break
            
            case BRT:
                break
                
            case BRF:
                break

            case ICONST:
                let operand = code[ip++]
                stack[++sp] = operand
                
            case LOAD:
                break

            case GLOAD:
                break

            case STORE:
                break
            
            case GSTORE:
                break
                
            case PRINT:
                let operand = stack[sp--]
                println(operand)

            case HALT:
                break

            default:
                println("Error unrecognized opcode")

            }
        }
    }
}
