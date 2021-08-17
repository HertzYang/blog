main=index.html
cat /dev/null > $main
echo $'<!DOCTYPE html><html lang="zh-CN"><head><meta charset="UTF-8"><title>Hertz\'s Blog</title></head><body><h1>Hertz\'s Blog</h1><p>Seriously, it is really a blog in 2021!</br><a href="generator.sh">生成器文件</a> 作者不可考</p><ul>' > $main
for i in `ls`; do
  if [ $i != 'index.html' ] && [ $i != 'generator.sh' ] && [ $i != 'main.html' ]; then
    echo '<li><a target="_blank" href="'$i'">'$i'</a></li>' >> $main
  fi
done
echo '</ul>Github：<a target="_blank" href="https://github.com/HertzYang/blog">HertzYang/blog</a></body></html>' >> $main
