export const BACKCOUNTRY = "backcountry";
export const HUNT = "hunt";
export const OFFROAD = "offroad";
export const LIGHT = "light";
export const DARK = "dark";
export const CORE = "core";
export const GLOBAL = "global";

export const tokenSetNames = [
  CORE,
  `${GLOBAL} ${LIGHT}`,
  `${GLOBAL} ${DARK}`,
  `${BACKCOUNTRY} ${LIGHT}`,
  `${BACKCOUNTRY} ${DARK}`,
  `${HUNT} ${LIGHT}`,
  `${HUNT} ${DARK}`,
  `${OFFROAD} ${LIGHT}`,
  `${OFFROAD} ${DARK}`,
];
