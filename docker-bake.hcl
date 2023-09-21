variable "version" {
  default = "3.9.4"
}
variable "minor" {
  default = "3.9"
}
variable "major" {
  default = "3"
}

variable "jdk" {
  default = ""
}

variable "repo" {
  default = "chinayin/maven"
}

group "default" {
  targets = ["release"]
}

function "platforms" {
  params = []
  result = ["linux/amd64", "linux/arm64"]
}

variable "registry" {
  default = "docker.io"
}

variable "repository" {
  default = "${registry}/${repo}"
}

target "_all_platforms" {
  platforms = platforms()
}

target "release" {
  inherits = ["_all_platforms"]
  context  = "${jdk}"
  tags     = [
    "${repository}:${version}-jdk-${jdk}",
    "${repository}:${minor}-jdk-${jdk}",
    "${repository}:${major}-jdk-${jdk}",
  ]
}
