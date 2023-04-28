module.exports = {
  branches: ["main"],
  plugins: [
    "@semantic-release/commit-analyzer",
    [
      "@semantic-release/npm",
      {
        pkgRoot: "web/",
        npmPublish: false,
      },
    ],
    [
      "@semantic-release/github",
      {
        assets: ["web/package.json"],
        message:
          "chore(release): ${nextRelease.version} [skip ci]\n\n${nextRelease.notes}",
      },
    ],
  ],
};
