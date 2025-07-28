# NJU_article - 南大课程论文 LaTeX 模板

![version](https://img.shields.io/badge/version-v1.0-blue) ![language](https://img.shields.io/badge/language-LaTeX-orange)

这是一个为南京大学本科生课程论文设计的 LaTeX 模板。

![正式封面](https://raw.gitmirror.com/LiuZX886/NJU_article/main/template/src/fig/fig%20(1).png)

本模板基于 **XeLaTeX** 引擎，推荐使用`latexmk`编译。通过高度模块化的 `.sty` 文件设计，本模板在保持使用简单的同时，也为进一步定制提供了可能。

## 文件结构

```
NJU_article/
│
├── template/                # 模板核心文件夹
│   ├── fonts/               # 存放所需字体文件
│   ├── src/                 # 存放图片等资源
│   ├── NJU_article.cls      # 核心文档类文件
│   ├── njuabstract.sty      # 摘要样式
│   ├── njuacknowledge.sty   # 致谢样式
│   ├── njuappendix.sty      # 附录样式
│   ├── njucode.sty          # 代码块样式
│   ├── njucontent.sty       # 目录样式
│   ├── njucover.sty         # 封面样式
│   ├── njuquotecite.sty     # 引用样式
│   └── njureference.sty     # 参考文献样式
│
├── content/                 # 存放正文章节的 .tex 文件
│   └── *.tex
│
├── main.tex                 # 主文件，文档的入口
├── reference.bib            # 参考文献
├── .gitignore
├── .latexmkrc               # latexmk 自动化编译配置文件
└── README.md
```

## 环境要求

在使用本模板前，请确保您的电脑上已安装以下软件：

1. **TeX 发行版**: 推荐使用 **TeX Live**。必须包含 `xelatex` 编译引擎。

2. **Python**: `minted` 宏包的正常工作需要 Python 环境。（若不需要引用Python代码块则无需安装）

3. **Pygments**: 一个 Python 库。请在终端或命令提示符中运行以下命令进行安装：（若不需要引用Python代码块则无需安装）

   ```bash
   pip install Pygments
   ```

## 使用指南

1.  **克隆或下载项目**：`clone`本模板到本地

2.  **报告写作**：
    
    * **填写封面信息**: 打开 `main.tex` 文件，在文档的导言区（`\documentclass` 和 `\begin{document}` 之间）找到并修改 `\title`, `\author`, `\school` 等命令，填入您的个人信息。
    * **填写摘要信息**: 同样在 `main.tex` 的导言区，修改 `\cnabstract`, `\cnkeywords`, `\enabstract`, `\enkeywords` 的内容。
    * **撰写正文**: 在 `main.tex` 的 `\begin{document}` 之后开始撰写您的正文内容。您可以使用 `\section`, `\subsection` 等命令来组织文章结构。
    * **添加参考文献**: 打开 `reference.bib` 文件，按照 BibTeX 格式添加您的文献条目。在正文中使用 `\cite{}` 命令来引用它们。
    * **插入代码**: 使用 `\begin{minted}{python}` ... `\end{minted}` 环境来插入带有语法高亮的代码块。
    * **撰写致谢与附录**: 分别使用 `njuacknowledgements` 和 `njuappendix` 环境来包裹相应内容。
    
3.  **编译文档**：
    
    打开终端，在项目根目录运行以下命令即可：
    
    ```bash
    latexmk -xelatex main.tex
    ```
    `latexmk` 会自动读取 `.latexmkrc` 配置文件，并完成所有必要的编译步骤，最终在根目录生成 `main.pdf`。

## 模板细节

### 封面

在`njucover.sty`中提供了两个封面生成命令：`makesimplecover`和`makeformalcover`，分别生成简单封面和正式封面。

<table style="width: 100%; border: none; text-align: center;">
  <thead>
    <tr>
      <th style="width: 50%; font-weight: bold; padding-bottom: 10px;">正式封面</th>
      <th style="width: 50%; font-weight: bold; padding-bottom: 10px;">简单封面</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="padding: 5px; vertical-align: top;">
        <img src="https://raw.gitmirror.com/LiuZX886/NJU_article/main/template/src/fig/fig%20(1).png" alt="正式封面" style="width: 100%; height: 400px; object-fit: contain;">
      </td>
      <td style="padding: 5px; vertical-align: top;">
        <img src="https://raw.gitmirror.com/LiuZX886/NJU_article/main/template/src/fig/fig%20(5).png" alt="简单封面" style="width: 100%; height: 400px; object-fit: contain;">
      </td>
    </tr>
  </tbody>
</table>


其中正式封面是单独的一页；简单封面则是一个简单的标题和作者信息，下方则直接接上正文，其中副标题、学号、学院是可选的。封面所需的信息在`info.tex`中输入

### 摘要

在`njuabstract.sty`中提供了中文、英文两种摘要和关键词生成命令，都是可选项。摘要所需的信息在`info.tex`中输入，而摘要和关键词则在`content/abstract_cn.tex`和`content/abstract_en.tex`中相应位置输入，最后直接编译`main.tex`即可。

<table style="width: 100%; border: none; text-align: center;">
  <thead>
    <tr>
      <th style="width: 50%; font-weight: bold; padding-bottom: 10px;">中文摘要</th>
      <th style="width: 50%; font-weight: bold; padding-bottom: 10px;">英文摘要</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="padding: 5px; vertical-align: top;">
        <img src="https://raw.gitmirror.com/LiuZX886/NJU_article/main/template/src/fig/fig%20(2).png" alt="中文摘要" style="width: 100%; height: 400px; object-fit: contain;">
      </td>
      <td style="padding: 5px; vertical-align: top;">
        <img src="https://raw.gitmirror.com/LiuZX886/NJU_article/main/template/src/fig/fig%20(3).png" alt="英文摘要" style="width: 100%; height: 400px; object-fit: contain;">
      </td>
    </tr>
  </tbody>
</table>

### 目录

在`njucontent.sty`中提供了目录生成命令`maketableofcontents`，可以生成如下目录：

![目录](https://raw.gitmirror.com/LiuZX886/NJU_article/main/template/src/fig/fig%20(4).png)

### 参考文献

在`njureference.sty`中提供了参考文献生成命令`makenjureference`，生成的参考文献如下：

![参考文献](https://raw.gitmirror.com/LiuZX886/NJU_article/main/template/src/fig/fig%20(6).png)

### 致谢

在`njuacknowledgements.sty`中提供了致谢环境命令，若需要致谢则直接在`content/acknowledgements`中修改即可。致谢样式如下：

![致谢](https://raw.gitmirror.com/LiuZX886/NJU_article/main/template/src/fig/fig%20(7).png)

### 附录

在`njuappendix.tex`提供了附录环境，可选，在`content/appendix`中修改即可，附录效果如下：

![附录](https://raw.gitmirror.com/LiuZX886/NJU_article/main/template/src/fig/fig%20(8).png)

### 代码块

代码块可以以下方代码引用，只需要将`language`改成所需语言即可，效果如上：

```latex
\begin{minted}{language}
    ***
\end{minted}
```



## 模板定制

本模板的模块化设计让定制变得简单。例如：
* 想修改封面布局？请编辑 `template/njucover.sty`。
* 想修改代码块排版？请编辑 `template/njucode.sty`。
* 想更换全局字体？请编辑 `template/NJU_article.cls` 中的字体设置部分。

欢迎通过pr交流。

## 参考文献

本模板的开发过程中，在内容编排与页面排版参考了以下内容

1. [南京大学关于加强2025年本科毕业论文（设计）管理工作的通知](https://jw.nju.edu.cn/99/f7/c26263a760311/page.htm)
2. [党政机关公文格式国家标准（GB/T 9704-2012）](https://openstd.samr.gov.cn/bzgk/gb/newGbInfo?hcno=F3CC9BEF482524C895FDA7A08BB4A70E)
3. [《文后参考文献著录规则》（GB／T7714-2015） | 教育部高等学校图书情报工作指导委员会](http://www.scal.edu.cn/dxtsgxb/201906120155)
4. [NJU_LaTex_Template南京大学通用作业模板](https://github.com/Sensente/NJU_LaTex_Template/)

## 致谢

若果不是`Gemini`、`Chatgpt`、`Qwen`的大力支持，这个模板不会诞生得如此之快。