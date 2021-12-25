// Generated by Create API
// https://github.com/kean/CreateAPI
//
// swiftlint:disable all

import Foundation
import Get

extension Paths {
    public static var attractions: Attractions {
        Attractions(path: "/discovery/v2/attractions")
    }

    public struct Attractions {
        /// Path: `/discovery/v2/attractions`
        public let path: String

        /// Attraction Search
        ///
        /// Find attractions (artists, sports, packages, plays and so on) and filter your search by name, and much more.
        public func get(parameters: GetParameters? = nil) -> Request<Data> {
            .get(path, query: parameters?.asQuery())
        }

        public struct GetParameters {
            public var sort: String?
            public var keyword: String?
            public var id: String?
            public var source: Source?
            public var includeTest: IncludeTest?
            public var page: Double?
            public var size: Double?
            public var locale: String?
            public var includeLicensedContent: IncludeLicensedContent?
            public var includeSpellcheck: IncludeSpellcheck?

            public enum Source: String, Codable, CaseIterable {
                case ticketmaster
                case universe = " universe"
                case frontgate = " frontgate"
                case tmr = " tmr"
            }

            public enum IncludeTest: String, Codable, CaseIterable {
                case yes
                case no = " no"
                case only = " only"
            }

            public enum IncludeLicensedContent: String, Codable, CaseIterable {
                case yes
                case no = " no"
            }

            public enum IncludeSpellcheck: String, Codable, CaseIterable {
                case yes
                case no = " no"
            }

            public init(sort: String? = nil, keyword: String? = nil, id: String? = nil, source: Source? = nil, includeTest: IncludeTest? = nil, page: Double? = nil, size: Double? = nil, locale: String? = nil, includeLicensedContent: IncludeLicensedContent? = nil, includeSpellcheck: IncludeSpellcheck? = nil) {
                self.sort = sort
                self.keyword = keyword
                self.id = id
                self.source = source
                self.includeTest = includeTest
                self.page = page
                self.size = size
                self.locale = locale
                self.includeLicensedContent = includeLicensedContent
                self.includeSpellcheck = includeSpellcheck
            }

            public func asQuery() -> [(String, String?)] {
                var query: [(String, String?)] = []
                query.addQueryItem("sort", sort)
                query.addQueryItem("keyword", keyword)
                query.addQueryItem("id", id)
                query.addQueryItem("source", source)
                query.addQueryItem("includeTest", includeTest)
                query.addQueryItem("page", page)
                query.addQueryItem("size", size)
                query.addQueryItem("locale", locale)
                query.addQueryItem("includeLicensedContent", includeLicensedContent)
                query.addQueryItem("includeSpellcheck", includeSpellcheck)
                return query
            }
        }
    }
}

