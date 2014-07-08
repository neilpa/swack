//
//  OpCode.swift
//  Swack
//
//  Created by Neil Pankey on 7/7/14.
//  Copyright (c) 2014 Neil Pankey. All rights reserved.
//

// List of opcodes supported by our VM

// pop 2 operands, operate, push result
// note - second operand at top of stack, first is below it
let IADD    = 1 // add
let ISUB    = 2 // subtract
let IMUL    = 3 // multiply
let ILT     = 4 // less than
let IEQ     = 5 // equal

// brances
let BR      = 6 // branch <addr> always
let BRT     = 7 // pop operand, branch <addr> if operand true
let BRF     = 8 // pop operand, branch <addr> if operand false

// push a constant
let ICONST  = 9

// load
let LOAD    = 10 // LOAD <offset> from frame pointer relative
let GLOAD   = 11 // GLOAD <addr> from data memory

// store
let STORE   = 12 // STORE <offset> to frame pointer relative
let GSTORE  = 13 // GSTORE <addr> to data memory

// pop operand and print it to stdout
let PRINT   = 14

// discard top operand
let POP     = 15

// stop
let HALT    = 16

// TODO functions
// call
// ret
