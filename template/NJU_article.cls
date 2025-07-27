% --- NJU_article.cls ---
% Class Name:    NJU_article
% Class Type:    Article
% Encoding:      UTF-8
% Author:        ZX Liu
% Create Date:   2025.7.26
% Latest Update: 2025.7.27
% Version:       1.0
% Description:   南京大学本科生报告中文Latex模板

% --- 模板基础信息 ---
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{NJU_article}


% --- 所需宏包 ---
\LoadClass[a4paper, 12pt]{ctexart}
\RequirePackage{geometry}             % 用于页面尺寸设置
\RequirePackage{setspace}             % 用于行距设置
\RequirePackage{mathtools}            % 用于提供数学符号定义（对 amsmath 的扩展，提供 \coloneqq (:=) 等）
\RequirePackage{unicode-math}         % 用于设置数学字体
\RequirePackage{fontspec}             % 用于设置字体
\RequirePackage{fancyhdr}             % 用于自定义页眉页脚
\RequirePackage{njuquotecite}         % 自定义引用和脚注命令
\RequirePackage{njucover}             % 自定义封面样式
\RequirePackage{njuabstract}          % 自定义摘要和关键词格式
\RequirePackage{njucontent}           % 自定义目录格式
\RequirePackage{njuappendix}          % 自定义附录格式
\RequirePackage{njureference}         % 自定义参考文献格式
\RequirePackage{njuacknowledgements}  % 自定义致谢格式
\RequirePackage{njucode}              % 自定义代码块和语法高亮


% --- 设置页面格式 ---
% 1. 页面尺寸设置
\geometry{           % 标准： GB/T 9704-2012 
  a4paper,           % 纸张类型 A4
  top=37mm,          % 天头(上白边) 37mm
  left=28mm,         % 订口(左白边) 28mm
  textwidth=156mm,   % 版心宽度 156mm
  textheight=225mm,  % 版心高度 225mm
  headheight=15pt,   % 为页眉预留空间
  headsep=10mm,      % 页眉到正文的距离
  footskip=20mm      % 页脚距离正文的距离
}
% 2. 页眉页脚设置
\pagestyle{plain} % 页眉为空, 页脚居中显示页码
% 3. 行距设置
\onehalfspacing


% --- 字体设置 ---
% 1. 中文字体设置
\setCJKmainfont{SourceHanSerifSC-Regular.otf}[
    Path = template/fonts/,
    BoldFont = SourceHanSerifSC-Bold.otf
]
\setCJKfamilyfont{hei}{SourceHanSansSC-Regular.otf}[
    Path = template/fonts/,
    BoldFont = SourceHanSansSC-Bold.otf
]
\setCJKfamilyfont{kai}{ukai.ttf}[
    Path = template/fonts/
]
% 2. 西文字体设置
\setmainfont{Times New Roman}
%\setmainfont{STIXTwoText-Regular.otf}[
%    Path = template/fonts/,
%    BoldFont = STIXTwoText-Bold.otf,
%    ItalicFont = STIXTwoText-Italic.otf,
%    BoldItalicFont = STIXTwoText-BoldItalic.otf
%]
% 3. 数学字体设置
\setmathfont{STIXTwoMath-Regular.otf}[
    Path = template/fonts/,
    AutoFakeBold = 2.5
]

% --- 多级标题格式设置 ---
\ctexset{
  % 一级标题: 小四黑体, 编号格式 "一、"
  section = {
    format = \zihao{-4}\heiti,
    number = \zhnum{section}、,
    aftername = {}
  },
  % 二级标题: 小四黑体, 编号格式 "（一）"
  subsection = {
    format = \zihao{-4}\heiti,
    number = （\zhnum{subsection}）,
    aftername = {}
  },
  % 三级标题: 小四宋体加粗, 编号格式 "1."
  subsubsection = {
    format = \zihao{-4}\bfseries,
    number = \arabic{subsubsection}.,
    aftername = {\ }
  }
}