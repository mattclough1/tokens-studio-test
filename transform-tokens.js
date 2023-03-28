const fs = require("fs");
const path = require("path");
const { transformTokens } = require("token-transformer");
const StyleDictionary = require("style-dictionary");
const _ = require("lodash");

const rawTokens = require("./tokens.json");

const coreStyleDictionaryJSON = transformTokens(rawTokens, ["core"]);
// Write the result of the transforms to new JSON files
fs.writeFileSync(
  path.join(__dirname, "style-dictionary", `core.json`),
  JSON.stringify(coreStyleDictionaryJSON, null, 2)
);

const sets = ["light", "dark"];

sets.forEach((set) => {
  // Transform Tokens Studio JSON to Style Dictionary JSON
  const styleDictionaryJSON = transformTokens(
    rawTokens,
    ["core", "theme", set],
    ["core"],
    { expandTypography: true, expandShadow: true }
  );
  // Write the result of the transforms to new JSON files
  fs.writeFileSync(
    path.join(__dirname, "style-dictionary", `${set}.json`),
    JSON.stringify(styleDictionaryJSON, null, 2)
  );
});

// iOS

StyleDictionary.registerFormat({
  name: "custom/format/ios-ys-color-guide",
  formatter: _.template(
    fs.readFileSync(
      path.join(__dirname, "templates", "ys-color-guide.template")
    )
  ),
});

StyleDictionary.registerTransform({
  type: "attribute",
  name: "custom/attribute/iosHexColor",
  matcher: (token) => token.type === "color",
  transformer: (token) => {
    token.attributes.iosHexColor = `0x${token.value
      .replace("#", "")
      .toUpperCase()}`;
  },
});

// All

["core", ...sets].forEach((set) => {
  StyleDictionary.extend({
    source: [`style-dictionary/${set}.json`],
    platforms: {
      web: {
        transformGroup: "web",
        prefix: "ys",
        buildPath: "build/web/",
        files: [
          {
            destination: `${set}.css`,
            format: "css/variables",
          },
        ],
      },
      ios: {
        transformGroup: "ios",
        transforms: ["name/cti/camel", "custom/attribute/iosHexColor"],
        buildPath: "build/ios/",
        files: [
          {
            destination: `${set.charAt(0).toUpperCase()}${set.slice(
              1
            )}ColorGuide.swift`,
            format: "custom/format/ios-ys-color-guide",
            options: {
              colorGuideName: `${set.charAt(0).toUpperCase()}${set.slice(
                1
              )}ColorGuide`,
            },
          },
        ],
      },
    },
  }).buildAllPlatforms();
});

// StyleDictionary.extend({
//   source: ["style-dictionary/core.json"],
//   platforms: {
//     ios: {
//       transformGroup: "ios",
//       transforms: ["name/cti/camel", "custom/attribute/iosHexColor"],
//       buildPath: "build/ios/",
//       files: [
//         {
//           destination: "ColorGuide.swift",
//           format: "custom/format/ios-ys-color-guide",
//         },
//       ],
//     },
//   },
// }).buildAllPlatforms();
