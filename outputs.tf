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

output "id" {
  description = "The codepipeline ID"
  value       = aws_codepipeline.this.id
}

output "arn" {
  description = "The codepipeline ARN"
  value       = aws_codepipeline.this.arn
}

output "source_s3_bucket_arn" {
  description = "The codepipeline source s3 bucket ARN"
  value       = aws_s3_bucket.source[0].arn
}

output "pipelineType" {
  description = "The codepipeline pipelineType"
  value       = var.pipelineType
}
