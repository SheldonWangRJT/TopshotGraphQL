// @generated
// This file was automatically generated and should not be edited.

import Apollo

public extension TG {
  struct AllTeamsByLeaguesInput: InputObject {
    public private(set) var __data: InputDict

    public init(_ data: InputDict) {
      __data = data
    }

    public init(
      leagues: [GraphQLEnum<League>?]
    ) {
      __data = InputDict([
        "leagues": leagues
      ])
    }

    public var leagues: [GraphQLEnum<League>?] {
      get { __data["leagues"] }
      set { __data["leagues"] = newValue }
    }
  }

}