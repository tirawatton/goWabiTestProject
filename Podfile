platform :ios, '12.0'
use_frameworks!

target 'CurrenciesProjectTest' do
  # Pods for CurrenciesProjectTest
  pod 'Alamofire'
  pod 'RxSwift', '6.1.0'
  pod 'RxCocoa', '6.1.0'
end

target 'CurrenciesProjectTestTests' do
  inherit! :search_paths
  # Pods for testing
end

target 'CurrenciesProjectTestUITests' do
  # Pods for testing
end

post_install do |pi|
    pi.pods_project.targets.each do |t|
        t.build_configurations.each do |config|
            config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '12.0'
        end
    end
end
