const baseConfig = require("./release.base.config");

module.exports = {
  ...baseConfig,
  plugins: ["@semantic-release/git"],
};
