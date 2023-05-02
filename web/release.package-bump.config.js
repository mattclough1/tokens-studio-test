const baseConfig = require("./release.base.config");

console.log(baseConfig);

module.exports = {
  ...baseConfig,
  plugins: [
    ...baseConfig.plugins,
    [
      "@semantic-release/npm",
      {
        pkgRoot: "./web/",
        npmPublish: false,
      },
    ],
    "semantic-release-export-data",
  ],
};
