Paperclip.interpolates(:s3_working_url) { |attachment, style|
    "#{attachment.s3_protocol}://#{attachment.bucket_name}.s3.amazonaws.com/#{attachment.path(style).gsub(%r{^/}, "")}"
}
