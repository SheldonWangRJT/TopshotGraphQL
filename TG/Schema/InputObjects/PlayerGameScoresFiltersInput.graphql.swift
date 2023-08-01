// @generated
// This file was automatically generated and should not be edited.

import Apollo

public extension TG {
  struct PlayerGameScoresFiltersInput: InputObject {
    public private(set) var __data: InputDict

    public init(_ data: InputDict) {
      __data = data
    }

    public init(
      points: IntegerRangeFilterInput
    ) {
      __data = InputDict([
        "points": points
      ])
    }

    public var points: IntegerRangeFilterInput {
      get { __data["points"] }
      set { __data["points"] = newValue }
    }
  }

}