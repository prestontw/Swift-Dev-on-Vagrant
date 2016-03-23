# Swift Development with Vagrant

## Dockerfile
This is the file from which we build the container used in development.
This file is included for convenience
as in the Vagrantfile that we do not specify
<p><code>d.build_dir = "."</code></p>
Instead, we specifically use the image created by this dockerfile.

If you would like to build a new image,
use
<p><code>docker build -t <username>/<imagename>:<tag> .</code></p>
The period above specifies the path to the dockerfile--
in this case, it is in the current directory,
so we use ".".

## setup.sh
This file moves the responsibility of downloading packages and setting up
from the Vagrantfile.
At some point, we should move the basic installation of git, vim, make, etc.
into a container and then build our vagrant environments
from this partially set-up container.

## Vagrantfile
We assume that we are using the docker provider for its excellent performance on Linux.
Additionally, rather than specifying the location of a dockerfile,
we use a specific docker image (see the dockerfile section above).

## TODO
See if there is a way to set the tag from vagrant.
But then again, this shouldn't be an issue
once we consolidate to a simple base container.
