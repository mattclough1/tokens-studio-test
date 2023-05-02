module.exports = {
  branches: ["main"],
  plugins: [
    [
      "@semantic-release/commit-analyzer",
      {
        preset: "angular",
        releaseRules: [{ scope: "web", type: "*", release: false }],
      },
    ],
    "@semantic-release/release-notes-generator",
    "@semantic-release/github",
  ],
};
