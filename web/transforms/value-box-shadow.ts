import type { Named, Transform } from "style-dictionary";
import type { BoxShadowDesignToken } from "../types";

/**
 * Converts expanded box-shadow token values, e.g.
 *
 * `{ x: number; y: number; spread: number; blur: number; color: string; type: <string> }`
 *
 * to a CSS box-shadow shorthand property value, e.g.
 *
 * `<x>px <y>px <spread>px <blur>px <color> <type>`
 */
export const valueBoxShadowTransform: Named<Transform> = {
  type: "value",
  name: "value/boxShadow",
  matcher: (token) => token.type === "boxShadow",
  transformer: (token: BoxShadowDesignToken) =>
    [token.value]
      .flat()
      .reduce((boxShadowStrings, currentValue) => {
        const { x, y, spread, blur, color, type } = currentValue;
        const maybeInset = type === "innerShadow" ? "inset" : "";
        return [
          ...boxShadowStrings,
          `${x}px ${y}px ${spread}px ${blur}px ${color} ${maybeInset}`.trim(),
        ];
      }, [] as string[])
      .join(", "),
};