extension Paths.Attractions {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/discovery/v2/attractions/{id}`
        public let path: String

        /// Get Attraction Details
        ///
        /// Get details for a specific attraction using the unique identifier for the attraction.
        public func get(locale: String? = nil, includeLicensedContent: IncludeLicensedContent? = nil) -> Request<Data> {
            .get(path, query: makeGetQuery(locale, includeLicensedContent))
        }

        private func makeGetQuery(_ locale: String?, _ includeLicensedContent: IncludeLicensedContent?) -> [(String, String?)] {
            var query: [(String, String?)] = []
            query.addQueryItem("locale", locale)
            query.addQueryItem("includeLicensedContent", includeLicensedContent)
            return query
        }

        public enum IncludeLicensedContent: String, Codable, CaseIterable {
            case yes
            case no = " no"
        }
    }
}

extension Paths {
    public static var classifications: Classifications {
        Classifications(path: "/discovery/v2/classifications")
    }

    public struct Classifications {
        /// Path: `/discovery/v2/classifications`
        public let path: String

        /// Classification Search
        ///
        /// Find classifications and filter your search by name, and much more. Classifications help define the nature of attractions and events.
        public func get(parameters: GetParameters? = nil) -> Request<Data> {
            .get(path, query: parameters?.asQuery())
        }

        public struct GetParameters {
            public var sort: String?
            public var keyword: String?
            public var id: String?
            public var source: Source?
            public var includeTest: IncludeTest?
            public var page: Double?
            public var size: Double?
            public var locale: String?
            public var includeLicensedContent: IncludeLicensedContent?
            public var includeSpellcheck: IncludeSpellcheck?

            public enum Source: String, Codable, CaseIterable {
                case ticketmaster
                case universe = " universe"
                case frontgate = " frontgate"
                case tmr = " tmr"
            }

            public enum IncludeTest: String, Codable, CaseIterable {
                case yes
                case no = " no"
                case only = " only"
            }

            public enum IncludeLicensedContent: String, Codable, CaseIterable {
                case yes
                case no = " no"
            }

            public enum IncludeSpellcheck: String, Codable, CaseIterable {
                case yes
                case no = " no"
            }

            public init(sort: String? = nil, keyword: String? = nil, id: String? = nil, source: Source? = nil, includeTest: IncludeTest? = nil, page: Double? = nil, size: Double? = nil, locale: String? = nil, includeLicensedContent: IncludeLicensedContent? = nil, includeSpellcheck: IncludeSpellcheck? = nil) {
                self.sort = sort
                self.keyword = keyword
                self.id = id
                self.source = source
                self.includeTest = includeTest
                self.page = page
                self.size = size
                self.locale = locale
                self.includeLicensedContent = includeLicensedContent
                self.includeSpellcheck = includeSpellcheck
            }

            public func asQuery() -> [(String, String?)] {
                var query: [(String, String?)] = []
                query.addQueryItem("sort", sort)
                query.addQueryItem("keyword", keyword)
                query.addQueryItem("id", id)
                query.addQueryItem("source", source)
                query.addQueryItem("includeTest", includeTest)
                query.addQueryItem("page", page)
                query.addQueryItem("size", size)
                query.addQueryItem("locale", locale)
                query.addQueryItem("includeLicensedContent", includeLicensedContent)
                query.addQueryItem("includeSpellcheck", includeSpellcheck)
                return query
            }
        }
    }
}

extension Paths.Classifications {
    public var genres: Genres {
        Genres(path: path + "/genres")
    }

    public struct Genres {
        /// Path: `/discovery/v2/classifications/genres`
        public let path: String
    }
}

extension Paths.Classifications.Genres {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/discovery/v2/classifications/genres/{id}`
        public let path: String

        /// Get Genre Details
        ///
        /// Get details for a specific genre using its unique identifier.
        public func get(locale: String? = nil, includeLicensedContent: IncludeLicensedContent? = nil) -> Request<Data> {
            .get(path, query: makeGetQuery(locale, includeLicensedContent))
        }

        private func makeGetQuery(_ locale: String?, _ includeLicensedContent: IncludeLicensedContent?) -> [(String, String?)] {
            var query: [(String, String?)] = []
            query.addQueryItem("locale", locale)
            query.addQueryItem("includeLicensedContent", includeLicensedContent)
            return query
        }

        public enum IncludeLicensedContent: String, Codable, CaseIterable {
            case yes
            case no = " no"
        }
    }
}

extension Paths.Classifications {
    public var segments: Segments {
        Segments(path: path + "/segments")
    }

    public struct Segments {
        /// Path: `/discovery/v2/classifications/segments`
        public let path: String
    }
}

extension Paths.Classifications.Segments {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/discovery/v2/classifications/segments/{id}`
        public let path: String

        /// Get Segment Details
        ///
        /// Get details for a specific segment using its unique identifier.
        public func get(locale: String? = nil, includeLicensedContent: IncludeLicensedContent? = nil) -> Request<Data> {
            .get(path, query: makeGetQuery(locale, includeLicensedContent))
        }

        private func makeGetQuery(_ locale: String?, _ includeLicensedContent: IncludeLicensedContent?) -> [(String, String?)] {
            var query: [(String, String?)] = []
            query.addQueryItem("locale", locale)
            query.addQueryItem("includeLicensedContent", includeLicensedContent)
            return query
        }

        public enum IncludeLicensedContent: String, Codable, CaseIterable {
            case yes
            case no = " no"
        }
    }
}

extension Paths.Classifications {
    public var subgenres: Subgenres {
        Subgenres(path: path + "/subgenres")
    }

    public struct Subgenres {
        /// Path: `/discovery/v2/classifications/subgenres`
        public let path: String
    }
}

extension Paths.Classifications.Subgenres {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/discovery/v2/classifications/subgenres/{id}`
        public let path: String

