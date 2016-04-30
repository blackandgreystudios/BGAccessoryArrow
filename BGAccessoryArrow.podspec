Pod::Spec.new do |s|
  s.name = 'BGAccessoryArrow'
  s.version = '1.0.0'
  s.license = { :type => 'MIT', :file => 'LICENSE' }
  s.summary = 'A customizable arrow for UITableViewCell accessory views.'
  s.description  = <<-DESC
                   A Swift framework that provides a customizable arrow for UITableViewCell accessory views.
                   DESC
  s.homepage = 'https://github.com/blackandgreystudios/BGAccessoryArrow'
  s.author = 'Black & Grey Studios'
  s.source = { :git => 'https://github.com/blackandgreystudios/BGAccessoryArrow.git', :tag => s.version }

  s.ios.deployment_target = '8.0'

  s.source_files = 'BGAccessoryArrow/*.{h,m,swift}'

  s.requires_arc = true
  s.module_name = 'BGAccessoryArrow'
end
