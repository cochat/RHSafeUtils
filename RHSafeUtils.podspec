Pod::Spec.new do |s|
  s.name         = "RHSafeUtils"
  s.version      = "1.1.0"
  
  s.summary      = "数组、字典、字符串的安全校验"
  s.homepage     = "https://github.com/cochat/RHSafeUtils"
  s.license      = "MIT"
  s.author       = { "liangju" => "liuliangju@ruaho.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/cochat/RHSafeUtils.git", :tag => "#{s.version}" }
  s.source_files = "RHSafeUtils/Classes/*.{h,m}"
  s.requires_arc = true

end