#
# Be sure to run `pod lib lint SwiftyHTML.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SwiftyHTML'
  s.version          = '0.2.0'
  s.summary          = 'SwiftyHTML makes it easy to model HTML documents in Swift.'
  s.swift_version    = '3.2'
  s.description      = <<-DESC
SwiftyHTML makes it easy to model and generate HTML documents using Swift.
                       DESC

  s.homepage         = 'https://github.com/rwbutler/SwiftyHTML'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'rwbutler' => 'github@rwbutler.com' }
  s.source           = { :git => 'https://github.com/rwbutler/SwiftyHTML.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'SwiftyHTML/Classes/**/*'
  
  # s.resource_bundles = {
  #   'SwiftyHTML' => ['SwiftyHTML/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
