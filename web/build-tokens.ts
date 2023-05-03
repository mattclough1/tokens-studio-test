import * as fs from "fs";
import * as path from "path";
import * as fsPromises from "fs/promises";
import StyleDictionary from "style-dictionary";
import template from "lodash.template";
import {
  BACKCOUNTRY,
  HUNT,
  OFFROAD,
  LIGHT,
  DARK,
} from "../scripts/generate-style-dictionary/constants";

const BUILD_PATH = "web/dist/";

console.log("test");
// Formatter for light mode CSS
StyleDictionary.registerFormat({
  name: "css/variables/light",
  formatter: template(
    fs.readFileSync(
      path.join(__dirname, "templates", "light.template"),
      "utf-8"
    )
  ),
});

// Formatter for dark mode CSS
StyleDictionary.registerFormat({
  name: "css/variables/dark",
  formatter: template(
    fs.readFileSync(path.join(__dirname, "templates", "dark.template"), "utf-8")
  ),
});

async function generateCSStokens() {
  const styleDictionaryFileNames = await fsPromises.readdir(
    "style-dictionary/"
  );

  const modeRegex = new RegExp(`${DARK}|${LIGHT}`);
  const themeRegex = new RegExp(`${BACKCOUNTRY}|${HUNT}|${OFFROAD}`);

  styleDictionaryFileNames.forEach((fileName) => {
    const fileNameWithoutExtension = fileName.split(".")[0];
    // Parse theme from token set name
    const theme = fileNameWithoutExtension.match(themeRegex)?.[0];
    const mode = fileNameWithoutExtension.match(modeRegex)?.[0];
    // Default formatter
    let formatter = "css/variables";
    // Use light or dark formatters if "light" or "dark" are present in the token set name
    if (mode === LIGHT) {
      formatter = `${formatter}/light`;
    }
    if (mode === DARK) {
      formatter = `${formatter}/dark`;
    }
    StyleDictionary.extend({
      source: [`style-dictionary/${fileName}`],
      platforms: {
        css: {
          transforms: ["name/cti/kebab", "size/px", "color/hex8"],
          prefix: "ys",
          buildPath: BUILD_PATH,
          files: [
            {
              destination: `${fileName.split(".")[0]}.css`,
              format: formatter,
              options: { theme },
            },
          ],
        },
      },
    }).buildAllPlatforms();
  });
}

generateCSStokens();
