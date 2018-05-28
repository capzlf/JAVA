//（1）淘宝镜像：npm install -g cnpm --registry=https://registry.npm.taobao.org
//（2）安装gulp: cnpm install -g gulp
//（3）gulp安装到项目本地：cnpm install --save-dev gulp
//（4）安装依赖：cnpm install gulp-jshint gulp-sass gulp-concat gulp-uglify gulp-rename --save-dev
//（5）引入组件
var jshint = require('gulp-jshint');//安装    cnpm install jshint gulp-jshint --save-dev
var ngAnnotate = require('gulp-ng-annotate');//安装   cnpm install gulp-ng-annotate --save-dev
var concat = require('gulp-concat');//安装    cnpm install gulp-concat --save-dev
var uglify = require('gulp-uglify');//安装    cnpm install gulp-uglify --save-dev
var rename = require('gulp-rename');//安装    cnpm install gulp-rename --save-dev
var minifyCss = require('gulp-minify-css');//安装     cnpm install gulp-minify-css --save-dev
