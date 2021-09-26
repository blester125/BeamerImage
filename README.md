# beamer-image

A docker image that has all the things I normally use to create BeamerSlides with.

The image includes the full texlive installation, pygments, and it moves some font files around to make them accessible. It is has python3.6 and debian bullseye. It is recent enough to have the icon for semantic scholar included in academicons.

Edit the docker file, push the changes, tag the commit with `git tag a.b.c`, and push the tags remote `git push --tags` to build a new version of the container and push it to docker hub.
