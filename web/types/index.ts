import type { DesignToken } from "style-dictionary/types/DesignToken";

export type BoxShadowDesignTokenValue = [
  {
    x: number;
    y: number;
    spread: number;
    blur: number;
    color: string;
    type: string;
  }
];

export type BoxShadowDesignToken = Omit<DesignToken, "value"> & {
  value: BoxShadowDesignTokenValue;
};
