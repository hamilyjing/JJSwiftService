Pod::Spec.new do |s|

  s.name         = "JJSwiftService"
  s.version      = "1.0.1"
  s.summary      = "iOS swift service framework"
  s.homepage     = "https://github.com/hamilyjing/JJSwiftService"
  s.license      = "MIT"
  s.author             = { "JJ" => "gongjian_001@126.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/hamilyjing/JJSwiftService.git", :tag => s.version }
  s.source_files  = "JJSwiftService", "JJSwiftService/**/*.{swift,h,m}"

  s.dependency "JJSwiftNetwork"

end