        /// Get Sub-Genre Details
        ///
        /// Get details for a specific sub-genre using its unique identifier.
        public func get(locale: String? = nil, includeLicensedContent: IncludeLicensedContent? = nil) -> Request<Data> {
            .get(path, query: makeGetQuery(locale, includeLicensedContent))
        }

        private func makeGetQuery(_ locale: String?, _ includeLicensedContent: IncludeLicensedContent?) -> [(String, String?)] {
            var query: [(String, String?)] = []
            query.addQueryItem("locale", locale)
            query.addQueryItem("includeLicensedContent", includeLicensedContent)
            return query
        }

        public enum IncludeLicensedContent: String, Codable, CaseIterable {
            case yes
            case no = " no"
        }
    }
}

extension Paths.Classifications {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/discovery/v2/classifications/{id}`
        public let path: String

        /// Get Classification Details
        ///
        /// Get details for a specific segment, genre, or sub-genre using its unique identifier.
        public func get(locale: String? = nil, includeLicensedContent: IncludeLicensedContent? = nil) -> Request<Data> {
            .get(path, query: makeGetQuery(locale, includeLicensedContent))
        }

        private func makeGetQuery(_ locale: String?, _ includeLicensedContent: IncludeLicensedContent?) -> [(String, String?)] {
            var query: [(String, String?)] = []
            query.addQueryItem("locale", locale)
            query.addQueryItem("includeLicensedContent", includeLicensedContent)
            return query
        }

        public enum IncludeLicensedContent: String, Codable, CaseIterable {
            case yes
            case no = " no"
        }
    }
}

extension Paths {
    public static var events: Events {
        Events(path: "/discovery/v2/events")
    }

    public struct Events {
        /// Path: `/discovery/v2/events`
        public let path: String

        /// Event Search
        ///
        /// Find events and filter your search by location, date, availability, and much more.
        public func get(parameters: GetParameters? = nil) -> Request<Data> {
            .get(path, query: parameters?.asQuery())
        }

        public struct GetParameters {
            public var sort: String?
            public var startDateTime: String?
            public var endDateTime: String?
            public var onsaleStartDateTime: String?
            public var onsaleOnStartDate: String?
            public var onsaleOnAfterStartDate: String?
            public var onsaleEndDateTime: String?
            public var city: String?
            public var countryCode: String?
            public var stateCode: String?
            public var postalCode: String?
            public var venueID: String?
            public var attractionID: String?
            public var segmentID: String?
            public var segmentName: String?
            public var marketID: String?
            public var promoterID: String?
            public var dmaID: String?
            public var includeTBA: IncludeTBA?
            public var includeTBD: IncludeTBD?
            public var clientVisibility: String?
            public var latlong: String?
            public var radius: String?
            public var unit: Unit?
            public var geoPoint: String?
            public var keyword: String?
            public var id: String?
            public var source: Source?
            public var includeTest: IncludeTest?
            public var page: Double?
            public var size: Double?
            public var locale: String?
            public var includeLicensedContent: IncludeLicensedContent?
            public var includeSpellcheck: IncludeSpellcheck?

            public enum IncludeTBA: String, Codable, CaseIterable {
                case yes
                case no = " no"
                case only = " only"
            }

            public enum IncludeTBD: String, Codable, CaseIterable {
                case yes
                case no = " no"
                case only = " only"
            }

            public enum Unit: String, Codable, CaseIterable {
                case miles
                case km
            }

            public enum Source: String, Codable, CaseIterable {
                case ticketmaster
                case universe = " universe"
                case frontgate = " frontgate"
                case tmr = " tmr"
            }

            public enum IncludeTest: String, Codable, CaseIterable {
                case yes
                case no = " no"
                case only = " only"
            }

            public enum IncludeLicensedContent: String, Codable, CaseIterable {
                case yes
                case no = " no"
            }

            public enum IncludeSpellcheck: String, Codable, CaseIterable {
                case yes
                case no = " no"
            }

            public init(sort: String? = nil, startDateTime: String? = nil, endDateTime: String? = nil, onsaleStartDateTime: String? = nil, onsaleOnStartDate: String? = nil, onsaleOnAfterStartDate: String? = nil, onsaleEndDateTime: String? = nil, city: String? = nil, countryCode: String? = nil, stateCode: String? = nil, postalCode: String? = nil, venueID: String? = nil, attractionID: String? = nil, segmentID: String? = nil, segmentName: String? = nil, marketID: String? = nil, promoterID: String? = nil, dmaID: String? = nil, includeTBA: IncludeTBA? = nil, includeTBD: IncludeTBD? = nil, clientVisibility: String? = nil, latlong: String? = nil, radius: String? = nil, unit: Unit? = nil, geoPoint: String? = nil, keyword: String? = nil, id: String? = nil, source: Source? = nil, includeTest: IncludeTest? = nil, page: Double? = nil, size: Double? = nil, locale: String? = nil, includeLicensedContent: IncludeLicensedContent? = nil, includeSpellcheck: IncludeSpellcheck? = nil) {
                self.sort = sort
                self.startDateTime = startDateTime
                self.endDateTime = endDateTime
                self.onsaleStartDateTime = onsaleStartDateTime
                self.onsaleOnStartDate = onsaleOnStartDate
                self.onsaleOnAfterStartDate = onsaleOnAfterStartDate
                self.onsaleEndDateTime = onsaleEndDateTime
                self.city = city
                self.countryCode = countryCode
                self.stateCode = stateCode
                self.postalCode = postalCode
                self.venueID = venueID
                self.attractionID = attractionID
                self.segmentID = segmentID
                self.segmentName = segmentName
                self.marketID = marketID
                self.promoterID = promoterID
                self.dmaID = dmaID
                self.includeTBA = includeTBA
                self.includeTBD = includeTBD
                self.clientVisibility = clientVisibility
                self.latlong = latlong
                self.radius = radius
                self.unit = unit
                self.geoPoint = geoPoint
                self.keyword = keyword
                self.id = id
                self.source = source
                self.includeTest = includeTest
                self.page = page
                self.size = size
                self.locale = locale
                self.includeLicensedContent = includeLicensedContent
                self.includeSpellcheck = includeSpellcheck
            }

            public func asQuery() -> [(String, String?)] {
                var query: [(String, String?)] = []
                query.addQueryItem("sort", sort)
                query.addQueryItem("startDateTime", startDateTime)
                query.addQueryItem("endDateTime", endDateTime)
                query.addQueryItem("onsaleStartDateTime", onsaleStartDateTime)
                query.addQueryItem("onsaleOnStartDate", onsaleOnStartDate)
                query.addQueryItem("onsaleOnAfterStartDate", onsaleOnAfterStartDate)
                query.addQueryItem("onsaleEndDateTime", onsaleEndDateTime)
                query.addQueryItem("city", city)
                query.addQueryItem("countryCode", countryCode)
                query.addQueryItem("stateCode", stateCode)
                query.addQueryItem("postalCode", postalCode)
                query.addQueryItem("venueId", venueID)
                query.addQueryItem("attractionId", attractionID)
                query.addQueryItem("segmentId", segmentID)
                query.addQueryItem("segmentName", segmentName)
                query.addQueryItem("marketId", marketID)
                query.addQueryItem("promoterId", promoterID)
                query.addQueryItem("dmaId", dmaID)
                query.addQueryItem("includeTBA", includeTBA)
                query.addQueryItem("includeTBD", includeTBD)
                query.addQueryItem("clientVisibility", clientVisibility)
                query.addQueryItem("latlong", latlong)
                query.addQueryItem("radius", radius)
                query.addQueryItem("unit", unit)
                query.addQueryItem("geoPoint", geoPoint)
                query.addQueryItem("keyword", keyword)
                query.addQueryItem("id", id)
                query.addQueryItem("source", source)
                query.addQueryItem("includeTest", includeTest)
                query.addQueryItem("page", page)
                query.addQueryItem("size", size)
                query.addQueryItem("locale", locale)
                query.addQueryItem("includeLicensedContent", includeLicensedContent)
                query.addQueryItem("includeSpellcheck", includeSpellcheck)
                return query
            }
        }
    }
}

extension Paths.Events {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/discovery/v2/events/{id}`
        public let path: String

