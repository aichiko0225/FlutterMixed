# Flutter
flutter_application_path = './flutter_module/'
load File.join(flutter_application_path, '.ios', 'Flutter', 'podhelper.rb')
source 'https://mirrors.tuna.tsinghua.edu.cn/git/CocoaPods/Specs.git'
platform :ios, '11.0'

target 'FlutterMixed' do
   use_frameworks!
 
   # Flutter
   install_all_flutter_pods(flutter_application_path)
   
   pod 'Reveal-SDK','4', :configurations => ['Debug'] #Reveal4 使用
end


