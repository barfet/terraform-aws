resource "aws_kinesis_stream" "logging" {
  name             = "${var.kinesis_stream_prefix}.borysenok.com"
  shard_count      = 1
  retention_period = 48

  shard_level_metrics = [
    "IncomingBytes",
    "OutgoingBytes",
  ]

  tags {
    Name = "Amazon Kinesis Stream for application Logs"
  }
}