// @generated
// This file was automatically generated and should not be edited.

import Apollo

public extension TG {
  struct EditionsFilterInput: InputObject {
    public private(set) var __data: InputDict

    public init(_ data: InputDict) {
      __data = data
    }

    public init(
      setID: ID,
      playID: ID
    ) {
      __data = InputDict([
        "setID": setID,
        "playID": playID
      ])
    }

    public var setID: ID {
      get { __data["setID"] }
      set { __data["setID"] = newValue }
    }

    public var playID: ID {
      get { __data["playID"] }
      set { __data["playID"] = newValue }
    }
  }

}