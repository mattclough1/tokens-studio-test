const { transformTokens } = require("token-transformer");
const StyleDictionary = require("style-dictionary");

// Tokens generated by Tokens Studio
const rawTokens = require("../tokens.json");

// Platform options config for each style dictionary
const STYLE_DICTIONARY_BASE_PLATFORM_CONFIG = {
  transformGroup: "css",
  transforms: [
    "attribute/cti",
    "name/cti/kebab",
    "time/seconds",
    "content/icon",
    "size/rem",
    "color/css",
    "boxShadow",
    "px",
  ],
  prefix: "ys",
  buildPath: "dist/web/",
};

// Custom transform for box shadow values
StyleDictionary.registerTransform({
  type: "value",
  name: "boxShadow",
  matcher: (token) => token.type === "boxShadow",
  transformer: (token) =>
    token.value
      .reduce((boxShadowStrings, currentValue) => {
        const { x, y, spread, blur, color, type } = currentValue;
        const maybeInset = type === "innerShadow" ? "inset" : "";
        return [
          ...boxShadowStrings,
          `${x}px ${y}px ${spread}px ${blur}px ${color} ${maybeInset}`.trim(),
        ];
      }, [])
      .join(", "),
});

// Custom transform for box shadow values
StyleDictionary.registerTransform({
  type: "value",
  name: "px",
  matcher: (token) =>
    [
      "borderRadius",
      "borderWidth",
      "dimension",
      "fontSizes",
      "spacing",
    ].includes(token.type),
  transformer: (token) => `${token.value}px`,
});

// Format our Tokens Setudio token sets for Style Dictionary
const sets = ["light", "dark"];
const styleDictionaryJSON = sets.reduce(
  (accumulator, set) => ({
    ...accumulator,
    [set]: transformTokens(rawTokens, ["core", "theme", set], ["core"], {
      expandTypography: true,
    }),
  }),
  []
);

styleDictionaryJSON.core = transformTokens(rawTokens, ["core"], [], {
  expandTypography: true,
});

// Create a StyleDictionary for each token set
const coreStyleDictionary = StyleDictionary.extend({
  tokens: styleDictionaryJSON.core,
  platforms: {
    web: {
      ...STYLE_DICTIONARY_BASE_PLATFORM_CONFIG,
      files: [
        {
          destination: "core.css",
          format: "css/variables",
        },
      ],
    },
  },
});

const lightStyleDictionary = StyleDictionary.extend({
  tokens: styleDictionaryJSON.light,
  platforms: {
    web: {
      ...STYLE_DICTIONARY_BASE_PLATFORM_CONFIG,
      files: [
        {
          destination: "light.css",
          format: "css/variables",
        },
      ],
    },
  },
});

const darkStyleDictionary = StyleDictionary.extend({
  tokens: styleDictionaryJSON.dark,
  platforms: {
    web: {
      ...STYLE_DICTIONARY_BASE_PLATFORM_CONFIG,
      files: [
        {
          destination: "dark.css",
          format: "css/variables",
          options: {
            selector: `.dark`,
          },
        },
      ],
    },
  },
});

module.exports = {
  buildWebTokens: function () {
    [coreStyleDictionary, lightStyleDictionary, darkStyleDictionary].forEach(
      (styleDictionary) => styleDictionary.buildAllPlatforms()
    );
  },
};