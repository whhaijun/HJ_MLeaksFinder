Pod::Spec.new do |s|
  s.name             = "HJ_MLeaksFinder"
  s.version          = "1.0.2"
  s.summary          = "Find memory leaks in your iOS app at develop time."


#  s.description      = <<-DESC
#TODO: Add long description of the pod here.
#                       DESC

  s.homepage         = "https://github.com/whhaijun/HJ_MLeaksFinder.git"
  s.license          = 'MIT'
  s.author           = { "HJ" => "2033253382@qq.com" }
  s.source           = { :git => "https://github.com/whhaijun/HJ_MLeaksFinder.git", :tag => s.version }

  s.ios.deployment_target = '9.0'

  s.source_files = 'MLeaksFinder/**/*'

  s.public_header_files = 'MLeaksFinder/MLeaksFinder.h', 'MLeaksFinder/NSObject+MemoryLeak.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'FBRetainCycleDetector','0.1.4'
end
