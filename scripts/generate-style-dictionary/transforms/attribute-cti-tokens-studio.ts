import type { Named, Transform } from "style-dictionary";

/**
 * Maps token values from Tokens Studio to [CTI attributes](https://amzn.github.io/style-dictionary/#/tokens?id=category-type-item)
 * usable by Style Dictionary's out-of-the-box transformers
 */
export const attributeCTITokensStudio: Named<Transform> = {
  type: "attribute",
  name: "attribute/cti/tokensStudio",
  transformer: (token) => {
    const attributes: { category?: string; type?: string } = {};
    switch (token.type) {
      case "color":
        attributes.category = "color";
        break;
      case "borderRadius":
      case "borderWidth":
      case "dimension":
      case "paragraphSpacing":
      case "spacing":
        attributes.category = "size";
        break;
      case "fontSizes":
        attributes.category = "size";
        attributes.type = "font";
        break;
      case "fontFamilies":
        attributes.category = "font";
        break;
      default:
        break;
    }
    return attributes;
  },
};
