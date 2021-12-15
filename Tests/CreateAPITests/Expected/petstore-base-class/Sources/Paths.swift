// Generated by Create API
// https://github.com/kean/CreateAPI
//
// swiftlint:disable all

import Foundation
import APIClient
import HTTPHeaders

public enum Paths {}

extension Paths {
    public static var pets: Pets {
        Pets(path: "/pets")
    }

    public struct Pets {
        /// Path: `/pets`
        public let path: String

        /// List all pets
        public func get(limit: Int? = nil) -> Request<[petstore_base_class.Pet]> {
            .get(path, query: makeGetQuery(limit))
        }

        public enum GetResponseHeaders {
            /// A link to the next page of responses
            public static let next = HTTPHeader<String>(field: "x-next")
        }

        private func makeGetQuery(_ limit: Int?) -> [(String, String?)] {
            [("limit", limit?.asQueryValue)]
        }

        /// Create a pet
        public var post: Request<Void> {
            .post(path)
        }
    }
}

extension Paths.Pets {
    public func petID(_ petID: String) -> WithPetID {
        WithPetID(path: path + "/" + petID)
    }

    public struct WithPetID {
        /// Path: `/pets/{petId}`
        public let path: String

        /// Info for a specific pet
        public var get: Request<petstore_base_class.Pet> {
            .get(path)
        }
    }
}

private extension Bool {
    var asQueryValue: String {
        self ? "true" : "false"
    }
}

private extension Date {
    var asQueryValue: String {
        ISO8601DateFormatter().string(from: self)
    }
}

private extension Double {
    var asQueryValue: String {
        String(self)
    }
}

private extension Int {
    var asQueryValue: String {
        String(self)
    }
}

private extension URL {
    var asQueryValue: String {
        absoluteString
    }
}

private extension RawRepresentable where RawValue == String {
    var asQueryValue: String {
        rawValue
    }
}
