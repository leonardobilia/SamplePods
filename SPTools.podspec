Pod::Spec.new do |s|

    s.name             = 'SPTools'
    s.version          = '0.0.1'
    s.summary          = 'By far the most fantastic pod I have seen in my entire life. No joke.'

    s.description      = 'This fantastic pod do a lot of things! What are you waiting for to check it out?'

    s.homepage         = 'https://github.com/leonardobilia/SamplePods'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'Leonardo Bilia' => 'leonardo.bilia@gmail.com' }

    s.source           = { 
        :git => 'git@github.com:leonardobilia/SamplePods.git', 
        :tag => "SPTools-#{s.version}"
    }

    s.ios.deployment_target = '13.4'
   
    s.ios.framework = 'UIKit'
    s.ios.framework  = 'Foundation'

    s.public_header_files = '*.h'

    s.subspec "Network" do |spec|
        spec.source_files   = "SPTools/Network/**/*.{swift}"
        spec.public_header_files = "SPTools/*.{h}"
        spec.header_dir = "Network"
    end

    s.subspec "UI" do |spec|
        spec.source_files   = "SPTools/UI/**/*.{swift}"
        spec.public_header_files = "SPTools/*.{h}"
        spec.header_dir = "UI"
    end

    s.subspec "Analytics" do |spec|
        spec.source_files   = "SPTools/Analytics/**/*.{swift}"
        spec.public_header_files = "SPTools/*.{h}"
        spec.header_dir = "Analytics"
    end

 end