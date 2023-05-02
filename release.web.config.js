module.exports = {
  branches: ["main"],
  tagFormat: "web-${version}",
  plugins: [
    [
      "@semantic-release/commit-analyzer",
      {
        releaseRules: [{ scope: "web", type: "fix", release: "patch" }],
        releaseRules: [{ scope: "web", type: "feat", release: "minor" }],
        releaseRules: [{ scope: "web", type: "*!", release: "major" }],
      },
    ],
    [
      "@semantic-release/npm",
      {
        pkgRoot: "./web/",
        npmPublish: false,
      },
    ],
    "@semantic-release/git",
  ],
};
