Pod::Spec.new do |s|
  s.name     = 'YDExtension'
  s.version  = '1.0.0'
  s.license  = 'MIT'
  s.summary  = 'A delightful iOS and OS X YDExtension framework.'
  s.homepage = 'https://github.com/wangyund/YDExtension'
  s.social_media_url = 'https://github.com/wangyund/YDExtension'
  s.authors  = { 'wangyund' => 'wuyezhiguhun@163.com' }
  s.source   = { :git => 'https://github.com/wangyund/YDExtension.git', :tag => s.version, :submodules => true }
  s.requires_arc = true
  
  s.public_header_files = 'Extension/Header/YDExtensionHeader.h'
  s.source_files = 'Extension/Header/YDExtensionHeader.h'

  s.frameworks = 'UIKit','Foundation'  

EOS
  
  s.subspec 'Image' do |ss|
    ss.source_files = 'Extension/Image/*.{h,m}'

  end

  s.subspec 'View' do |ss|
    ss.source_files = 'Extension/View/*.{h,m}'

  end


end