        /// Get Event Details
        ///
        /// Get details for a specific event using the unique identifier for the event. This includes the venue and location, the attraction(s), and the Ticketmaster Website URL for purchasing tickets for the event.
        public func get(locale: String? = nil, includeLicensedContent: IncludeLicensedContent? = nil) -> Request<Data> {
            .get(path, query: makeGetQuery(locale, includeLicensedContent))
        }

        private func makeGetQuery(_ locale: String?, _ includeLicensedContent: IncludeLicensedContent?) -> [(String, String?)] {
            var query: [(String, String?)] = []
            query.addQueryItem("locale", locale)
            query.addQueryItem("includeLicensedContent", includeLicensedContent)
            return query
        }

        public enum IncludeLicensedContent: String, Codable, CaseIterable {
            case yes
            case no = " no"
        }
    }
}

extension Paths.Events.WithID {
    public var images: Images {
        Images(path: path + "/images")
    }

    public struct Images {
        /// Path: `/discovery/v2/events/{id}/images`
        public let path: String

        /// Get Event Images
        ///
        /// Get images for a specific event using the unique identifier for the event.
        public func get(locale: String? = nil, includeLicensedContent: IncludeLicensedContent? = nil) -> Request<Data> {
            .get(path, query: makeGetQuery(locale, includeLicensedContent))
        }

