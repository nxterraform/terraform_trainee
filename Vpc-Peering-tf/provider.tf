 ################################################
# Aliases are required because of cross-region #
################################################

# Requester's credentials.
provider "aws" {
  alias = "main"
  access_key = ""
  secret_key = ""
  region = "us-east-2"

}


# Accepter's credentials.
provider "aws" {
  alias = "peer"
  access_key = ""
  secret_key = ""
  region = "ap-south-1"
}
