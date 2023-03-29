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
    
    static var black: UIColor {
        return UIColor(hex: 0x000000)
    }
    
    static var white: UIColor {
        return UIColor(hex: 0xFFFFFF)
    }
    
    static var gray100: UIColor {
        return UIColor(hex: 0xF7FAFC)
    }
    
    static var gray200: UIColor {
        return UIColor(hex: 0xEDF2F7)
    }
    
    static var gray300: UIColor {
        return UIColor(hex: 0xE2E8F0)
    }
    
    static var gray400: UIColor {
        return UIColor(hex: 0xCBD5E0)
    }
    
    static var gray500: UIColor {
        return UIColor(hex: 0xA0AEC0)
    }
    
    static var gray600: UIColor {
        return UIColor(hex: 0x718096)
    }
    
    static var gray700: UIColor {
        return UIColor(hex: 0x4A5568)
    }
    
    static var gray800: UIColor {
        return UIColor(hex: 0x2D3748)
    }
    
    static var gray900: UIColor {
        return UIColor(hex: 0x1A202C)
    }
    
    static var red100: UIColor {
        return UIColor(hex: 0xFFF5F5)
    }
    
    static var red200: UIColor {
        return UIColor(hex: 0xFED7D7)
    }
    
    static var red300: UIColor {
        return UIColor(hex: 0xFEB2B2)
    }
    
    static var red400: UIColor {
        return UIColor(hex: 0xFC8181)
    }
    
    static var red500: UIColor {
        return UIColor(hex: 0xF56565)
    }
    
    static var red600: UIColor {
        return UIColor(hex: 0xE53E3E)
    }
    
    static var red700: UIColor {
        return UIColor(hex: 0xC53030)
    }
    
    static var red800: UIColor {
        return UIColor(hex: 0x9B2C2C)
    }
    
    static var red900: UIColor {
        return UIColor(hex: 0x742A2A)
    }
    
    static var orange100: UIColor {
        return UIColor(hex: 0xFFFAF0)
    }
    
    static var orange200: UIColor {
        return UIColor(hex: 0xFEEBC8)
    }
    
    static var orange300: UIColor {
        return UIColor(hex: 0xFBD38D)
    }
    
    static var orange400: UIColor {
        return UIColor(hex: 0xF6AD55)
    }
    
    static var orange500: UIColor {
        return UIColor(hex: 0xED8936)
    }
    
    static var orange600: UIColor {
        return UIColor(hex: 0xDD6B20)
    }
    
    static var orange700: UIColor {
        return UIColor(hex: 0xC05621)
    }
    
    static var orange800: UIColor {
        return UIColor(hex: 0x9C4221)
    }
    
    static var orange900: UIColor {
        return UIColor(hex: 0x7B341E)
    }
    
    static var yellow100: UIColor {
        return UIColor(hex: 0xFFFFF0)
    }
    
    static var yellow200: UIColor {
        return UIColor(hex: 0xFEFCBF)
    }
    
    static var yellow300: UIColor {
        return UIColor(hex: 0xFAF089)
    }
    
    static var yellow400: UIColor {
        return UIColor(hex: 0xF6E05E)
    }
    
    static var yellow500: UIColor {
        return UIColor(hex: 0xECC94B)
    }
    
    static var yellow600: UIColor {
        return UIColor(hex: 0xD69E2E)
    }
    
    static var yellow700: UIColor {
        return UIColor(hex: 0xB7791F)
    }
    
    static var yellow800: UIColor {
        return UIColor(hex: 0x975A16)
    }
    
    static var yellow900: UIColor {
        return UIColor(hex: 0x744210)
    }
    
    static var green100: UIColor {
        return UIColor(hex: 0xF0FFF4)
    }
    
    static var green200: UIColor {
        return UIColor(hex: 0xC6F6D5)
    }
    
    static var green300: UIColor {
        return UIColor(hex: 0x9AE6B4)
    }
    
    static var green400: UIColor {
        return UIColor(hex: 0x68D391)
    }
    
    static var green500: UIColor {
        return UIColor(hex: 0x31A461)
    }
    
    static var green600: UIColor {
        return UIColor(hex: 0x38A169)
    }
    
    static var green700: UIColor {
        return UIColor(hex: 0x2F855A)
    }
    
    static var green800: UIColor {
        return UIColor(hex: 0x276749)
    }
    
    static var green900: UIColor {
        return UIColor(hex: 0x22543D)
    }
    
    static var teal100: UIColor {
        return UIColor(hex: 0xE6FFFA)
    }
    
    static var teal200: UIColor {
        return UIColor(hex: 0xB2F5EA)
    }
    
    static var teal300: UIColor {
        return UIColor(hex: 0x81E6D9)
    }
    
    static var teal400: UIColor {
        return UIColor(hex: 0x4FD1C5)
    }
    
    static var teal500: UIColor {
        return UIColor(hex: 0x38B2AC)
    }
    
    static var teal600: UIColor {
        return UIColor(hex: 0x319795)
    }
    
    static var teal700: UIColor {
        return UIColor(hex: 0x2C7A7B)
    }
    
    static var teal800: UIColor {
        return UIColor(hex: 0x285E61)
    }
    
    static var teal900: UIColor {
        return UIColor(hex: 0x234E52)
    }
    
    static var blue100: UIColor {
        return UIColor(hex: 0xEBF8FF)
    }
    
    static var blue200: UIColor {
        return UIColor(hex: 0xBEE3F8)
    }
    
    static var blue300: UIColor {
        return UIColor(hex: 0x90CDF4)
    }
    
    static var blue400: UIColor {
        return UIColor(hex: 0x63B3ED)
    }
    
    static var blue500: UIColor {
        return UIColor(hex: 0x4299E1)
    }
    
    static var blue600: UIColor {
        return UIColor(hex: 0x3182CE)
    }
    
    static var blue700: UIColor {
        return UIColor(hex: 0x2B6CB0)
    }
    
    static var blue800: UIColor {
        return UIColor(hex: 0x2C5282)
    }
    
    static var blue900: UIColor {
        return UIColor(hex: 0x2A4365)
    }
    
    static var indigo100: UIColor {
        return UIColor(hex: 0xEBF4FF)
    }
    
    static var indigo200: UIColor {
        return UIColor(hex: 0xC3DAFE)
    }
    
    static var indigo300: UIColor {
        return UIColor(hex: 0xA3BFFA)
    }
    
    static var indigo400: UIColor {
        return UIColor(hex: 0x7F9CF5)
    }
    
    static var indigo500: UIColor {
        return UIColor(hex: 0x667EEA)
    }
    
    static var indigo600: UIColor {
        return UIColor(hex: 0x5A67D8)
    }
    
    static var indigo700: UIColor {
        return UIColor(hex: 0x4C51BF)
    }
    
    static var indigo800: UIColor {
        return UIColor(hex: 0x434190)
    }
    
    static var indigo900: UIColor {
        return UIColor(hex: 0x3C366B)
    }
    
    static var purple100: UIColor {
        return UIColor(hex: 0xFAF5FF)
    }
    
    static var purple200: UIColor {
        return UIColor(hex: 0xE9D8FD)
    }
    
    static var purple300: UIColor {
        return UIColor(hex: 0xD6BCFA)
    }
    
    static var purple400: UIColor {
        return UIColor(hex: 0xB794F4)
    }
    
    static var purple500: UIColor {
        return UIColor(hex: 0x9F7AEA)
    }
    
    static var purple600: UIColor {
        return UIColor(hex: 0x805AD5)
    }
    
    static var purple700: UIColor {
        return UIColor(hex: 0x6B46C1)
    }
    
    static var purple800: UIColor {
        return UIColor(hex: 0x553C9A)
    }
    
    static var purple900: UIColor {
        return UIColor(hex: 0x44337A)
    }
    
    static var pink100: UIColor {
        return UIColor(hex: 0xFFF5F7)
    }
    
    static var pink200: UIColor {
        return UIColor(hex: 0xFED7E2)
    }
    
    static var pink300: UIColor {
        return UIColor(hex: 0xFBB6CE)
    }
    
    static var pink400: UIColor {
        return UIColor(hex: 0xF687B3)
    }
    
    static var pink500: UIColor {
        return UIColor(hex: 0xED64A6)
    }
    
    static var pink600: UIColor {
        return UIColor(hex: 0xD53F8C)
    }
    
    static var pink700: UIColor {
        return UIColor(hex: 0xB83280)
    }
    
    static var pink800: UIColor {
        return UIColor(hex: 0x97266D)
    }
    
    static var pink900: UIColor {
        return UIColor(hex: 0x702459)
    }
    
}