        private func makeGetQuery(_ locale: String?, _ includeLicensedContent: IncludeLicensedContent?) -> [(String, String?)] {
            var query: [(String, String?)] = []
            query.addQueryItem("locale", locale)
            query.addQueryItem("includeLicensedContent", includeLicensedContent)
            return query
        }

        public enum IncludeLicensedContent: String, Codable, CaseIterable {
            case yes
            case no = " no"
        }
    }
}

extension Paths {
    public static var suggest: Suggest {
        Suggest(path: "/discovery/v2/suggest")
    }

    public struct Suggest {
        /// Path: `/discovery/v2/suggest`
        public let path: String

        /// Find Suggest
        ///
        /// Find search suggestions and filter your suggestions by location, source, etc.
        public func get(parameters: GetParameters? = nil) -> Request<String> {
            .get(path, query: parameters?.asQuery())
        }

        public struct GetParameters {
            public var keyword: String?
            public var source: Source?
            public var latlong: String?
            public var radius: String?
            public var unit: Unit?
            public var size: Double?
            public var includeFuzzy: IncludeFuzzy?
            public var clientVisibility: String?
            public var countryCode: String?
            public var includeTBA: IncludeTBA?
            public var includeTBD: IncludeTBD?
            public var segmentID: String?
            public var geoPoint: String?
            public var locale: String?
            public var includeLicensedContent: IncludeLicensedContent?
            public var includeSpellcheck: IncludeSpellcheck?

            public enum Source: String, Codable, CaseIterable {
                case ticketmaster
                case universe = " universe"
                case frontgate = " frontgate"
                case tmr = " tmr"
            }

            public enum Unit: String, Codable, CaseIterable {
                case miles
                case km
            }

            public enum IncludeFuzzy: String, Codable, CaseIterable {
                case yes
                case no = " no"
            }

            public enum IncludeTBA: String, Codable, CaseIterable {
                case yes
                case no = " no"
                case only = " only"
            }

            public enum IncludeTBD: String, Codable, CaseIterable {
                case yes
                case no = " no"
                case only = " only"
            }

            public enum IncludeLicensedContent: String, Codable, CaseIterable {
                case yes
                case no = " no"
            }

            public enum IncludeSpellcheck: String, Codable, CaseIterable {
                case yes
                case no = " no"
            }

