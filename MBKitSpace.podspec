#
#  Be sure to run `pod spec lint MBKitSpace.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

# 私有pod名称
s.name         = "MBKitSpace"
# 当前版本号
s.version      = "0.0.1"
# 项目描述
s.summary      = "just a summary"
# 项目简介
s.description  = <<-DESC
just a description
DESC
# 仓库首页地址
s.homepage     = "https://github.com/zangyuchao/MBKitSpace.git"
# license
s.license      = { :type => "MIT", :file => "LICENSE" }
# 作者信息
s.author       = { "Author" => "Email" }
# 平台
s.platform     = :ios
# 平台版本
s.platform     = :ios, "8.0"
# 仓库源
s.source       = { :git => "https://github.com/zangyuchao/MBKitSpace.git", :tag => "#{s.version}" }
# 代码源文件地址，**/*表示Classes目录及其子
s.source_files  = "CommonComponent", "CommonComponent/**/*.{h,m}"
s.exclude_files = "CommonComponent/**"
end
