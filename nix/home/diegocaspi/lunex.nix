{
  ...
}:
let
  workEnv = "~/Work";
in
{
  imports = [
    ./global
    ./features/cli
  ];

  programs.git.includes = [
    {
      condition = "gitdir:${workEnv}/";
      contents = {
        tag.gpgSign = false;
        commit.gpgSign = false;
        feature.manyFiles = true;
      };
    }
  ];
}
