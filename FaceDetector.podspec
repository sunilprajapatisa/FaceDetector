Pod::Spec.new do |spec|

  spec.name         = "FaceDetector"
  spec.version      = "0.0.1"
  spec.summary      = "A short description of FaceDetector"

  spec.description  = <<-DESC
This CocoaPods library helps you perform calculation.
                   DESC

  spec.homepage     = "https://EXAMPLE/FaceDetector"
  spec.license      = { :type => "MIT", :file => "FILE_LICENSE" }

  spec.author             = { "Sunil Prajapati" => "sunil.prajapati@solutionanalysts.com" }

  spec.ios.deployment_target = "11.0"
  spec.swift_version = "4.2"

  spec.source       = { :git => "https://github.com/sunilprajapatisa/FaceDetector.git", :tag => "#{spec.version}" }
  spec.source_files  = "FaceDetector/**/*.{h,m,swift}"

end