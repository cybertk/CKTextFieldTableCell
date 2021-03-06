Pod::Spec.new do |s|
  s.name             = "CKTextFieldTableCell"
  s.version          = "0.1.0"
  s.summary          = "UITableViewCell drop-in replacement with support of UITextField"
  s.homepage         = "https://github.com/cybertk/CKTextFieldTableCell"
  s.license          = "MIT"
  s.author           = "CKTextFieldTableCell Contributors"
  s.source           = { :git => "https://github.com/cybertk/CKTextFieldTableCell.git", :tag => "v#{s.version}" }

  s.platform     = :ios, "8.0"
  s.requires_arc = true

  s.source_files = "CKTextFieldTableCell/**/*.{swift,h,m,mm}"
end
