set -e

#===============================
# This scripts is use to get the ubuntu tag
# for the custom leddzip/ubuntu-git image.
#

if [[ -z "${LEDDZIP_UBUNTU_GIT_DOCKER_TAG}" ]]; then
  exit 1
else
  echo "$LEDDZIP_UBUNTU_GIT_DOCKER_TAG"
fi
