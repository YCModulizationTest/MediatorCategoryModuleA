Pod::Spec.new do |s|
  s.name         = "MediatorCategoryModuleA"
  s.version      = "1.0.0"
  s.summary      = "MediatorCategoryModuleA."
  s.description  = <<-DESC
                    this is MediatorCategoryModuleA
                   DESC

  s.homepage     = "https://github.com/YCModulizationTest/MediatorCategoryModuleA"
  s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author   = { "CwLife" => "alfred03@126.com" }
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/YCModulizationTest/MediatorCategoryModuleA.git", :tag => s.version.to_s }
  s.source_files  = "MediatorCategoryModuleA/*.{h,m,swift}"
  s.framework  = "Foundation", "UIKit" 
  s.requires_arc = true
  s.dependency "CTMediator"

end
