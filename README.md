# Moderated Planet -- Prototype

This planet is originally based on https://gitlab.com/osci/planet.osci.io.git

This is an example site for running a moderated planet using GitHub PRs. It
features a basic Jekyll website using the Minima theme and a workflow to
fetch feeds, generate pages for posts and PR generation. Under the hood it
uses two GitHub actions that we developped for the task.

The workflow is defined in `.github/workflows/create-feeds-prs.yml`. You
basically need to create a GitHub issue/PR category called `feeds` (you can
name it differently and then edit the name in `create-feeds-prs.yml`),
define the `post-path` variable with the path you wish your posts to be
named, and you're good to go!
