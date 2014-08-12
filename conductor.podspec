#
#  Be sure to run `pod spec lint conductor.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "conductor"
  s.version      = "0.1.0"
  s.summary      = "Conductor for managing uiviewcontrollers instead of using story board"

  s.homepage     = "https://github.com/yamdraco/conductor"
  s.license      = { :type => "MIT" }
  s.author       = { "Draco Yam" => "yamdraco@yahoo.com" }
  s.platform     = :ios, "6.0"
  s.source       = { :git => "https://github.com/yamdraco/conductor.git", :tag => "0.1.0" }

  s.source_files  = "Conductor/lib/*.{h,m}", "Conductor/lib/segue/*.{h,m}"
  s.requires_arc = true

end
