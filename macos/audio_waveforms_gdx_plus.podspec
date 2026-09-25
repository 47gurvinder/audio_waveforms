#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint audio_waveforms_gdx_plus.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'audio_waveforms_gdx_plus'
  s.version          = '2.1.0'
  s.summary          = 'A Flutter plugin for recording audio with waveforms on macOS.'
  s.description      = <<-DESC
A Flutter plugin that allows you to generate waveforms while recording audio or from audio files on macOS.
                       DESC
  s.homepage         = 'https://gurwinderdevx.com'
  s.license          = { :file => '../LICENSE' }
  s.authors          = { 'Simform Solutions' => 'developer@simform.com', 'Gurwinder Singh' => 'gurwinder@skynodigital.com' }
  s.source           = { :path => '.' }
  s.source_files     = 'Classes/**/*'
  s.dependency 'FlutterMacOS'
  s.platform = :osx, '10.14'
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
  s.swift_version = '5.0'
end
