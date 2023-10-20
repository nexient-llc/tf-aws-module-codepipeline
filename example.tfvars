# Replace the <> with the actual values
name             = "my-pipeline"
create_s3_source = true
source_s3_bucket = "test-bucket-1234567890"

stages = [
  {
    stage_name = "Source"
    name       = "Source"
    category   = "Source"
    owner      = "AWS"
    provider   = "S3"
    version    = "1"
    configuration = {
      S3Bucket             = "aaron-test-bucket-778189110199"
      S3ObjectKey          = "trigger_pipeline.zip"
      PollForSourceChanges = "false"
    }
    input_artifacts  = []
    output_artifacts = ["SourceArtifact"]
    run_order        = null
    region           = null
    namespace        = null
  },
  {
    stage_name       = "Manual-Approval"
    name             = "Manual-Approval"
    category         = "Approval"
    owner            = "AWS"
    provider         = "Manual"
    version          = "1"
    configuration    = {}
    input_artifacts  = []
    output_artifacts = []
    run_order        = null
    region           = null
    namespace        = null
  }
]
