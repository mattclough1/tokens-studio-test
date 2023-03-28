import Foundation
import SwiftUI

/// The `CoreColorGuide` is structured around the onX Design System.
/// It is a representation of the [onX Color Palette Foundation](https://www.figma.com/file/Dh6jUNlQLy84kMHucqnfAU/Design-Library?node-id=5953%3A18000&t=e7fv42SEjoNeIAJv-1).
/// The `CoreColorGuide` is owned by the `onX Hunt Team`.
public class CoreColorGuide: ColorGuide {
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Black`.
    ///
    /// - It has a color value of `#000000`
    /// - Returns: ``YSColor``
    public var colorsBlack = YSColor(0x000000)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors White`.
    ///
    /// - It has a color value of `#ffffff`
    /// - Returns: ``YSColor``
    public var colorsWhite = YSColor(0xFFFFFF)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Gray 100`.
    ///
    /// - It has a color value of `#f7fafc`
    /// - Returns: ``YSColor``
    public var colorsGray100 = YSColor(0xF7FAFC)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Gray 200`.
    ///
    /// - It has a color value of `#edf2f7`
    /// - Returns: ``YSColor``
    public var colorsGray200 = YSColor(0xEDF2F7)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Gray 300`.
    ///
    /// - It has a color value of `#e2e8f0`
    /// - Returns: ``YSColor``
    public var colorsGray300 = YSColor(0xE2E8F0)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Gray 400`.
    ///
    /// - It has a color value of `#cbd5e0`
    /// - Returns: ``YSColor``
    public var colorsGray400 = YSColor(0xCBD5E0)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Gray 500`.
    ///
    /// - It has a color value of `#a0aec0`
    /// - Returns: ``YSColor``
    public var colorsGray500 = YSColor(0xA0AEC0)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Gray 600`.
    ///
    /// - It has a color value of `#718096`
    /// - Returns: ``YSColor``
    public var colorsGray600 = YSColor(0x718096)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Gray 700`.
    ///
    /// - It has a color value of `#4a5568`
    /// - Returns: ``YSColor``
    public var colorsGray700 = YSColor(0x4A5568)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Gray 800`.
    ///
    /// - It has a color value of `#2d3748`
    /// - Returns: ``YSColor``
    public var colorsGray800 = YSColor(0x2D3748)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Gray 900`.
    ///
    /// - It has a color value of `#1a202c`
    /// - Returns: ``YSColor``
    public var colorsGray900 = YSColor(0x1A202C)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Red 100`.
    ///
    /// - It has a color value of `#fff5f5`
    /// - Returns: ``YSColor``
    public var colorsRed100 = YSColor(0xFFF5F5)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Red 200`.
    ///
    /// - It has a color value of `#fed7d7`
    /// - Returns: ``YSColor``
    public var colorsRed200 = YSColor(0xFED7D7)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Red 300`.
    ///
    /// - It has a color value of `#feb2b2`
    /// - Returns: ``YSColor``
    public var colorsRed300 = YSColor(0xFEB2B2)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Red 400`.
    ///
    /// - It has a color value of `#fc8181`
    /// - Returns: ``YSColor``
    public var colorsRed400 = YSColor(0xFC8181)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Red 500`.
    ///
    /// - It has a color value of `#f56565`
    /// - Returns: ``YSColor``
    public var colorsRed500 = YSColor(0xF56565)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Red 600`.
    ///
    /// - It has a color value of `#e53e3e`
    /// - Returns: ``YSColor``
    public var colorsRed600 = YSColor(0xE53E3E)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Red 700`.
    ///
    /// - It has a color value of `#c53030`
    /// - Returns: ``YSColor``
    public var colorsRed700 = YSColor(0xC53030)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Red 800`.
    ///
    /// - It has a color value of `#9b2c2c`
    /// - Returns: ``YSColor``
    public var colorsRed800 = YSColor(0x9B2C2C)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Red 900`.
    ///
    /// - It has a color value of `#742a2a`
    /// - Returns: ``YSColor``
    public var colorsRed900 = YSColor(0x742A2A)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Orange 100`.
    ///
    /// - It has a color value of `#fffaf0`
    /// - Returns: ``YSColor``
    public var colorsOrange100 = YSColor(0xFFFAF0)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Orange 200`.
    ///
    /// - It has a color value of `#feebc8`
    /// - Returns: ``YSColor``
    public var colorsOrange200 = YSColor(0xFEEBC8)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Orange 300`.
    ///
    /// - It has a color value of `#fbd38d`
    /// - Returns: ``YSColor``
    public var colorsOrange300 = YSColor(0xFBD38D)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Orange 400`.
    ///
    /// - It has a color value of `#f6ad55`
    /// - Returns: ``YSColor``
    public var colorsOrange400 = YSColor(0xF6AD55)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Orange 500`.
    ///
    /// - It has a color value of `#ed8936`
    /// - Returns: ``YSColor``
    public var colorsOrange500 = YSColor(0xED8936)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Orange 600`.
    ///
    /// - It has a color value of `#dd6b20`
    /// - Returns: ``YSColor``
    public var colorsOrange600 = YSColor(0xDD6B20)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Orange 700`.
    ///
    /// - It has a color value of `#c05621`
    /// - Returns: ``YSColor``
    public var colorsOrange700 = YSColor(0xC05621)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Orange 800`.
    ///
    /// - It has a color value of `#9c4221`
    /// - Returns: ``YSColor``
    public var colorsOrange800 = YSColor(0x9C4221)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Orange 900`.
    ///
    /// - It has a color value of `#7b341e`
    /// - Returns: ``YSColor``
    public var colorsOrange900 = YSColor(0x7B341E)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Yellow 100`.
    ///
    /// - It has a color value of `#fffff0`
    /// - Returns: ``YSColor``
    public var colorsYellow100 = YSColor(0xFFFFF0)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Yellow 200`.
    ///
    /// - It has a color value of `#fefcbf`
    /// - Returns: ``YSColor``
    public var colorsYellow200 = YSColor(0xFEFCBF)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Yellow 300`.
    ///
    /// - It has a color value of `#faf089`
    /// - Returns: ``YSColor``
    public var colorsYellow300 = YSColor(0xFAF089)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Yellow 400`.
    ///
    /// - It has a color value of `#f6e05e`
    /// - Returns: ``YSColor``
    public var colorsYellow400 = YSColor(0xF6E05E)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Yellow 500`.
    ///
    /// - It has a color value of `#ecc94b`
    /// - Returns: ``YSColor``
    public var colorsYellow500 = YSColor(0xECC94B)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Yellow 600`.
    ///
    /// - It has a color value of `#d69e2e`
    /// - Returns: ``YSColor``
    public var colorsYellow600 = YSColor(0xD69E2E)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Yellow 700`.
    ///
    /// - It has a color value of `#b7791f`
    /// - Returns: ``YSColor``
    public var colorsYellow700 = YSColor(0xB7791F)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Yellow 800`.
    ///
    /// - It has a color value of `#975a16`
    /// - Returns: ``YSColor``
    public var colorsYellow800 = YSColor(0x975A16)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Yellow 900`.
    ///
    /// - It has a color value of `#744210`
    /// - Returns: ``YSColor``
    public var colorsYellow900 = YSColor(0x744210)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Green 100`.
    ///
    /// - It has a color value of `#f0fff4`
    /// - Returns: ``YSColor``
    public var colorsGreen100 = YSColor(0xF0FFF4)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Green 200`.
    ///
    /// - It has a color value of `#c6f6d5`
    /// - Returns: ``YSColor``
    public var colorsGreen200 = YSColor(0xC6F6D5)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Green 300`.
    ///
    /// - It has a color value of `#9ae6b4`
    /// - Returns: ``YSColor``
    public var colorsGreen300 = YSColor(0x9AE6B4)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Green 400`.
    ///
    /// - It has a color value of `#68d391`
    /// - Returns: ``YSColor``
    public var colorsGreen400 = YSColor(0x68D391)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Green 500`.
    ///
    /// - It has a color value of `#31a461`
    /// - Returns: ``YSColor``
    public var colorsGreen500 = YSColor(0x31A461)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Green 600`.
    ///
    /// - It has a color value of `#38a169`
    /// - Returns: ``YSColor``
    public var colorsGreen600 = YSColor(0x38A169)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Green 700`.
    ///
    /// - It has a color value of `#2f855a`
    /// - Returns: ``YSColor``
    public var colorsGreen700 = YSColor(0x2F855A)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Green 800`.
    ///
    /// - It has a color value of `#276749`
    /// - Returns: ``YSColor``
    public var colorsGreen800 = YSColor(0x276749)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Green 900`.
    ///
    /// - It has a color value of `#22543d`
    /// - Returns: ``YSColor``
    public var colorsGreen900 = YSColor(0x22543D)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Teal 100`.
    ///
    /// - It has a color value of `#e6fffa`
    /// - Returns: ``YSColor``
    public var colorsTeal100 = YSColor(0xE6FFFA)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Teal 200`.
    ///
    /// - It has a color value of `#b2f5ea`
    /// - Returns: ``YSColor``
    public var colorsTeal200 = YSColor(0xB2F5EA)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Teal 300`.
    ///
    /// - It has a color value of `#81e6d9`
    /// - Returns: ``YSColor``
    public var colorsTeal300 = YSColor(0x81E6D9)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Teal 400`.
    ///
    /// - It has a color value of `#4fd1c5`
    /// - Returns: ``YSColor``
    public var colorsTeal400 = YSColor(0x4FD1C5)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Teal 500`.
    ///
    /// - It has a color value of `#38b2ac`
    /// - Returns: ``YSColor``
    public var colorsTeal500 = YSColor(0x38B2AC)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Teal 600`.
    ///
    /// - It has a color value of `#319795`
    /// - Returns: ``YSColor``
    public var colorsTeal600 = YSColor(0x319795)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Teal 700`.
    ///
    /// - It has a color value of `#2c7a7b`
    /// - Returns: ``YSColor``
    public var colorsTeal700 = YSColor(0x2C7A7B)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Teal 800`.
    ///
    /// - It has a color value of `#285e61`
    /// - Returns: ``YSColor``
    public var colorsTeal800 = YSColor(0x285E61)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Teal 900`.
    ///
    /// - It has a color value of `#234e52`
    /// - Returns: ``YSColor``
    public var colorsTeal900 = YSColor(0x234E52)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Blue 100`.
    ///
    /// - It has a color value of `#ebf8ff`
    /// - Returns: ``YSColor``
    public var colorsBlue100 = YSColor(0xEBF8FF)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Blue 200`.
    ///
    /// - It has a color value of `#bee3f8`
    /// - Returns: ``YSColor``
    public var colorsBlue200 = YSColor(0xBEE3F8)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Blue 300`.
    ///
    /// - It has a color value of `#90cdf4`
    /// - Returns: ``YSColor``
    public var colorsBlue300 = YSColor(0x90CDF4)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Blue 400`.
    ///
    /// - It has a color value of `#63b3ed`
    /// - Returns: ``YSColor``
    public var colorsBlue400 = YSColor(0x63B3ED)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Blue 500`.
    ///
    /// - It has a color value of `#4299e1`
    /// - Returns: ``YSColor``
    public var colorsBlue500 = YSColor(0x4299E1)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Blue 600`.
    ///
    /// - It has a color value of `#3182ce`
    /// - Returns: ``YSColor``
    public var colorsBlue600 = YSColor(0x3182CE)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Blue 700`.
    ///
    /// - It has a color value of `#2b6cb0`
    /// - Returns: ``YSColor``
    public var colorsBlue700 = YSColor(0x2B6CB0)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Blue 800`.
    ///
    /// - It has a color value of `#2c5282`
    /// - Returns: ``YSColor``
    public var colorsBlue800 = YSColor(0x2C5282)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Blue 900`.
    ///
    /// - It has a color value of `#2a4365`
    /// - Returns: ``YSColor``
    public var colorsBlue900 = YSColor(0x2A4365)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Indigo 100`.
    ///
    /// - It has a color value of `#ebf4ff`
    /// - Returns: ``YSColor``
    public var colorsIndigo100 = YSColor(0xEBF4FF)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Indigo 200`.
    ///
    /// - It has a color value of `#c3dafe`
    /// - Returns: ``YSColor``
    public var colorsIndigo200 = YSColor(0xC3DAFE)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Indigo 300`.
    ///
    /// - It has a color value of `#a3bffa`
    /// - Returns: ``YSColor``
    public var colorsIndigo300 = YSColor(0xA3BFFA)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Indigo 400`.
    ///
    /// - It has a color value of `#7f9cf5`
    /// - Returns: ``YSColor``
    public var colorsIndigo400 = YSColor(0x7F9CF5)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Indigo 500`.
    ///
    /// - It has a color value of `#667eea`
    /// - Returns: ``YSColor``
    public var colorsIndigo500 = YSColor(0x667EEA)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Indigo 600`.
    ///
    /// - It has a color value of `#5a67d8`
    /// - Returns: ``YSColor``
    public var colorsIndigo600 = YSColor(0x5A67D8)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Indigo 700`.
    ///
    /// - It has a color value of `#4c51bf`
    /// - Returns: ``YSColor``
    public var colorsIndigo700 = YSColor(0x4C51BF)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Indigo 800`.
    ///
    /// - It has a color value of `#434190`
    /// - Returns: ``YSColor``
    public var colorsIndigo800 = YSColor(0x434190)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Indigo 900`.
    ///
    /// - It has a color value of `#3c366b`
    /// - Returns: ``YSColor``
    public var colorsIndigo900 = YSColor(0x3C366B)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Purple 100`.
    ///
    /// - It has a color value of `#faf5ff`
    /// - Returns: ``YSColor``
    public var colorsPurple100 = YSColor(0xFAF5FF)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Purple 200`.
    ///
    /// - It has a color value of `#e9d8fd`
    /// - Returns: ``YSColor``
    public var colorsPurple200 = YSColor(0xE9D8FD)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Purple 300`.
    ///
    /// - It has a color value of `#d6bcfa`
    /// - Returns: ``YSColor``
    public var colorsPurple300 = YSColor(0xD6BCFA)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Purple 400`.
    ///
    /// - It has a color value of `#b794f4`
    /// - Returns: ``YSColor``
    public var colorsPurple400 = YSColor(0xB794F4)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Purple 500`.
    ///
    /// - It has a color value of `#9f7aea`
    /// - Returns: ``YSColor``
    public var colorsPurple500 = YSColor(0x9F7AEA)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Purple 600`.
    ///
    /// - It has a color value of `#805ad5`
    /// - Returns: ``YSColor``
    public var colorsPurple600 = YSColor(0x805AD5)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Purple 700`.
    ///
    /// - It has a color value of `#6b46c1`
    /// - Returns: ``YSColor``
    public var colorsPurple700 = YSColor(0x6B46C1)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Purple 800`.
    ///
    /// - It has a color value of `#553c9a`
    /// - Returns: ``YSColor``
    public var colorsPurple800 = YSColor(0x553C9A)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Purple 900`.
    ///
    /// - It has a color value of `#44337a`
    /// - Returns: ``YSColor``
    public var colorsPurple900 = YSColor(0x44337A)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Pink 100`.
    ///
    /// - It has a color value of `#fff5f7`
    /// - Returns: ``YSColor``
    public var colorsPink100 = YSColor(0xFFF5F7)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Pink 200`.
    ///
    /// - It has a color value of `#fed7e2`
    /// - Returns: ``YSColor``
    public var colorsPink200 = YSColor(0xFED7E2)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Pink 300`.
    ///
    /// - It has a color value of `#fbb6ce`
    /// - Returns: ``YSColor``
    public var colorsPink300 = YSColor(0xFBB6CE)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Pink 400`.
    ///
    /// - It has a color value of `#f687b3`
    /// - Returns: ``YSColor``
    public var colorsPink400 = YSColor(0xF687B3)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Pink 500`.
    ///
    /// - It has a color value of `#ed64a6`
    /// - Returns: ``YSColor``
    public var colorsPink500 = YSColor(0xED64A6)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Pink 600`.
    ///
    /// - It has a color value of `#d53f8c`
    /// - Returns: ``YSColor``
    public var colorsPink600 = YSColor(0xD53F8C)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Pink 700`.
    ///
    /// - It has a color value of `#b83280`
    /// - Returns: ``YSColor``
    public var colorsPink700 = YSColor(0xB83280)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Pink 800`.
    ///
    /// - It has a color value of `#97266d`
    /// - Returns: ``YSColor``
    public var colorsPink800 = YSColor(0x97266D)
    
    /// Creates a dynamic ``YSColor`` referred to as `Colors Pink 900`.
    ///
    /// - It has a color value of `#702459`
    /// - Returns: ``YSColor``
    public var colorsPink900 = YSColor(0x702459)
    
}