// @generated
// This file was automatically generated and should not be edited.

import Apollo

public extension TG {
  struct IntegerRangeFilterInput: InputObject {
    public private(set) var __data: InputDict

    public init(_ data: InputDict) {
      __data = data
    }

    public init(
      min: GraphQLNullable<Int> = nil,
      max: GraphQLNullable<Int> = nil
    ) {
      __data = InputDict([
        "min": min,
        "max": max
      ])
    }

    public var min: GraphQLNullable<Int> {
      get { __data["min"] }
      set { __data["min"] = newValue }
    }

    public var max: GraphQLNullable<Int> {
      get { __data["max"] }
      set { __data["max"] = newValue }
    }
  }

}