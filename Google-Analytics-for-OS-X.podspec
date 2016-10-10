Pod::Spec.new do |s|
  s.name             = "Google-Analytics-for-OS-X"
  s.version          = "1.1"
  s.summary          = "Google Analytics SDK for OS X."
  s.description      = <<-DESC
  This is an Objective-C wrapper around Google's Measurement Protocol
                       DESC

  s.homepage         = "https://github.com/MacPaw/Google-Analytics-for-OS-X"
  s.screenshots     = "http://raw.githubusercontent.com/MacPaw/Google-Analytics-for-OS-X/master/screenshot.png"
  s.license          = 'MIT'
  s.author           = { "Denys Stas" => "zyafa@macpaw.com" }
  s.source           = { :git => "https://github.com/MacPaw/Google-Analytics-for-OS-X.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/MacPaw'

  s.platform     = :osx, '10.9'
  s.requires_arc = true

  s.source_files = "GoogleAnalyticsTracker/**/*.{h,m}"
  s.resources = "GoogleAnalyticsTracker/**/*.xib"
  s.public_header_files = "GoogleAnalyticsTracker/**/*.h"
  s.module_name = "GoogleAnalyticsTracker"
  s.header_dir = "GoogleAnalyticsTracker"
end
