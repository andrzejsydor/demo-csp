provider "aws" {           
  profile    = "default"   
  region     = "us-east-1" 
}                          

resource "aws_s3_bucket" "static_website_bucket" {
  bucket = "static-website-bucket-345345"
  acl    = "public-read"
  policy = "${file("policy.json")}"

  tags = {
    TYPE = "S3"
  }

  website {
    index_document="index.html"
    error_document="index.html"
  }

  versioning {
    enabled = false
  }
}

resource "aws_s3_bucket_object" "static_website_bucket_object" {
  key    = "index.html"
  bucket = "${aws_s3_bucket.static_website_bucket.id}"
  source = "${path.cwd}/../dist/angular-csp/index.html"

  content_type = "text/html"
}

resource "aws_s3_bucket_object" "js1" {
  key    = "main-es2015.30d6f5d458a7b64c9be4.js"
  bucket = "${aws_s3_bucket.static_website_bucket.id}"
  source = "${path.cwd}/../dist/angular-csp/main-es2015.30d6f5d458a7b64c9be4.js"

  content_type = "application/javascript"
}

resource "aws_s3_bucket_object" "js2" {
  key    = "main-es5.30d6f5d458a7b64c9be4.js"
  bucket = "${aws_s3_bucket.static_website_bucket.id}"
  source = "${path.cwd}/../dist/angular-csp/main-es5.30d6f5d458a7b64c9be4.js"

  content_type = "application/javascript"
}

resource "aws_s3_bucket_object" "js3" {
  key    = "polyfills-es2015.690002c25ea8557bb4b0.js"
  bucket = "${aws_s3_bucket.static_website_bucket.id}"
  source = "${path.cwd}/../dist/angular-csp/polyfills-es2015.690002c25ea8557bb4b0.js"

  content_type = "application/javascript"
}

resource "aws_s3_bucket_object" "js4" {
  key    = "polyfills-es5.9e286f6d9247438cbb02.js"
  bucket = "${aws_s3_bucket.static_website_bucket.id}"
  source = "${path.cwd}/../dist/angular-csp/polyfills-es5.9e286f6d9247438cbb02.js"

  content_type = "application/javascript"
}

resource "aws_s3_bucket_object" "js5" {
  key    = "runtime-es2015.1eba213af0b233498d9d.js"
  bucket = "${aws_s3_bucket.static_website_bucket.id}"
  source = "${path.cwd}/../dist/angular-csp/runtime-es2015.1eba213af0b233498d9d.js"

  content_type = "application/javascript"
}

resource "aws_s3_bucket_object" "js6" {
  key    = "runtime-es5.1eba213af0b233498d9d.js"
  bucket = "${aws_s3_bucket.static_website_bucket.id}"
  source = "${path.cwd}/../dist/angular-csp/runtime-es5.1eba213af0b233498d9d.js"

  content_type = "application/javascript"
}

resource "aws_s3_bucket_object" "js7" {
  key    = "styles.aa57ae48694e6b72c102.css"
  bucket = "${aws_s3_bucket.static_website_bucket.id}"
  source = "${path.cwd}/../dist/angular-csp/styles.aa57ae48694e6b72c102.css"

  content_type = "text/css"
}
