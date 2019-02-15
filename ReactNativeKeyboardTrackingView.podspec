require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "ReactNativeKeyboardTrackingView"
  s.version      = package['version']
  s.summary      = package['description']

  s.authors      = "Wix.com"
  s.homepage     = package['homepage']
  s.license      = package['license']
  s.platform     = :ios, "9.0"

  s.module_name  = 'ReactNativeKeyboardTrackingView'

  s.source       = { :git => "https://github.com/wix/react-native-keyboard-tracking-view.git", :tag => "#{s.version}" }
  s.source_files  = "lib/**/*.{h,m}"
  s.exclude_files  = ""

  s.dependency 'React'
  s.frameworks = 'UIKit'
end