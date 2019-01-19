//
//  MIDIByte+Extensions.swift
//  AudioKit
//
//  Created by Jeff Cooper on 10/31/18.
//  Copyright © 2018 AudioKit. All rights reserved.
//

import Foundation

extension MIDIByte {
    /// This limits the range to be from 0 to 127
    func lower7bits() -> MIDIByte {
        return self & 0x7F
    }

    /// This limits the range to be from 0 to 16
    var lowBit: MIDIByte {
        return self & 0xF
    }

    var highBit: MIDIByte {
        return self >> 4
    }
}

extension MIDIWord {
    init(byte1: MIDIByte, byte2: MIDIByte) {
        let x = MIDIWord(byte1)
        let y = MIDIWord(byte2) << 7
        self = y + x
    }
}

enum MIDITimeFormat: Int {
    case ticksPerBeat = 0
    case framesPerSecond = 1

    var description: String {
        switch self {
        case .ticksPerBeat:
            return "TicksPerBeat"
        case .framesPerSecond:
            return "FramesPerSecond"
        }
    }
}