            public init(keyword: String? = nil, source: Source? = nil, latlong: String? = nil, radius: String? = nil, unit: Unit? = nil, size: Double? = nil, includeFuzzy: IncludeFuzzy? = nil, clientVisibility: String? = nil, countryCode: String? = nil, includeTBA: IncludeTBA? = nil, includeTBD: IncludeTBD? = nil, segmentID: String? = nil, geoPoint: String? = nil, locale: String? = nil, includeLicensedContent: IncludeLicensedContent? = nil, includeSpellcheck: IncludeSpellcheck? = nil) {
                self.keyword = keyword
                self.source = source
                self.latlong = latlong
                self.radius = radius
                self.unit = unit
                self.size = size
                self.includeFuzzy = includeFuzzy
                self.clientVisibility = clientVisibility
                self.countryCode = countryCode
                self.includeTBA = includeTBA
                self.includeTBD = includeTBD
                self.segmentID = segmentID
                self.geoPoint = geoPoint
                self.locale = locale
                self.includeLicensedContent = includeLicensedContent
                self.includeSpellcheck = includeSpellcheck
            }

            public func asQuery() -> [(String, String?)] {
                var query: [(String, String?)] = []
                query.addQueryItem("keyword", keyword)
                query.addQueryItem("source", source)
                query.addQueryItem("latlong", latlong)
                query.addQueryItem("radius", radius)
                query.addQueryItem("unit", unit)
                query.addQueryItem("size", size)
                query.addQueryItem("includeFuzzy", includeFuzzy)
                query.addQueryItem("clientVisibility", clientVisibility)
                query.addQueryItem("countryCode", countryCode)
                query.addQueryItem("includeTBA", includeTBA)
                query.addQueryItem("includeTBD", includeTBD)
                query.addQueryItem("segmentId", segmentID)
                query.addQueryItem("geoPoint", geoPoint)
                query.addQueryItem("locale", locale)
                query.addQueryItem("includeLicensedContent", includeLicensedContent)
                query.addQueryItem("includeSpellcheck", includeSpellcheck)
                return query
            }
        }
    }
}

extension Paths {
    public static var venues: Venues {
        Venues(path: "/discovery/v2/venues")
    }

    public struct Venues {
        /// Path: `/discovery/v2/venues`
        public let path: String

        /// Venue Search
        ///
        /// Find venues and filter your search by name, and much more.
        public func get(parameters: GetParameters? = nil) -> Request<Data> {
            .get(path, query: parameters?.asQuery())
        }

        public struct GetParameters {
            public var sort: String?
            public var stateCode: String?
            public var countryCode: String?
            public var latlong: String?
            public var radius: String?
            public var unit: Unit?
            public var geoPoint: String?
            public var keyword: String?
            public var id: String?
            public var source: Source?
            public var includeTest: IncludeTest?
            public var page: Double?
            public var size: Double?
            public var locale: String?
            public var includeLicensedContent: IncludeLicensedContent?
            public var includeSpellcheck: IncludeSpellcheck?

            public enum Unit: String, Codable, CaseIterable {
                case miles
                case km
            }

            public enum Source: String, Codable, CaseIterable {
                case ticketmaster
                case universe = " universe"
                case frontgate = " frontgate"
                case tmr = " tmr"
            }

            public enum IncludeTest: String, Codable, CaseIterable {
                case yes
                case no = " no"
                case only = " only"
            }

            public enum IncludeLicensedContent: String, Codable, CaseIterable {
                case yes
                case no = " no"
            }

            public enum IncludeSpellcheck: String, Codable, CaseIterable {
                case yes
                case no = " no"
            }

            public init(sort: String? = nil, stateCode: String? = nil, countryCode: String? = nil, latlong: String? = nil, radius: String? = nil, unit: Unit? = nil, geoPoint: String? = nil, keyword: String? = nil, id: String? = nil, source: Source? = nil, includeTest: IncludeTest? = nil, page: Double? = nil, size: Double? = nil, locale: String? = nil, includeLicensedContent: IncludeLicensedContent? = nil, includeSpellcheck: IncludeSpellcheck? = nil) {
                self.sort = sort
                self.stateCode = stateCode
                self.countryCode = countryCode
                self.latlong = latlong
                self.radius = radius
                self.unit = unit
                self.geoPoint = geoPoint
                self.keyword = keyword
                self.id = id
                self.source = source
                self.includeTest = includeTest
                self.page = page
                self.size = size
                self.locale = locale
                self.includeLicensedContent = includeLicensedContent
                self.includeSpellcheck = includeSpellcheck
            }

