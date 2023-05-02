module.exports = {
  branches: ["main"],
  tagFormat: "web-${version}",
  plugins: [
    [
      "@semantic-release/commit-analyzer",
      {
        preset: "angular",
        releaseRules: [{ scope: "!(web)", type: "*", release: false }],
      },
    ],
  ],
};
