class SimpleGitWorktree < Formula
  desc "Simple git worktree manager"
  homepage "https://github.com/silasvasconcelos/simple-git-worktreee"
  url "https://github.com/silasvasconcelos/simple-git-worktreee/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "35b8ccf771fc92d2405252d718e356a22b78e3dfb1360add48a167618c7367fc"
  license "MIT"

  depends_on "git"

  def install
    bin.install "bin/git-wt"
  end

  test do
    assert_match "git-wt", shell_output("#{bin}/git-wt version")
  end
end