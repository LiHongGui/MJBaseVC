
Pod::Spec.new do |s|
  # 名称，pod search 搜索的关键词
  s.name         = "MJBaseVC"
  # 版本
  s.version      = "0.0.6"
  # 简介，pod search 搜索的关键词
  s.summary      = "MJBaseVC"

  # 主页地址，例如Github地址
  s.homepage     = "https://github.com/LiHongGui/MJBaseVC.git"
  # 许可证
  s.license             = { :type => "MIT", :file => "LICENSE" }
  # 作者
  s.author             = { "LiHongGui" => "lihonggui1988@outlook.com" }
  # 平台
  s.platform            = :ios, "8.0"
  # Git仓库地址，例如在Github地址后边加上 .git 就是Git仓库地址
  s.source       = { :git => "https://github.com/LiHongGui/MJBaseVC.git", :tag => "#{s.version}" }
  # 需要包含的源文件，常见的写法如下  
  s.source_files  = "*"
  # 是否要求ARC
  s.requires_arc        = true
end


