module.exports = {
  branches: ["main"],
  tagFormat: "web-${version}",
  plugins: [
    [
      "@semantic-release/commit-analyzer",
      {
        preset: "angular",
        releaseRules: [
          { breaking: true, release: "major" },
          { type: "feat", release: false },
          { type: "fix", release: false },
          { type: "perf", release: false },
          { scope: "web", type: "fix", release: "patch" },
          { scope: "web", type: "feat", release: "minor" },
        ],
      },
    ],
  ],
};
