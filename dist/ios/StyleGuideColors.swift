import CoreUtilities
import SwiftUI
import UIKit

/*
 When designing UI elements aim to use Styling.swift refrences rather than these colors.
 Ideally Styling.swift would be the only consumer of these colors.
 Existing usage makes it not possible to make these private within Styling.swift.
 Colors added here should be concrete and static.
 Dynamic or app area/element based colors should be added to Styling.swift
 For example:
 `UIColor.baseOrage` would belong here, but `.foregroundTextColor` should instead be in Styling.swift.
 */

// MARK: - Style Guide Colors
@available(*, deprecated, message: "Please refer to Theme.live.color for colors.")
public extension UIColor {
    
    static var white: UIColor {
        return UIColor(hex: 0xFFFFFF)
    }
    
    static var grey10: UIColor {
        return UIColor(hex: 0xFAFAFA)
    }
    
    static var grey20: UIColor {
        return UIColor(hex: 0xF5F5F5)
    }
    
    static var grey30: UIColor {
        return UIColor(hex: 0xE2E2E2)
    }
    
    static var grey40: UIColor {
        return UIColor(hex: 0xBDBDBD)
    }
    
    static var grey50: UIColor {
        return UIColor(hex: 0xA5A5A5)
    }
    
    static var grey60: UIColor {
        return UIColor(hex: 0x8B8B8B)
    }
    
    static var grey70: UIColor {
        return UIColor(hex: 0x777777)
    }
    
    static var grey80: UIColor {
        return UIColor(hex: 0x555555)
    }
    
    static var grey90: UIColor {
        return UIColor(hex: 0x464646)
    }
    
    static var grey100: UIColor {
        return UIColor(hex: 0x333333)
    }
    
    static var grey110: UIColor {
        return UIColor(hex: 0x222222)
    }
    
    static var blue10: UIColor {
        return UIColor(hex: 0xF5FAFF)
    }
    
    static var blue20: UIColor {
        return UIColor(hex: 0xE1EFFE)
    }
    
    static var blue30: UIColor {
        return UIColor(hex: 0xBEDCFE)
    }
    
    static var blue40: UIColor {
        return UIColor(hex: 0x8BBEFD)
    }
    
    static var blue50: UIColor {
        return UIColor(hex: 0x4EA0FD)
    }
    
    static var blue60: UIColor {
        return UIColor(hex: 0x087BFF)
    }
    
    static var blue70: UIColor {
        return UIColor(hex: 0x0063D6)
    }
    
    static var blue80: UIColor {
        return UIColor(hex: 0x0056BB)
    }
    
    static var blue90: UIColor {
        return UIColor(hex: 0x004899)
    }
    
    static var blue100: UIColor {
        return UIColor(hex: 0x083366)
    }
    
    static var blue110: UIColor {
        return UIColor(hex: 0x001833)
    }
    
    static var red10: UIColor {
        return UIColor(hex: 0xFFF7F5)
    }
    
    static var red20: UIColor {
        return UIColor(hex: 0xFFE6E0)
    }
    
    static var red30: UIColor {
        return UIColor(hex: 0xFFC2B2)
    }
    
    static var red40: UIColor {
        return UIColor(hex: 0xFF9D84)
    }
    
    static var red50: UIColor {
        return UIColor(hex: 0xFF5C33)
    }
    
    static var red60: UIColor {
        return UIColor(hex: 0xFF3300)
    }
    
    static var red70: UIColor {
        return UIColor(hex: 0xE52E00)
    }
    
    static var red80: UIColor {
        return UIColor(hex: 0xC92800)
    }
    
    static var red90: UIColor {
        return UIColor(hex: 0x8A1F05)
    }
    
    static var red100: UIColor {
        return UIColor(hex: 0x6D1C08)
    }
    
    static var red110: UIColor {
        return UIColor(hex: 0x330E05)
    }
    
    static var yellow10: UIColor {
        return UIColor(hex: 0xFFFBF5)
    }
    
    static var yellow20: UIColor {
        return UIColor(hex: 0xFFF3E0)
    }
    
    static var yellow30: UIColor {
        return UIColor(hex: 0xFFE0B2)
    }
    
    static var yellow40: UIColor {
        return UIColor(hex: 0xFFCE84)
    }
    
    static var yellow50: UIColor {
        return UIColor(hex: 0xFFB23D)
    }
    
    static var yellow60: UIColor {
        return UIColor(hex: 0xFF9F0E)
    }
    
    static var yellow70: UIColor {
        return UIColor(hex: 0xF09000)
    }
    
    static var yellow80: UIColor {
        return UIColor(hex: 0xBD7200)
    }
    
    static var yellow90: UIColor {
        return UIColor(hex: 0x895506)
    }
    
    static var yellow100: UIColor {
        return UIColor(hex: 0x694207)
    }
    
    static var yellow110: UIColor {
        return UIColor(hex: 0x332105)
    }
    
    static var special: UIColor {
        return UIColor(hex: 0x972222)
    }
    
}