declare module "token-transformer" {
  import type { DesignTokens } from "style-dictionary";

  interface TransformerOptions {
    expandTypography?: boolean;
    expandShadow?: boolean;
    expandComposition?: boolean;
    expandBorder?: boolean;
    preserveRawValue?: boolean;
    throwErrorWhenNotResolved?: boolean;
    resolveReferences?: boolean;
  }

  export function transformTokens(
    rawTokens: Record<string, object | string>,
    setsToUse?: string[],
    excludes?: string[],
    transformerOptions?: TransformerOptions
  ): DesignTokens;
}
