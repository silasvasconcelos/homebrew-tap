class SimpleGitWorktree < Formula
  desc "Simple git worktree manager"
  homepage "https://github.com/silasvasconcelos/simple-git-worktreee"
  url "https://github.com/silasvasconcelos/simple-git-worktreee/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "ccefe7b8fe535de0b0fc1c4d29170b0e279a36c7a773e6daac2c4744bc024f6d"
  license "MIT"

  depends_on "git"

  def install
    bin.install "bin/git-wt"
  end

  test do
    assert_match "git-wt", shell_output("#{bin}/git-wt version")
  end
end