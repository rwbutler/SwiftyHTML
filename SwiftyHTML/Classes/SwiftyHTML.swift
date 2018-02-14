import Foundation

public typealias HTMLAttribute = Dictionary<String, String>.Element

public indirect enum HTML {
    
    case anchor([HTML], [HTMLAttribute]?)
    case body([HTML], [HTMLAttribute]?)
    case head([HTML], [HTMLAttribute]?)
    case html([HTML], [HTMLAttribute]?)
    case lineBreak
    case listItem([HTML], [HTMLAttribute]?)
    case orderedList([HTML], [HTMLAttribute]?)
    case text(String)
    case unorderedList([HTML], [HTMLAttribute]?)
    
    var endTag: String {
        return "</\(self.tagName)>"
    }
    
    func startTag(_ attributes: [Dictionary<String, String>.Element]?) -> String {
        guard let attributes = attributes else {
            return "<\(tagName)>"
        }
        return attributes.reduce("<\(tagName)", { "\($0) \($1.key)=\"\($1.value)\"" }) + ">"
    }
    
    private var tagName: String {
        switch self {
        case .anchor:
            return "a"
        case .body:
            return "body"
        case .head:
            return "head"
        case .html:
            return "html"
        case .lineBreak:
            return "br"
        case .listItem:
            return "li"
        case .orderedList:
            return "ol"
        case .text:
            return ""
        case .unorderedList:
            return "ul"
        }
    }
}

extension HTML: CustomStringConvertible {
    public var description: String {
        switch self {
        case .anchor(let childNodes, let attributes),
             .body(let childNodes, let attributes),
             .head(let childNodes, let attributes),
             .html(let childNodes, let attributes),
             .listItem(let childNodes, let attributes),
             .orderedList(let childNodes, let attributes),
             .unorderedList(let childNodes, let attributes):
            return childNodes.reduce(self.startTag(attributes), { $0 + $1.description }) + endTag
        case .lineBreak:
            return startTag(nil)
        case .text(let text):
            return text
        }
    }
}
