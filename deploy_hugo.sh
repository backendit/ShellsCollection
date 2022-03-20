# 将生成的public一键发布到服务器，这里是github
# 进入到hugo的主目录
cd /Users/maojianyu/develop/JYMaoTechBlog
# 先删除原来的public文件夹
rm -rf public
# 生成静态页面
hugo --theme=LoveIt
# cp到指定的目录，强制覆盖原来的文件
cd public
\cp -rf ./* /Users/maojianyu/develop/GitHubProject/backendit.github.io/
echo "开始提交、推送..."
# 提交修改
cd /Users/maojianyu/develop/GitHubProject/backendit.github.io
git status
git add .
git commit -m "$1"
git push origin main