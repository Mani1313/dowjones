resource "aws_s3_bucket" "dj_bucket" {
  bucket = var.BUCKET_NAME
  acl    = "public-read"
  policy = <<EOF
{
  "Version":"2012-10-17",
  "Statement":[{
        "Sid":"PublicReadForGetBucketObjects",
        "Effect":"Allow",
          "Principal": "*",
      "Action":["s3:GetObject"],
      "Resource":["arn:aws:s3:::${var.BUCKET_NAME}/*"]
    }
  ]
}
EOF

  force_destroy = true
  website {
    index_document = "index.html"
   }
}
