Pod::Spec.new do |s|
  s.name         = "MaterialMotionTransitioning"
  s.summary      = "Material Motion Transitioning"
  s.version      = "1.0.0"
  s.authors      = "The Material Motion Authors"
  s.license      = "Apache 2.0"
  s.homepage     = "https://github.com/material-motion/material-motion-transitioning-objc"
  s.source       = { :git => "https://github.com/material-motion/material-motion-transitioning-objc.git", :tag => "v" + s.version.to_s }
  s.platform     = :ios, "8.0"
  s.requires_arc = true

  s.public_header_files = "src/*.h"
  s.source_files = "src/*.{h,m,mm}", "src/private/*.{h,m,mm}"
end
