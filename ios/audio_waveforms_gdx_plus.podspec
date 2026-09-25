#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint audio_waveforms_gdx_plus.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'audio_waveforms_gdx_plus'
  s.version          = '2.1.0'
  s.summary          = 'Record, play, extract, and display audio waveforms in Flutter.'
  s.description      = <<-DESC
Community-maintained Audio Waveforms plugin for Flutter on iOS.
                       DESC
  s.homepage         = 'https://gurwinderdevx.com'
  s.license          = { :file => '../LICENSE' }
  s.authors          = { 'Simform Solutions' => 'developer@simform.com', 'Gurwinder Singh' => 'gurwinder@skynodigital.com' }
  s.source           = { :path => '.' }
  s.source_files = 'audio_waveforms_gdx_plus/Sources/audio_waveforms/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '13.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
