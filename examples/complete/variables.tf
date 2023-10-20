// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

variable "name" {
  description = "The name of the pipeline"
  type        = string
}

variable "create_s3_source" {
  description = "Create S3 source bucket for CodePipeline."
  type        = string
  default     = false
}

variable "source_s3_bucket" {
  description = "Name of the S3 source bucket."
  type        = string
  default     = null
}

variable "stages" {
  description = "One or more stage blocks."
  type        = any
}

variable "tags" {
  description = "An arbitrary map of tags that can be added to all resources."
  type        = map(string)
  default     = {}
}
