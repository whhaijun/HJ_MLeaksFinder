#
# Be sure to run `pod lib lint MLeaksFinder.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "HJ_MLeaksFinder"
  s.version          = "1.0.0"
  s.summary          = "Find memory leaks in your iOS app at develop time."

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

#  s.description      = <<-DESC
#TODO: Add long description of the pod here.
#                       DESC

  s.homepage         = "https://github.com/whhaijun/HJ_MLeaksFinder.git"
  s.license          = 'MIT'
  s.author           = { "HJ" => "2033253382@qq.com" }
  s.source           = { :git => "https://github.com/whhaijun/HJ_MLeaksFinder.git", :tag => s.version }

  s.ios.deployment_target = '6.0'

  s.source_files = 'HJ_MLeaksFinder/**/*.{h,m}'

  s.public_header_files = 'MLeaksFinder.h', 'HJ_MLeaksFinder/NSObject+MemoryLeak.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'FBRetainCycleDetector'
end
