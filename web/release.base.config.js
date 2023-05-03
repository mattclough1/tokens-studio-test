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
    "@semantic-release/release-notes-generator",
    [
      "@semantic-release/git",
      {
        message:
          "chore(web): release <%= nextRelease.version %> - <%= new Date().toLocaleDateString('en-US', {year: 'numeric', month: 'short', day: 'numeric', hour: 'numeric', minute: 'numeric' }) %> [skip ci]\n\n<%= nextRelease.notes %>",
      },
    ],
    [
      "@semantic-release/npm",
      {
        pkgRoot: "./web/",
      },
    ],
    [
      "@semantic-release/changelog",
      {
        changelogFile: "web/CHANGELOG.md",
      },
    ],
  ],
};
