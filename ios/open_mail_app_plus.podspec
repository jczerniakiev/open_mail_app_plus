#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint open_mail_app_plus.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'open_mail_app_plus'
  s.version          = '0.0.2'
  s.summary          = 'Query the device for installed email apps and open them.'
  s.description      = <<-DESC
This library provides the ability to query the device for installed email apps and open those apps.
                       DESC
  s.homepage         = 'https://github.com/binSaed/open_mail_app_plus'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'open_mail_app_plus/Sources/open_mail_app_plus/**/*.swift'
  s.dependency 'Flutter'
  s.platform = :ios, '13.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'

  s.resource_bundles = {'open_mail_app_plus_privacy' => ['open_mail_app_plus/Sources/open_mail_app_plus/PrivacyInfo.xcprivacy']}
end
