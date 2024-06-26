// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: actionWrapper.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

public struct Action_User {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var userAccount: String = String()

  public var userPassword: String = String()

  public var name: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Action_ChatMessage {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var id: String = String()

  public var username: String = String()

  public var time: UInt64 = 0

  public var content: String = String()

  public var activityID: String = String()

  public var act: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Action_ChatResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var status: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Action_AddActivityRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var userAccount: String = String()

  public var activityName: String = String()

  public var activityMaxNum: Int32 = 0

  public var activityStrTime: String = String()

  public var activityEndTime: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Action_AddActivityResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var resultCode: String = String()

  public var resultMsg: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Action_UpdateActivityRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var activityID: String = String()

  public var userAccount: String = String()

  public var activityName: String = String()

  public var activityMaxNum: Int32 = 0

  public var activityStrTime: String = String()

  public var activityEndTime: String = String()

  public var state: Int32 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Action_UpdateActivityResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var resultCode: String = String()

  public var resultMsg: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Action_GetActivityRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var userAccount: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Action_GetActivityResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var activities: [Action_Activity] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Action_Activity {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var activitySeqNo: String = String()

  public var activityID: String = String()

  public var activityName: String = String()

  public var activityDesc: String = String()

  public var activityMaxNum: Int32 = 0

  public var activityStrTime: String = String()

  public var activityEndTime: String = String()

  public var actions: [Action_Action] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Action_Action {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var actionSeqNo: String = String()

  public var actionName: String = String()

  public var assignee: String = String()

  public var checkedStatus: Bool = false

  public var actionStrTime: String = String()

  public var actionEndTime: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

#if swift(>=5.5) && canImport(_Concurrency)
extension Action_User: @unchecked Sendable {}
extension Action_ChatMessage: @unchecked Sendable {}
extension Action_ChatResponse: @unchecked Sendable {}
extension Action_AddActivityRequest: @unchecked Sendable {}
extension Action_AddActivityResponse: @unchecked Sendable {}
extension Action_UpdateActivityRequest: @unchecked Sendable {}
extension Action_UpdateActivityResponse: @unchecked Sendable {}
extension Action_GetActivityRequest: @unchecked Sendable {}
extension Action_GetActivityResponse: @unchecked Sendable {}
extension Action_Activity: @unchecked Sendable {}
extension Action_Action: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "action"

extension Action_User: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".User"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "userAccount"),
    2: .same(proto: "userPassword"),
    3: .same(proto: "name"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.userAccount) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.userPassword) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.name) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.userAccount.isEmpty {
      try visitor.visitSingularStringField(value: self.userAccount, fieldNumber: 1)
    }
    if !self.userPassword.isEmpty {
      try visitor.visitSingularStringField(value: self.userPassword, fieldNumber: 2)
    }
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Action_User, rhs: Action_User) -> Bool {
    if lhs.userAccount != rhs.userAccount {return false}
    if lhs.userPassword != rhs.userPassword {return false}
    if lhs.name != rhs.name {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Action_ChatMessage: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ChatMessage"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    2: .same(proto: "username"),
    3: .same(proto: "time"),
    4: .same(proto: "content"),
    5: .same(proto: "activityId"),
    6: .same(proto: "act"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.id) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.username) }()
      case 3: try { try decoder.decodeSingularUInt64Field(value: &self.time) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.content) }()
      case 5: try { try decoder.decodeSingularStringField(value: &self.activityID) }()
      case 6: try { try decoder.decodeSingularStringField(value: &self.act) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.id.isEmpty {
      try visitor.visitSingularStringField(value: self.id, fieldNumber: 1)
    }
    if !self.username.isEmpty {
      try visitor.visitSingularStringField(value: self.username, fieldNumber: 2)
    }
    if self.time != 0 {
      try visitor.visitSingularUInt64Field(value: self.time, fieldNumber: 3)
    }
    if !self.content.isEmpty {
      try visitor.visitSingularStringField(value: self.content, fieldNumber: 4)
    }
    if !self.activityID.isEmpty {
      try visitor.visitSingularStringField(value: self.activityID, fieldNumber: 5)
    }
    if !self.act.isEmpty {
      try visitor.visitSingularStringField(value: self.act, fieldNumber: 6)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Action_ChatMessage, rhs: Action_ChatMessage) -> Bool {
    if lhs.id != rhs.id {return false}
    if lhs.username != rhs.username {return false}
    if lhs.time != rhs.time {return false}
    if lhs.content != rhs.content {return false}
    if lhs.activityID != rhs.activityID {return false}
    if lhs.act != rhs.act {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Action_ChatResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ChatResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "status"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.status) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.status.isEmpty {
      try visitor.visitSingularStringField(value: self.status, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Action_ChatResponse, rhs: Action_ChatResponse) -> Bool {
    if lhs.status != rhs.status {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Action_AddActivityRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".AddActivityRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "userAccount"),
    2: .same(proto: "activityName"),
    3: .same(proto: "activityMaxNum"),
    4: .same(proto: "activityStrTime"),
    5: .same(proto: "activityEndTime"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.userAccount) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.activityName) }()
      case 3: try { try decoder.decodeSingularInt32Field(value: &self.activityMaxNum) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.activityStrTime) }()
      case 5: try { try decoder.decodeSingularStringField(value: &self.activityEndTime) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.userAccount.isEmpty {
      try visitor.visitSingularStringField(value: self.userAccount, fieldNumber: 1)
    }
    if !self.activityName.isEmpty {
      try visitor.visitSingularStringField(value: self.activityName, fieldNumber: 2)
    }
    if self.activityMaxNum != 0 {
      try visitor.visitSingularInt32Field(value: self.activityMaxNum, fieldNumber: 3)
    }
    if !self.activityStrTime.isEmpty {
      try visitor.visitSingularStringField(value: self.activityStrTime, fieldNumber: 4)
    }
    if !self.activityEndTime.isEmpty {
      try visitor.visitSingularStringField(value: self.activityEndTime, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Action_AddActivityRequest, rhs: Action_AddActivityRequest) -> Bool {
    if lhs.userAccount != rhs.userAccount {return false}
    if lhs.activityName != rhs.activityName {return false}
    if lhs.activityMaxNum != rhs.activityMaxNum {return false}
    if lhs.activityStrTime != rhs.activityStrTime {return false}
    if lhs.activityEndTime != rhs.activityEndTime {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Action_AddActivityResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".AddActivityResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "resultCode"),
    2: .same(proto: "resultMsg"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.resultCode) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.resultMsg) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.resultCode.isEmpty {
      try visitor.visitSingularStringField(value: self.resultCode, fieldNumber: 1)
    }
    if !self.resultMsg.isEmpty {
      try visitor.visitSingularStringField(value: self.resultMsg, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Action_AddActivityResponse, rhs: Action_AddActivityResponse) -> Bool {
    if lhs.resultCode != rhs.resultCode {return false}
    if lhs.resultMsg != rhs.resultMsg {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Action_UpdateActivityRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".UpdateActivityRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "activityId"),
    2: .same(proto: "userAccount"),
    3: .same(proto: "activityName"),
    4: .same(proto: "activityMaxNum"),
    5: .same(proto: "activityStrTime"),
    6: .same(proto: "activityEndTime"),
    7: .same(proto: "state"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.activityID) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.userAccount) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.activityName) }()
      case 4: try { try decoder.decodeSingularInt32Field(value: &self.activityMaxNum) }()
      case 5: try { try decoder.decodeSingularStringField(value: &self.activityStrTime) }()
      case 6: try { try decoder.decodeSingularStringField(value: &self.activityEndTime) }()
      case 7: try { try decoder.decodeSingularInt32Field(value: &self.state) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.activityID.isEmpty {
      try visitor.visitSingularStringField(value: self.activityID, fieldNumber: 1)
    }
    if !self.userAccount.isEmpty {
      try visitor.visitSingularStringField(value: self.userAccount, fieldNumber: 2)
    }
    if !self.activityName.isEmpty {
      try visitor.visitSingularStringField(value: self.activityName, fieldNumber: 3)
    }
    if self.activityMaxNum != 0 {
      try visitor.visitSingularInt32Field(value: self.activityMaxNum, fieldNumber: 4)
    }
    if !self.activityStrTime.isEmpty {
      try visitor.visitSingularStringField(value: self.activityStrTime, fieldNumber: 5)
    }
    if !self.activityEndTime.isEmpty {
      try visitor.visitSingularStringField(value: self.activityEndTime, fieldNumber: 6)
    }
    if self.state != 0 {
      try visitor.visitSingularInt32Field(value: self.state, fieldNumber: 7)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Action_UpdateActivityRequest, rhs: Action_UpdateActivityRequest) -> Bool {
    if lhs.activityID != rhs.activityID {return false}
    if lhs.userAccount != rhs.userAccount {return false}
    if lhs.activityName != rhs.activityName {return false}
    if lhs.activityMaxNum != rhs.activityMaxNum {return false}
    if lhs.activityStrTime != rhs.activityStrTime {return false}
    if lhs.activityEndTime != rhs.activityEndTime {return false}
    if lhs.state != rhs.state {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Action_UpdateActivityResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".UpdateActivityResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "resultCode"),
    2: .same(proto: "resultMsg"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.resultCode) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.resultMsg) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.resultCode.isEmpty {
      try visitor.visitSingularStringField(value: self.resultCode, fieldNumber: 1)
    }
    if !self.resultMsg.isEmpty {
      try visitor.visitSingularStringField(value: self.resultMsg, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Action_UpdateActivityResponse, rhs: Action_UpdateActivityResponse) -> Bool {
    if lhs.resultCode != rhs.resultCode {return false}
    if lhs.resultMsg != rhs.resultMsg {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Action_GetActivityRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetActivityRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "userAccount"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.userAccount) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.userAccount.isEmpty {
      try visitor.visitSingularStringField(value: self.userAccount, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Action_GetActivityRequest, rhs: Action_GetActivityRequest) -> Bool {
    if lhs.userAccount != rhs.userAccount {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Action_GetActivityResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetActivityResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "activities"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.activities) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.activities.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.activities, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Action_GetActivityResponse, rhs: Action_GetActivityResponse) -> Bool {
    if lhs.activities != rhs.activities {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Action_Activity: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Activity"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "activitySeqNo"),
    2: .same(proto: "activityId"),
    3: .same(proto: "activityName"),
    4: .same(proto: "activityDesc"),
    5: .same(proto: "activityMaxNum"),
    6: .same(proto: "activityStrTime"),
    7: .same(proto: "activityEndTime"),
    8: .same(proto: "actions"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.activitySeqNo) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.activityID) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.activityName) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.activityDesc) }()
      case 5: try { try decoder.decodeSingularInt32Field(value: &self.activityMaxNum) }()
      case 6: try { try decoder.decodeSingularStringField(value: &self.activityStrTime) }()
      case 7: try { try decoder.decodeSingularStringField(value: &self.activityEndTime) }()
      case 8: try { try decoder.decodeRepeatedMessageField(value: &self.actions) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.activitySeqNo.isEmpty {
      try visitor.visitSingularStringField(value: self.activitySeqNo, fieldNumber: 1)
    }
    if !self.activityID.isEmpty {
      try visitor.visitSingularStringField(value: self.activityID, fieldNumber: 2)
    }
    if !self.activityName.isEmpty {
      try visitor.visitSingularStringField(value: self.activityName, fieldNumber: 3)
    }
    if !self.activityDesc.isEmpty {
      try visitor.visitSingularStringField(value: self.activityDesc, fieldNumber: 4)
    }
    if self.activityMaxNum != 0 {
      try visitor.visitSingularInt32Field(value: self.activityMaxNum, fieldNumber: 5)
    }
    if !self.activityStrTime.isEmpty {
      try visitor.visitSingularStringField(value: self.activityStrTime, fieldNumber: 6)
    }
    if !self.activityEndTime.isEmpty {
      try visitor.visitSingularStringField(value: self.activityEndTime, fieldNumber: 7)
    }
    if !self.actions.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.actions, fieldNumber: 8)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Action_Activity, rhs: Action_Activity) -> Bool {
    if lhs.activitySeqNo != rhs.activitySeqNo {return false}
    if lhs.activityID != rhs.activityID {return false}
    if lhs.activityName != rhs.activityName {return false}
    if lhs.activityDesc != rhs.activityDesc {return false}
    if lhs.activityMaxNum != rhs.activityMaxNum {return false}
    if lhs.activityStrTime != rhs.activityStrTime {return false}
    if lhs.activityEndTime != rhs.activityEndTime {return false}
    if lhs.actions != rhs.actions {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Action_Action: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Action"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "actionSeqNo"),
    2: .same(proto: "actionName"),
    3: .same(proto: "assignee"),
    4: .same(proto: "checkedStatus"),
    5: .same(proto: "actionStrTime"),
    6: .same(proto: "actionEndTime"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.actionSeqNo) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.actionName) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.assignee) }()
      case 4: try { try decoder.decodeSingularBoolField(value: &self.checkedStatus) }()
      case 5: try { try decoder.decodeSingularStringField(value: &self.actionStrTime) }()
      case 6: try { try decoder.decodeSingularStringField(value: &self.actionEndTime) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.actionSeqNo.isEmpty {
      try visitor.visitSingularStringField(value: self.actionSeqNo, fieldNumber: 1)
    }
    if !self.actionName.isEmpty {
      try visitor.visitSingularStringField(value: self.actionName, fieldNumber: 2)
    }
    if !self.assignee.isEmpty {
      try visitor.visitSingularStringField(value: self.assignee, fieldNumber: 3)
    }
    if self.checkedStatus != false {
      try visitor.visitSingularBoolField(value: self.checkedStatus, fieldNumber: 4)
    }
    if !self.actionStrTime.isEmpty {
      try visitor.visitSingularStringField(value: self.actionStrTime, fieldNumber: 5)
    }
    if !self.actionEndTime.isEmpty {
      try visitor.visitSingularStringField(value: self.actionEndTime, fieldNumber: 6)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Action_Action, rhs: Action_Action) -> Bool {
    if lhs.actionSeqNo != rhs.actionSeqNo {return false}
    if lhs.actionName != rhs.actionName {return false}
    if lhs.assignee != rhs.assignee {return false}
    if lhs.checkedStatus != rhs.checkedStatus {return false}
    if lhs.actionStrTime != rhs.actionStrTime {return false}
    if lhs.actionEndTime != rhs.actionEndTime {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
