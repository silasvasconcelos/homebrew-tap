class SimpleGitWorktree < Formula
  desc "Simple git worktree manager"
  homepage "https://github.com/silasvasconcelos/simple-git-worktreee"
  url "https://github.com/silasvasconcelos/simple-git-worktreee/archive/refs/tags/v1.2.0.tar.gz"
  sha256 "4b9cd11c3f9d6e5a48c63c1b03b90dd9966b658f6dd34c7cd917361e0f080ef7"
  license "MIT"

  depends_on "git"

  def install
    bin.install "bin/git-wt"
  end

  test do
    assert_match "git-wt", shell_output("#{bin}/git-wt version")
  end
end