            public func asQuery() -> [(String, String?)] {
                var query: [(String, String?)] = []
                query.addQueryItem("sort", sort)
                query.addQueryItem("stateCode", stateCode)
                query.addQueryItem("countryCode", countryCode)
                query.addQueryItem("latlong", latlong)
                query.addQueryItem("radius", radius)
                query.addQueryItem("unit", unit)
                query.addQueryItem("geoPoint", geoPoint)
                query.addQueryItem("keyword", keyword)
                query.addQueryItem("id", id)
                query.addQueryItem("source", source)
                query.addQueryItem("includeTest", includeTest)
                query.addQueryItem("page", page)
                query.addQueryItem("size", size)
                query.addQueryItem("locale", locale)
                query.addQueryItem("includeLicensedContent", includeLicensedContent)
                query.addQueryItem("includeSpellcheck", includeSpellcheck)
                return query
            }
        }
    }
}

extension Paths.Venues {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/discovery/v2/venues/{id}`
        public let path: String

        /// Get Venue Details
        ///
        /// Get details for a specific venue using the unique identifier for the venue.
        public func get(locale: String? = nil, includeLicensedContent: IncludeLicensedContent? = nil) -> Request<Data> {
            .get(path, query: makeGetQuery(locale, includeLicensedContent))
        }

        private func makeGetQuery(_ locale: String?, _ includeLicensedContent: IncludeLicensedContent?) -> [(String, String?)] {
            var query: [(String, String?)] = []
            query.addQueryItem("locale", locale)
            query.addQueryItem("includeLicensedContent", includeLicensedContent)
            return query
        }

        public enum IncludeLicensedContent: String, Codable, CaseIterable {
            case yes
            case no = " no"
        }
    }
}

public enum Paths {}

protocol QueryEncodable {
    var asQueryValue: String { get }
}

extension Bool: QueryEncodable {
    var asQueryValue: String {
        self ? "true" : "false"
    }
}

extension Date: QueryEncodable {
    var asQueryValue: String {
        ISO8601DateFormatter().string(from: self)
    }
}

extension Double: QueryEncodable {
    var asQueryValue: String {
        String(self)
    }
}

extension Int: QueryEncodable {
    var asQueryValue: String {
        String(self)
    }
}

extension Int32: QueryEncodable {
    var asQueryValue: String {
        String(self)
    }
}

extension Int64: QueryEncodable {
    var asQueryValue: String {
        String(self)
    }
}

extension String: QueryEncodable {
    var asQueryValue: String {
        self
    }
}

extension URL: QueryEncodable {
    var asQueryValue: String {
        absoluteString
    }
}

extension RawRepresentable where RawValue == String {
    var asQueryValue: String {
        rawValue
    }
}

extension Array where Element == (String, String?) {
    mutating func addQueryItem<T: RawRepresentable>(_ name: String, _ value: T?) where T.RawValue == String {
        addQueryItem(name, value?.rawValue)
    }
    
    mutating func addQueryItem(_ name: String, _ value: QueryEncodable?) {
        guard let value = value?.asQueryValue, !value.isEmpty else { return }
        append((name, value))
    }
    
    mutating func addDeepObject(_ name: String, _ query: [(String, String?)]) {
        for (key, value) in query {
            addQueryItem("\(name)[\(key)]", value)
        }
    }

    var asPercentEncodedQuery: String {
        var components = URLComponents()
        components.queryItems = self.map(URLQueryItem.init)
        return components.percentEncodedQuery ?? ""
    }
    
    // [("role", "admin"), ("name": "kean)] -> "role,admin,name,kean"
    var asCompactQuery: String {
        flatMap { [$0, $1] }.compactMap { $0 }.joined(separator: ",")
    }
}
