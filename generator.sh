main=index.html
cat /dev/null > $main
echo $'<!DOCTYPE html><html lang="zh-CN"><head><meta charset="UTF-8"><title>Hertz\'s Blog</title></head><body><h1>Hertz\'s Blog</h1><p>Seriously, it is really a blog in 2021!<br><a href="generator.sh">生成器文件</a> 作者不可考</p><ul>' > $main
for i in `ls`; do
  if [ $i != 'index.html' ] && [ $i != 'generator.sh' ] && [ $i != 'main.html' ]; then
    echo '<li><a target="_blank" href="'$i'">'$i'</a></li>' >> $main
  fi
done
echo '</ul>Github：<a target="_blank" href="https://github.com/HertzYang/blog">HertzYang/blog</a><br>' >> $main
echo '<ul>友情链接：' >> $main
echo '<li><a target="_blank" href="https://www.6700.cc">Sun Blog</a></li>' >> $main
echo '<li><a target="_blank" href="https://zhiccc.net">Air Home</a></li>' >> $main
echo '<li><a target="_blank" href="https://i.yellowlm.net">yellowlm.net</a></li>' >> $main
echo '<li><a target="_blank" href="https://jerryxiao.cc">JerryXiao Blog</a></li>' >> $main
echo '<li><a target="_blank" href="https://blog.cas7.moe">moec@st</a></li>' >> $main
echo '<li><a target="_blank" href="https://blog.yuuta.moe">Garden in the Wonderland</a></li>' >> $main
echo '<li><a target="_blank" href="https://www.kskb.eu.org">Kskb的空间</a></li>' >> $main
echo '<li><a target="_blank" href="https://blog.baoshuo.ren">宝硕博客</a></li>' >> $main
echo '<li><a target="_blank" href="https://blog.alanyhq.com">Alanyhq Blog</a></li>' >> $main
echo '</ul></body></html>' >> $main
