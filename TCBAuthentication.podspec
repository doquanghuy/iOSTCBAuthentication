#
#  Be sure to run `pod spec lint TCBAuthentication.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name         = "TCBAuthentication"
  s.version      = "1.0.0"
  s.homepage     = "https://github.com/doquanghuy/iOSTCBAuthentication.git"

  s.authors = { 'Techcombank' => 'info@techcombank.com.vn' }
  s.source = { :git => 'https://github.com/doquanghuy/iOSTCBAuthentication.git', :tag => s.version }
  s.summary = 'TCBAuthentication'

  s.ios.deployment_target = '13.0'
  s.swift_version = '5.0'

  s.source_files = 'TCBAuthentication/**/*.{swift}'
  s.resource = 'Assets/*'
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  s.dependency  'TCBComponents' , '1.0.0'
  s.dependency  'TCBService', '1.0.2'
  s.dependency  'RxSwift', '~> 5.0'
  s.dependency  'RxCocoa', '5'
  s.dependency  'SwiftLint', '0.40.1'
  s.dependency  'pop', '1.0.10'
  s.dependency  'SnapKit', '5.0.0'
  s.dependency  'IQKeyboardManagerSwift'

end
