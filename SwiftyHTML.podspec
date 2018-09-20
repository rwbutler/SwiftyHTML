Pod::Spec.new do |s|
  s.name             = 'SwiftyHTML'
  s.version          = '0.3.0'
  s.summary          = 'SwiftyHTML makes it easy to model HTML documents in Swift.'
  s.swift_version    = '4.2'
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
end
