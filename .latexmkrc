# .latexmkrc
# 指定编译引擎为 xelatex
$pdf_mode = 4;
$xelatex = 'xelatex -synctex=1 -interaction=nonstopmode -file-line-error -shell-escape %O %S';

# 指定参考文献的后端处理程序为 biber
$bibtex_use = 2;
$bibtex = 'biber %O %B';

# 告诉 latexmk 在 'template' 子目录中寻找 TeX 输入文件 (.cls, .sty)
ensure_path('TEXINPUTS', './template//');

# 同时为参考文献相关文件 (.bib, .bst) 添加路径
ensure_path('BIBINPUTS', './template//');
ensure_path('BSTINPUTS', './template//');