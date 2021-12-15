set -e

#===============================
# This scripts assert that gh is installed
# correctly
#

IMAGE_NAME=$1

set +e
gh_response=$(docker run --rm "$IMAGE_NAME" gh --version)
gh_response_status="$?"
set -e

if [[ "$gh_response_status" == "0" ]]
then
  echo "gh is correctly installed"
  echo "$gh_response"
else
  >&2 echo "gh is NOT correctly installed"
  >&2 echo "received error code $gh_response_status from test command"
  exit 1
fi
