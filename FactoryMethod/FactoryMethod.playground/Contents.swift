import UIKit

protocol Serialization {
    func serialize()
}

// JSON Serializer
struct JSONSerializer : Serialization {
    func serialize() {
        print("JSON Serialization")
    }
}

struct PlistSerialization: Serialization {
    func serialize() {
        print("plist creation")
    }
}

struct XMLSerialization: Serialization {
    func serialize() {
        print("xml creation")
    }
}

enum SerializationType  {
    case JSON
    case Plist
    case XML
}

func createSerializationType(_ type: SerializationType) -> Serialization {
    switch type {
    case .JSON:
        return JSONSerializer()
    case .Plist:
        return PlistSerialization()
    case .XML:
        return XMLSerialization()
    }
}

let jsonObject = createSerializationType(.JSON)
print(jsonObject)
let xmlObject = createSerializationType(.XML)
print(xmlObject)
let plistObject = createSerializationType(.Plist)
print(plistObject)
