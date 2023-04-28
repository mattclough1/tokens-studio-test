import type { Named, Transform } from "style-dictionary";
import { BACKCOUNTRY, DARK, HUNT, LIGHT, OFFROAD } from "../constants";

/**
 * Uses token set name passed to Style Dictionary platform options via `tokenSetName` key to parse
 * the token set's theme and/or color mode
 */
export const attributeModeTheme: Named<Transform> = {
  type: "attribute",
  name: "attribute/mode/theme",
  transformer: (token, config) => {
    const modeRegex = new RegExp(`${DARK}|${LIGHT}`);
    const themeRegex = new RegExp(`${BACKCOUNTRY}|${HUNT}|${OFFROAD}`);
    const mode = config?.options?.tokenSetName
      ?.toLowerCase()
      .match(modeRegex)?.[0];
    const theme = config?.options?.tokenSetName
      ?.toLowerCase()
      .match(themeRegex)?.[0];

    return { mode, theme };
  },
};
