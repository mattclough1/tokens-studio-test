module.exports = {
  branches: ["main"],
  tagFormat: "web-${version}",
  plugins: [
    [
      "@semantic-release/commit-analyzer",
      {
        preset: "angular",
        releaseRules: [
          { scope: "!(web)", type: "*", release: false },
          { scope: "web", type: "build", release: "minor" },
        ],
      },
    ],
    [
      "@semantic-release/release-notes-generator",
      {
        presetConfig: {
          types: [
            {
              scope: "web",
              type: "build",
              section: "Builds",
              hidden: false,
            },
          ],
        },
      },
    ],
    [
      "@semantic-release/changelog",
      {
        changelogFile: "./web/CHANGELOG.md",
      },
    ],
    [
      "@semantic-release/npm",
      {
        pkgRoot: "./web/",
      },
    ],
    [
      "@semantic-release/git",
      {
        message:
          "chore(web): release <%= nextRelease.version %> - <%= new Date().toLocaleDateString('en-US', {year: 'numeric', month: 'short', day: 'numeric', hour: 'numeric', minute: 'numeric' }) %> [skip ci]\n\n<%= nextRelease.notes %>",
        assets: ["./web/package*.json", "package*.json", "./web/CHANGELOG.md"],
      },
    ],
  ],
};
