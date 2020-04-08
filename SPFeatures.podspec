Pod::Spec.new do |s|

    s.name             = 'SPFeatures'
    s.version          = '0.0.1'
    s.summary          = 'By far the most fantastic pod I have seen in my entire life. No joke.'

    s.description      = 'This fantastic pod do a lot of things! What are you waiting for to check it out?'

    s.homepage         = 'https://github.com/leonardobilia/SamplePods'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'Leonardo Bilia' => 'leonardo.bilia@gmail.com' }

    s.source           = { 
        :git => 'git@github.com:leonardobilia/SamplePods.git', 
        :tag => "SPFeatures-#{s.version}"
    }

    s.ios.deployment_target = '13.4'
   
    s.ios.framework = 'UIKit'
    s.ios.framework  = 'Foundation'

    s.public_header_files = '*.h'

    s.subspec "Onboarding" do |spec|
        spec.source_files   = "SPFeatures/Onboarding/**/*.{swift}"
        spec.public_header_files = "SPFeatures/*.{h}"
        spec.header_dir = "Onboarding"
    end

    s.subspec "Home" do |spec|
        spec.source_files   = "SPFeatures/Home/**/*.{swift}"
        spec.public_header_files = "SPFeatures/*.{h}"
        spec.header_dir = "Home"
    end

    s.subspec "Profile" do |spec|
        spec.source_files   = "SPFeatures/Profile/**/*.{swift}"
        spec.public_header_files = "SPFeatures/*.{h}"
        spec.header_dir = "Profile"
    end

 end