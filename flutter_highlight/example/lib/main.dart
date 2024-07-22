import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/highlight_viewer.dart';
import 'package:flutter_highlight/theme_map.dart';
import 'package:url_launcher/url_launcher.dart';
import 'example_map.dart';

void main() => runApp(MyApp());

final title = 'Flutter Highlight Gallery';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String language = 'dart';
  String theme = 'a11y-dark';

  Widget _buildMenuContent(String text) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Row(children: <Widget>[
        Text(text, style: TextStyle(fontSize: 16)),
        Icon(Icons.arrow_drop_down)
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: <Widget>[
          PopupMenuButton(
            child: _buildMenuContent(language),
            itemBuilder: (context) {
              return exampleMap.keys.map((key) {
                return CheckedPopupMenuItem(
                  value: key,
                  child: Text(key),
                  checked: language == key,
                );
              }).toList();
            },
            onSelected: (selected) {
              if (selected != null) {
                setState(() {
                  language = selected;
                });
              }
            },
          ),
          PopupMenuButton<String>(
            child: _buildMenuContent(theme),
            itemBuilder: (context) {
              return themeMap.keys.map((key) {
                return CheckedPopupMenuItem(
                  value: key,
                  child: Text(key),
                  checked: theme == key,
                );
              }).toList();
            },
            onSelected: (selected) {
              if (selected != null) {
                setState(() {
                  theme = selected;
                });
              }
            },
          ),
          IconButton(
            icon: const Icon(Icons.code),
            tooltip: 'Source Code',
            onPressed: () {
              launch('https://github.com/pd4d10/highlight');
            },
          )
        ],
      ),
      body: Container(
        color: themeMap[theme]!['root']!.backgroundColor,
        child: Stack(
            children: <Widget>[
              Positioned(
                  top: 0.0,
                  left: 0.0,
                  right: 0.0,
                  bottom: 0.0,
                  child: HighlightView(
                    textSelectable: true,
                    exampleMap[language]!,
                    language: language,
                    padding: EdgeInsets.all(12),
                    theme: themeMap[theme]!,
                    textStyle: TextStyle(
                        fontSize: 8,
                        fontFamily:
                        'SFMono-Regular,Consolas,Liberation Mono,Menlo,monospace'),
                  )),]
        ),

      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.code),
              onPressed: () {
               Navigator.of(context).push(MaterialPageRoute(builder: (context) => HighlightViewer
                 (

                 source: xxxx, language: language,)));
              },
            ),
          ],
        ),
      )
    );
  }
}

const xxxx = '''

<!DOCTYPE html>
<html lang="zh-CN">
<head>
  <meta charset="UTF-8">
  <meta property="og:site_name" content="爱范儿" />
<meta property="og:type" content="article" />
<meta property="og:url" content="https://www.ifanr.com" />
  <meta name="MSSmartTagsPreventParsing" content="true" />
  <meta http-equiv="imagetoolbar" content="no" />
  <meta name="robots" content="all" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes"/>
  <title>  爱范儿 · 让未来触手可及
</title>
  <link rel="shortcut icon" href="https://images.ifanr.cn/wp-content/themes/ifanr-5.0-pc/static/images/favicon.ico" />
  <link rel="dns-prefetch" href="//7tn0u2fl3q-dsn.algolia.net/">
  <link rel="dns-prefetch" href="//at.alicdn.com/">
  <link rel="dns-prefetch" href="//cdn.ifanr.cn/">
  <link rel="dns-prefetch" href="//images.ifanr.cn/">
  <link rel="dns-prefetch" href="//s3.ifanr.com/">
  <link rel="dns-prefetch" href="//sso.ifanr.com/">
  <meta name="theme-color" content="#000">
    <meta property="og:site_name" content="爱范儿" />
  <meta property="og:type" content="article" />
      <meta property="og:url" content="https://www.ifanr.com" />
      <script type="application/ld+json">
  {
    "@context": "http://schema.org",
    "@type": "",
    "headline":"",
    "mainEntityOfPage": {
      "@type": "WebPage",
      "@id": ""
    },
    "image": "",
    "datePublished": "",
    "dateModified":"",
    "author": {
      "@type": "Person",
      "name":""
    },
     "publisher": {
      "@type": "Organization",
      "name": "ifanr",
      "logo": {
        "@type": "ImageObject",
        "url": "https://dl.ifanr.cn/ifanr/ifanr-logo.jpg"
      }
    },
    "description": ""
  }
  </script>

  
<!-- BEGIN Metadata added by Add-Meta-Tags WordPress plugin -->
<meta name="description" content="聚焦新创和消费主题的科技媒体，成立于 2008 年 10 月，关注产品及体验，致力于“独立，前瞻，深入”的原创报道和分析评论，是国内唯一一家在产业和产品领域同时具有强势影响力的科技媒体。旗下现有 ifanr.com、SocialBase.cn、AppSolution、玩物志、创业及产品社区 MindStore 等多个细分领域的知名产品。" />
<meta name="keywords" content="科技媒体, 科技博客, 科技报道,windows phone, android, apple, nokia, 移动互联网, 社交媒体, ipad, 智能手机, iphone, 小程序, 微信" />
<meta property="og:type" content="website" />
<meta property="og:site_name" content="爱范儿" />
<meta property="og:title" content="爱范儿" />
<meta property="og:url" content="https://www.ifanr.com/" />
<meta property="og:description" content="聚焦新创和消费主题的科技媒体，成立于 2008 年 10 月，关注产品及体验，致力于“独立，前瞻，深入”的原创报道和分析评论，是国内唯一一家在产业和产品领域同时具有强势影响力的科技媒体。旗下现有 ifanr.com、SocialBase.cn、AppSolution、玩物志、创业及产品社区 MindStore 等多个细分领域的知名产品。" />
<meta property="og:locale" content="zh_CN" />
<meta property="og:image" content="https://images.ifanr.cn/wp-content/themes/ifanr-5.0-pc/static/images/ifanr/ifanr-logo.svg" />
<meta property="og:image:secure_url" content="https://images.ifanr.cn/wp-content/themes/ifanr-5.0-pc/static/images/ifanr/ifanr-logo.svg" />
<meta name="twitter:card" content="summary_large_image" />
<meta name="twitter:creator" content="@ifanr" />
<meta name="twitter:site" content="@ifanr" />
<meta name="twitter:title" content="爱范儿" />
<meta name="twitter:description" content="聚焦新创和消费主题的科技媒体，成立于 2008 年 10 月，关注产品及体验，致力于“独立，前瞻，深入”的原创报道和分析评论，是国内唯一一家在产业和产品领域同时具有强势影响力的科技媒体。旗下现有 ifanr.com、SocialBase.cn、AppSolution、玩物志、创业及产品社区 MindStore 等多个细分领域的知名产品。" />
<meta name="twitter:image" content="https://images.ifanr.cn/wp-content/themes/ifanr-5.0-pc/static/images/ifanr/ifanr-logo.svg" />
<!-- END Metadata added by Add-Meta-Tags WordPress plugin -->

<link rel='dns-prefetch' href='//images.ifanr.cn' />
<link rel='dns-prefetch' href='//www.ifanr.com' />
<link rel='dns-prefetch' href='//s.w.org' />
<link rel='dns-prefetch' href='//s3.ifanr.com' />
<link rel='stylesheet' id='videojs-css'  href='https://images.ifanr.cn/wp-content/plugins/more-editor-style/editor-function-button-style.css?ver=4.9.9' type='text/css' media='all' />
<link rel='stylesheet' id='doge-style-css'  href='//images.ifanr.cn/wp-content/themes/ifanr-5.0-pc/static/dist/app-69f81a70ff.min.css?ver=4.9.9' type='text/css' media='all' />
<link rel='stylesheet' id='widgetbuzz-css'  href='//images.ifanr.cn/wp-content/plugins/ifanr-widget-buzz/dist/build/buzz.auto_create_ts_1446046962.css?ver=4.9.9' type='text/css' media='all' />
<link rel='https://api.w.org/' href='https://www.ifanr.com/wp-json/' />
<link rel="EditURI" type="application/rsd+xml" title="RSD" href="https://www.ifanr.com/xmlrpc.php?rsd" />
<link rel="wlwmanifest" type="application/wlwmanifest+xml" href="https://images.ifanr.cn/wp-includes/wlwmanifest.xml" /> 
<script type="text/javascript">
/* Try to get out of frames! */
var isAppsoWebsite = /^https?:\/\/(www\.)?ifanr\.com\/app\/?/.test(document.location.href);
if (window.top != window.self && !isAppsoWebsite) {
  window.top.location = self.location.href;
}

var ga = ga || function() {(ga.q = ga.q || []).push(arguments)};

var STATIC_URL = "https://images.ifanr.cn/wp-content/themes/ifanr-5.0-pc/static/";
var POST_DEFAULT_THUMBNAIL_SMALL = "https://images.ifanr.cn/wp-content/themes/ifanr-5.0-pc/static/images/ifanr/article-default-thumbnail-small.jpg";
var POST_DEFAULT_THUMBNAIL_MIDDLE = "https://images.ifanr.cn/wp-content/themes/ifanr-5.0-pc/static/images/ifanr/article-default-thumbnail-middle.jpg";
var IMG_LARGE = "720",
    IMG_MEDIUM = "320",
    IMG_SMALL = "260",
    IMG_XSMALL = "100";
</script>
  

  <script>
    USER = {};
    USER.SSO_URL_MYACCOUNT = 'https://sso.ifanr.com/myaccount/';
    USER.SSO_URL_LOGIN = 'https://sso.ifanr.com/embed/login/' + '?referer=' + location.origin;
    USER.SSO_URL_REGISTER = 'https://sso.ifanr.com/embed/login/#register' + '?referer=' + location.origin;
    USER.SSO_URL_LOGOUT = '';
    USER.SSO_USER_ACTIVITY = 'https://sso.ifanr.com/myactivity/';

    IFR = {};
    IFR.apiUrl = '/api/v3.0/';
    IFR.staticUrl = "https://images.ifanr.cn/wp-content/themes/ifanr-5.0-pc/static/"
    IFR.slideNum = 3;
    IFR.apiNonce = {
      appkey: 'lI5287M8UyxBI98U2YKq',
      timestamp: '1721668930',
      sign: '40242a360bcd12b1380ede753915d170'
    };
    IFR.ssoHost = 'https://sso.ifanr.com/';

    IFR.COLLECTION_LOAD_MORE_URL = '';

      </script>

  

</head>

<body class="home blog" data-component="TextClamp">
  <div class="page-body">

        <div id="progress-bar"><div class="white"></div><div class="red"></div></div>

    <div class="sidebar-drawer-menu-overlay js-drawer-menu-overlay--hide"
    data-component="DrawerMenuOverlay">
  <div class="sidebar-drawer-menu">
    <header class="sidebar-drawer-menu__title menu-wrap-seprator">分类</header>
    <div class="menu-wrap">
      <ul>
                <li class="menu-wrap__item menu-wrap-seprator"><a href="https://www.ifanr.com/category/aigc">AIGC</a></li>
                <li class="menu-wrap__item menu-wrap-seprator"><a href="https://www.ifanr.com/category/cartoon-saloon">Cartoon Saloon</a></li>
                <li class="menu-wrap__item menu-wrap-seprator"><a href="https://www.ifanr.com/category/ces2018">CES 2018</a></li>
                <li class="menu-wrap__item menu-wrap-seprator"><a href="https://www.ifanr.com/category/cesaisa">CES Asia</a></li>
                <li class="menu-wrap__item menu-wrap-seprator"><a href="https://www.ifanr.com/category/ces2019">CES2019</a></li>
                <li class="menu-wrap__item menu-wrap-seprator"><a href="https://www.ifanr.com/category/ifanq">ifanQ</a></li>
                <li class="menu-wrap__item menu-wrap-seprator"><a href="https://www.ifanr.com/category/top-rank">ifanRank</a></li>
                <li class="menu-wrap__item menu-wrap-seprator"><a href="https://www.ifanr.com/category/ifanrank">ifanrank</a></li>
                <li class="menu-wrap__item menu-wrap-seprator"><a href="https://www.ifanr.com/category/top-rank/ifanrank-top-rank">ifanRank</a></li>
                <li class="menu-wrap__item menu-wrap-seprator"><a href="https://www.ifanr.com/category/ifanrank-2018">ifanRank 2018</a></li>
                <li class="menu-wrap__item menu-wrap-seprator"><a href="https://www.ifanr.com/category/mindtalk">MindTalk</a></li>
                <li class="menu-wrap__item menu-wrap-seprator"><a href="https://www.ifanr.com/category/mwc-2018">MWC 2018</a></li>
                <li class="menu-wrap__item menu-wrap-seprator"><a href="https://www.ifanr.com/category/interviews">专访</a></li>
                <li class="menu-wrap__item menu-wrap-seprator"><a href="https://www.ifanr.com/category/product">产品</a></li>
                <li class="menu-wrap__item menu-wrap-seprator"><a href="https://www.ifanr.com/category/people">人物</a></li>
                <li class="menu-wrap__item menu-wrap-seprator"><a href="https://www.ifanr.com/category/business">公司</a></li>
                <li class="menu-wrap__item menu-wrap-seprator"><a href="https://www.ifanr.com/category/%e5%95%86%e4%b8%9a">商业</a></li>
                <li class="menu-wrap__item menu-wrap-seprator"><a href="https://www.ifanr.com/category/%e5%9b%be%e8%ae%b0">图记</a></li>
                <li class="menu-wrap__item menu-wrap-seprator"><a href="https://www.ifanr.com/category/%e5%a5%bd%e8%8e%b1%e5%9d%9e">好莱坞</a></li>
                <li class="menu-wrap__item menu-wrap-seprator"><a href="https://www.ifanr.com/category/%e5%b0%8f%e7%a8%8b%e5%ba%8f">小程序</a></li>
                <li class="menu-wrap__item menu-wrap-seprator"><a href="https://www.ifanr.com/category/%e5%b9%bf%e5%91%8a">广告</a></li>
                <li class="menu-wrap__item menu-wrap-seprator"><a href="https://www.ifanr.com/category/%e6%96%87%e5%a8%b1">文娱</a></li>
                <li class="menu-wrap__item menu-wrap-seprator"><a href="https://www.ifanr.com/category/innovation">新创</a></li>
                <li class="menu-wrap__item menu-wrap-seprator"><a href="https://www.ifanr.com/category/%e6%96%b0%e6%b6%88%e8%b4%b9">新消费</a></li>
                <li class="menu-wrap__item menu-wrap-seprator"><a href="https://www.ifanr.com/category/ifanrnews">早报</a></li>
                <li class="menu-wrap__item menu-wrap-seprator"><a href="https://www.ifanr.com/category/evaluation">模范评测</a></li>
                <li class="menu-wrap__item menu-wrap-seprator"><a href="https://www.ifanr.com/category/%e6%b1%bd%e8%bd%a6">汽车</a></li>
                <li class="menu-wrap__item menu-wrap-seprator"><a href="https://www.ifanr.com/category/game-special">游戏</a></li>
                <li class="menu-wrap__item menu-wrap-seprator"><a href="https://www.ifanr.com/category/special">特稿</a></li>
                <li class="menu-wrap__item menu-wrap-seprator"><a href="https://www.ifanr.com/category/life">生活</a></li>
                <li class="menu-wrap__item menu-wrap-seprator"><a href="https://www.ifanr.com/category/%e7%a1%ac%e4%bb%b6">硬件</a></li>
                <li class="menu-wrap__item menu-wrap-seprator"><a href="https://www.ifanr.com/category/tangzhi">糖纸</a></li>
                <li class="menu-wrap__item menu-wrap-seprator"><a href="https://www.ifanr.com/category/tangzhi-evaluation">糖纸众测</a></li>
                <li class="menu-wrap__item menu-wrap-seprator"><a href="https://www.ifanr.com/category/%e8%8c%83%e8%af%84">范评</a></li>
                <li class="menu-wrap__item menu-wrap-seprator"><a href="https://www.ifanr.com/category/intelligentcar">董车会</a></li>
                <li class="menu-wrap__item menu-wrap-seprator"><a href="https://www.ifanr.com/video">视频</a></li>
                <li class="menu-wrap__item menu-wrap-seprator"><a href="https://www.ifanr.com/category/%e8%ae%be%e8%ae%a1">设计</a></li>
                <li class="menu-wrap__item menu-wrap-seprator"><a href="https://www.ifanr.com/category/review">评测</a></li>
                <li class="menu-wrap__item menu-wrap-seprator"><a href="https://www.ifanr.com/category/%e8%bd%af%e4%bb%b6">软件</a></li>
                <li class="menu-wrap__item menu-wrap-seprator"><a href="https://www.ifanr.com/category/future">近未来</a></li>
              </ul>
            <div class="special-section">
              </div>
    </div>
  </div>
</div>
          <header class="c-global-header" data-component="Navbar">

      <div class="c-header-navbar js-navbar">
  <div class="c-header-navbar__content" data-component="UserPanel">
    <div class="c-header-navbar－content__left">
      <a ga-bind="click" ga-action="click" ga-category="MainPage_Header" ga-label="ifanr Button" href="https://www.ifanr.com/" >
        <img class="c-header-navbar__logo" src="https://images.ifanr.cn/wp-content/themes/ifanr-5.0-pc/static/images/ifanr/ifanr-logo.svg" alt="爱范儿 LOGO">
      </a>
      <ul class="c-header-navigation">
        <li class="c-header-navigation__item" style="cursor: default">
          媒体品牌
          <img class="c-header-navigation__item-arrow" src="https://images.ifanr.cn/wp-content/themes/ifanr-5.0-pc/static/images/navbar-arrow.svg" />
          <div class="c-header-navigation__item-panel-box" style="width: 1040px; left: -137px">
            <div class="c-header-navigation__item-panel">
              <div class="c-qrcode-box">
                <img class="c-qrcode-box__img" src="https://images.ifanr.cn/wp-content/themes/ifanr-5.0-pc/static/images/qrcode/ifanr.png" />
                <div class="c-qrcode-box__brand">爱范儿</div>
                <div class="c-qrcode-box__description">关注明日产品的数字潮牌</div>
              </div>
              <div class="c-qrcode-box">
                <img class="c-qrcode-box__img" src="https://images.ifanr.cn/wp-content/themes/ifanr-5.0-pc/static/images/qrcode/appso.png" />
                <div class="c-qrcode-box__brand">APPSO</div>
                <div class="c-qrcode-box__description">先进工具，先知先行，AIGC 的灵感指南</div>
              </div>
              <div class="c-qrcode-box">
                <img class="c-qrcode-box__img" src="https://images.ifanr.cn/wp-content/themes/ifanr-5.0-pc/static/images/qrcode/dongchehui.png" />
                <div class="c-qrcode-box__brand">董车会</div>
                <div class="c-qrcode-box__description">造车新时代，明日出行家</div>
              </div>
              <div class="c-qrcode-box">
                <img class="c-qrcode-box__img" src="https://images.ifanr.cn/wp-content/themes/ifanr-5.0-pc/static/images/qrcode/coolbuy.png" />
                <div class="c-qrcode-box__brand">玩物志</div>
                <div class="c-qrcode-box__description">探索城市新生活方式，做你的明日生活指南</div>
              </div>
            </div>
          </div>
        </li>
        <li class="c-header-navigation__item">
          <a href="https://cloud.minapp.com/?utm_source=ifanr&utm_medium=navigation" target="_blank" ga-bind="click" ga-category="MainPage_Header" ga-action="ClickCloudminapp" ga-label="CloudMinapp Button">知晓云</a>
        </li>
        <li class="c-header-navigation__item" style="cursor: default">
          制糖工厂
          <img class="c-header-navigation__item-arrow" src="https://images.ifanr.cn/wp-content/themes/ifanr-5.0-pc/static/images/navbar-arrow.svg" />
          <div class="c-header-navigation__item-panel-box" style="width: 374px; left: -20px">
            <div class="c-header-navigation__item-panel" style="bottom: 45px">
              <div class="c-candysign-box">
                <div>
                  <img class="c-candysign-box__logo" src="https://images.ifanr.cn/wp-content/themes/ifanr-5.0-pc/static/images/navbar-candysign-logo.svg" />
                  <span>扫描小程序码，了解更多</span>
                  <img class="c-candysign-box__arrow" src="https://images.ifanr.cn/wp-content/themes/ifanr-5.0-pc/static/images/navbar-candysign-arrow.svg" />
                </div>
                <img class="c-candysign-box__qrcode" src="https://images.ifanr.cn/wp-content/themes/ifanr-5.0-pc/static/images/qrcode/candysign.png" />
              </div>
            </div>
          </div>
        </li>
      </ul>
    </div>
    <div class="c-header-navbar－content__right">
      <a class="c-header-navbar__cooperation" href="https://www.ifanr.com/adinfo" ga-bind="click" ga-category="MainPage_Header" ga-action="ToReport" ga-label="Cooperation Page">商务合作</a>
      <a class="c-header-navbar__report" href="https://www.ifanr.com/about/contribute/" ga-bind="click" ga-category="MainPage_Header" ga-action="ToReport" ga-label="Report Page">内容投稿</a>
      <div class="c-header-navbar__separation"></div>
      <div class="c-header-sns__about--hover">
        <a href="/ifanr-app-download/" target="_blank" ga-bind="click" ga-category="MainPage_Header" ga-action="ClickDownloadPage" ga-label="DownloadPage Button">
          <i class="ifanrx ifanrx-phone icon-phone"></i>
          下载客户端
        </a>
        <div class="c-download-client o-navbar-tooltip" ga-bind="hover" ga-category="MainPage_Header" ga-label="HoverDownloadPage" ga-action="DownloadPage">
          <img src="https://images.ifanr.cn/wp-content/themes/ifanr-5.0-pc/static/images/ifanr-app.png" alt="下载客户端">
          <div class="o-navbar-tooltip__spliter"></div>
          <img src="https://images.ifanr.cn/wp-content/themes/ifanr-5.0-pc/static/images/ifanr/ifanr-nav-logo.svg" alt="爱范儿 logo">
        </div>
      </div>
      <ul class="c-global-navbar__user c-user-bar" data-component="SSOUser">
        <li class="js-navbar-user-unauthenticated c-user-bar__unauthenticated">
          <div class="c-global-navbar-login js-button-login" ga-bind="click" ga-category="MainPage_Header" ga-action="ClickLogin" ga-label="login">登录</div>
        </li>
        <li class="js-navbar-user-unauthenticated c-user-bar__unauthenticated">
          <div class="c-global-navbar-login js-button-register" ga-bind="click" ga-category="MainPage_Header" ga-action="ToSign-up" ga-label="register">注册</div>
        </li>
        <li class="js-navbar-user-authenticated c-user-bar__authenticated is-hidden">
          <img class="js-user-avatar c-user-bar__avatar"  src="" ga-bind="click" ga-category="MainPage_Header" ga-action="Profile" ga-label="enter">
        </li>
        <div class="user-panel hidden">
  <div class="user-card">
    <div class="user-info">
      <img class="user-info__avatar" src="#" alt="" ga-bind="click" ga-category="Head" ga-action="Profile" ga-label="avator">
      <div class="user-info__nickname-email">
        <span class="user-info__nickname"></span>
        <span class="user-info__email"></span>
      </div>
      <a href="https://sso.ifanr.com/myaccount/" target="_blank" class="cover-block">
      
      </a>
    </div>
    <ul class="user-nav">
      <li><a href="https://sso.ifanr.com/myactivity/" ga-bind="click" ga-category="Head" ga-action="Profile" ga-label="myrecent" target="_blank">我的动态</a></li>
      <li><a href="https://sso.ifanr.com/mymessage/" ga-bind="click" ga-category="Head" ga-action="Profile" ga-label="notice" target="_blank">消息中心<span class="notification-count"></span></a></li>
      <li><a href="https://sso.ifanr.com/mycollection/" ga-bind="click" ga-category="Head" ga-action="Profile" ga-label="mycollection" target="_blank">我的收藏</a></li>
      <li><a href="https://sso.ifanr.com/myaccount/" ga-bind="click" ga-category="Head" ga-action="Profile" ga-label="mysetting" target="_blank">账户设置</a></li>
    </ul>
    <a href="https://sso.ifanr.com/logout/" class="user-card__logout-link" ga-bind="click" ga-category="Head" ga-action="Profile" ga-label="logout">退出登录</a>
  </div>
</div>      </ul>
      <div class="c-header-navbar__search">
        <i class="js-navbar-search-btn ifanrx ifanrx-search" ga-bind="click" ga-category="MainPage_Header" ga-action="ClickSearchButton" ga-label="search button"></i>
      </div>
    </div>
  </div>
</div>
  
  <div class="c-content-search c-content-search_modal" data-component="Search">
  <div class="c-content-search__input">
    <i class="c-content-search__close ifanrx ifanrx-guanbi-sousuolan js-search-close-btn"></i>
    <input class="js-modal-search-input" type="input" name="" placeholder="请输入关键字" data-query="">
    <i class="c-content-search__search ifanrx ifanrx-sousuo-sousuolan js-modal-search-btn" href=""></i>
  </div>
  <div class="clearfix c-content-search__empty-box is-hidden js-search-empty">
    <div class="c-content-hot__search">
      <div class="c-content-hot__label">热门搜索</div>
        <ul class="c-header-search__hot-word">
        </ul>
    </div>
      </div>
  <div class="c-content-search__result js-search-result is-hidden">
      <p class="c-content-search-result__title">为您查询到 <span class="js-search-result-count"></span> 篇文章</p>
      <ul class="js-search-result-list"></ul>
      <button class="c-search-load-more js-search-load-more">加载更多</button>
  </div>
  <div class="c-content-search__loading js-search-loading"></div>
</div></header>    
      <div class="container">
    <div class="container-top">

    <div class="headline-back">
    <div class="img-container" style="background-image:url(https://media.ifanrusercontent.com/user_files/wpdata/images/2a/12/2a1247abba8821a28a0834dc8e7817eb1817c3af-432f08114a57f824f3ea5805d5f76cb97044a45d.jpg)">
    </div>
    <div class="headline-back-box">
      <div class="headline-logo">
      </div>
    </div>
  </div>
  
  <div class="bottom-gradient"></div>

</div>
    <div class="container-middle">
      <div class="o-wrapper c-home">
        <div class="c-top clearfix">
  <div class="top-news" data-component="TopNews">
  <div class="js-unslider">
    <div class='swiper-wrapper'>
            <div class="news-item swiper-slide">
        <div class='img' style="background-image: url('https://s3.ifanr.com/wp-content/uploads/2024/07/00korea-ai1-pwzf-jumbo.jpg!720')"></div>
                <section class="news-item-hover-content">
          <div class="news-item-mask"></div>
          <div class="news-description">
            <span class="category">人物</span>
            <span class="author">| 方嘉文</span>
            <span class="time">15 小时前</span>
            <div class="clear-both"></div>
          </div>
          <h1 class="news-headline">被 AlphaGo 击败的李世石，用 8 年重建崩塌的世界</h1>
        </section>
        <a href="https://www.ifanr.com/1592736"
          class="news-link" itemprop="url" target="_blank"
          ga-bind="click" ga-category="MainPage_Banner" ga-action="ToArticle" ga-label="pic1"></a>
        
                <section class="overlay">
          <div class="top-mask"></div>
          <div class="bottom-mask"></div>
        </section>
              </div>
            <div class="news-item swiper-slide">
        <div class='img' style="background-image: url('https://s3.ifanr.com/wp-content/uploads/2024/07/7410448434550527998.jpg!720')"></div>
                <section class="news-item-hover-content">
          <div class="news-item-mask"></div>
          <div class="news-description">
            <span class="category">董车会</span>
            <span class="author">| 谢东成</span>
            <span class="time">15 小时前</span>
            <div class="clear-both"></div>
          </div>
          <h1 class="news-headline">43.9 万元起，全新极氪 009 加量减价发布，马力大增续航更长</h1>
        </section>
        <a href="https://www.ifanr.com/1593247"
          class="news-link" itemprop="url" target="_blank"
          ga-bind="click" ga-category="MainPage_Banner" ga-action="ToArticle" ga-label="pic2"></a>
        
                <section class="overlay">
          <div class="top-mask"></div>
          <div class="bottom-mask"></div>
        </section>
              </div>
            <div class="news-item swiper-slide">
        <div class='img' style="background-image: url('https://s3.ifanr.com/wp-content/uploads/2024/07/img_669a7f0f40ca2.jpeg!720')"></div>
                <section class="news-item-hover-content">
          <div class="news-item-mask"></div>
          <div class="news-description">
            <span class="category">产品</span>
            <span class="author">| 吴 尚霖</span>
            <span class="time">前天 14:00</span>
            <div class="clear-both"></div>
          </div>
          <h1 class="news-headline">小米 MIX Fold4 评测：让我纠结的五个理由</h1>
        </section>
        <a href="https://www.ifanr.com/1593130"
          class="news-link" itemprop="url" target="_blank"
          ga-bind="click" ga-category="MainPage_Banner" ga-action="ToArticle" ga-label="pic3"></a>
        
                <section class="overlay">
          <div class="top-mask"></div>
          <div class="bottom-mask"></div>
        </section>
              </div>
          </div>
    <div class="swiper-pagination"></div>
  </div>
</div>
  <div class="video-jiong" data-component="TopVideo">
	<div class="c-top-video">
		<div class="video-content js-video-content">
			<div class="video-headline">
									<div class="video-content js-video-content">
						<div class="video-headline">
							<a class="video-headline__link" href="https://www.ifanr.com/video/1592808" target="_blank" ga-bind="click" ga-category="MainPage" ga-action="ClickVideo" ga-label="VideoArticle">
								<div class="overlay"></div>
								<div class="video-cover-image">
									<div class="video-thumbnail" style="background-image: url('https://s3.ifanr.com/wp-content/uploads/2024/07/s-s-s.jpg')"></div>
									<div class="video-play-btn ifanrx-play ifanrx"></div>
									<div class="video-headline-hover__title">
										<div class="video-description">
											<span class="category">视频</span>
											<span class="author">|
												爱范儿视频</span>
											<span class="time">12:52</span>
											<div class="clear-both"></div>
										</div>
									</div>
								</div>
								<div class="video-headline__title">
									<div class="video-headline-logo"></div>
									<p>深蓝 G318 试驾：硬派越野，也很舒适</p>
								</div>
							</a>
						</div>
					</div>
							</div>
		</div>
	</div>
</div>
  <div class="top-banner" data-component="TopBanner">
    <div class="top-banner-item">
        <a href="https://www.ifanr.com/1592228" target="_blank"
      ga-bind="click" ga-category="MainPage_Banner" ga-action="ToArticle" ga-label="pic4">
      <div class="banner-item-image">
        <div class="thumbnail" style="background-image: url('https://s3.ifanr.com/wp-content/uploads/2024/07/c6dbc8f2714f9130189624091aed0421.jpg!720')"></div>
          <div class="banner-img-hover">
            <span class="category">专访</span>
            <span class="author">| 李超凡</span>
            <span class="time">07-13 11:29</span>
            <div class="clear-both"></div>
          </div>
      </div>
    </a>

    <a href="https://www.ifanr.com/1592228" target="_blank"
      ga-bind="click" ga-category="MainPage_Banner" ga-action="ToArticle" ga-label="pic1">
      <div class="banner-item-title">
        对话面壁智能首席科学家刘知远：大模型将有新的「摩尔定律」，AGI 时代的智能终端未必是手机
      </div>
    </a>
      </div>
    <div class="top-banner-item">
        <a href="https://www.ifanr.com/1593106" target="_blank"
      ga-bind="click" ga-category="MainPage_Banner" ga-action="ToArticle" ga-label="pic5">
      <div class="banner-item-image">
        <div class="thumbnail" style="background-image: url('https://s3.ifanr.com/wp-content/uploads/2024/07/2024-07-19-21.54.53.png!720')"></div>
          <div class="banner-img-hover">
            <span class="category">公司</span>
            <span class="author">| 王萌</span>
            <span class="time">07-19 23:16</span>
            <div class="clear-both"></div>
          </div>
      </div>
    </a>

    <a href="https://www.ifanr.com/1593106" target="_blank"
      ga-bind="click" ga-category="MainPage_Banner" ga-action="ToArticle" ga-label="pic2">
      <div class="banner-item-title">
        小米首辆赛车 SU7 Ultra 发布，零百加速破 2 秒！但最好看的是雷军漂移
      </div>
    </a>
      </div>
    <div class="top-banner-item">
        <a href="https://www.ifanr.com/1592900" target="_blank"
      ga-bind="click" ga-category="MainPage_Banner" ga-action="ToArticle" ga-label="pic6">
      <div class="banner-item-image">
        <div class="thumbnail" style="background-image: url('https://s3.ifanr.com/wp-content/uploads/2024/07/tbem.jpg!720')"></div>
          <div class="banner-img-hover">
            <span class="category">董车会</span>
            <span class="author">| 李华</span>
            <span class="time">07-19 16:13</span>
            <div class="clear-both"></div>
          </div>
      </div>
    </a>

    <a href="https://www.ifanr.com/1592900" target="_blank"
      ga-bind="click" ga-category="MainPage_Banner" ga-action="ToArticle" ga-label="pic3">
      <div class="banner-item-title">
        BBA 全部开始涨价，血流成河的汽车价格战快打不下去了
      </div>
    </a>
      </div>
  </div>
</div>        <div class="article-seperator"></div>
        <div id="article-container" class="article-collection article-collection--list">

  <div class="collection-container">

    <div id="subNav" class="sub-nav  c-header-navbar__content" data-fixed-start="#subNav" data-fixed-end="#footer">
    <div class="navbar-container">
        <div class="navbar-box">
            <div class="left-arrow hidden">
                <div class="left-white-cover"></div>
                <i class="ifanrx ifanrx-left"></i>
            </div>
            <div class="inner-holder">
                <ul class="sub-nav-item__container">
                    <li class="sub-nav-item sub-nav-item--active newest-nav" data-url="https://sso.ifanr.com/api/v5/wp/web-feed/?position=ifr_fourth_cards_layout" ga-bind="click" ga-category="MainPage_Menu" ga-action="ClickMenu" ga-label="latest">最新</li>
                                            <li class="sub-nav-item" data-url="https://sso.ifanr.com/api/v5/wp/article/?post_category=%E6%97%A9%E6%8A%A5&position=ifr_fourth_cards_layout" ga-bind="click" ga-category="MainPage_Menu" ga-action="ClickMenu" ga-label="每日早报">每日早报</li>
                                            <li class="sub-nav-item" data-url="https://sso.ifanr.com/api/v5/wp/article/?post_category=%E8%AF%84%E6%B5%8B&position=ifr_fourth_cards_layout" ga-bind="click" ga-category="MainPage_Menu" ga-action="ClickMenu" ga-label="评测">评测</li>
                                            <li class="sub-nav-item" data-url="https://sso.ifanr.com/api/v5/wp/article/?post_category=%E7%B3%96%E7%BA%B8%E4%BC%97%E6%B5%8B&post_type=tangzhiapp&position=ifr_fourth_cards_layout" ga-bind="click" ga-category="MainPage_Menu" ga-action="ClickMenu" ga-label="众测">众测</li>
                                            <li class="sub-nav-item" data-url="https://sso.ifanr.com/api/v5/wp/article/?post_category=%E4%BA%A7%E5%93%81&position=ifr_fourth_cards_layout" ga-bind="click" ga-category="MainPage_Menu" ga-action="ClickMenu" ga-label="新锐产品">新锐产品</li>
                                            <li class="sub-nav-item" data-url="https://sso.ifanr.com/api/v5/wp/article/?post_type=app&position=ifr_fourth_cards_layout" ga-bind="click" ga-category="MainPage_Menu" ga-action="ClickMenu" ga-label="AppSo">AppSo</li>
                                            <li class="sub-nav-item" data-url="https://sso.ifanr.com/api/v5/wp/article/?post_type=coolbuy&position=ifr_fourth_cards_layout" ga-bind="click" ga-category="MainPage_Menu" ga-action="ClickMenu" ga-label="玩物志">玩物志</li>
                                            <li class="sub-nav-item" data-url="https://sso.ifanr.com/api/v5/wp/article/?post_category=%E5%85%AC%E5%8F%B8&position=ifr_fourth_cards_layout" ga-bind="click" ga-category="MainPage_Menu" ga-action="ClickMenu" ga-label="行业">行业</li>
                                            <li class="sub-nav-item" data-url="https://sso.ifanr.com/api/v5/wp/article/?post_category=%E7%94%9F%E6%B4%BB&position=ifr_fourth_cards_layout" ga-bind="click" ga-category="MainPage_Menu" ga-action="ClickMenu" ga-label="生活">生活</li>
                                            <li class="sub-nav-item" data-url="https://sso.ifanr.com/api/v5/wp/article/?post_category=%E8%91%A3%E8%BD%A6%E4%BC%9A&position=ifr_fourth_cards_layout" ga-bind="click" ga-category="MainPage_Menu" ga-action="ClickMenu" ga-label="董车会">董车会</li>
                                            <li class="sub-nav-item" data-url="https://sso.ifanr.com/api/v5/wp/article/?post_type=minapp&position=ifr_fourth_cards_layout" ga-bind="click" ga-category="MainPage_Menu" ga-action="ClickMenu" ga-label="小程序">小程序</li>
                                            <li class="sub-nav-item" data-url="https://sso.ifanr.com/api/v5/wp/article/?post_type=video&position=ifr_fourth_cards_layout" ga-bind="click" ga-category="MainPage_Menu" ga-action="ClickMenu" ga-label="视频">视频</li>
                                            <li class="sub-nav-item" data-url="https://sso.ifanr.com/api/v5/wp/article/?post_category=%E6%B8%B8%E6%88%8F&position=ifr_fourth_cards_layout" ga-bind="click" ga-category="MainPage_Menu" ga-action="ClickMenu" ga-label="游戏">游戏</li>
                                            <li class="sub-nav-item" data-url="https://sso.ifanr.com/api/v5/wp/article/?post_category=%E4%BA%BA%E7%89%A9&position=ifr_fourth_cards_layout" ga-bind="click" ga-category="MainPage_Menu" ga-action="ClickMenu" ga-label="人物">人物</li>
                                    </ul>

            </div>
            <div class="right-arrow">
                <div class="right-white-cover">
                    <div class="linear-gradient"></div>
                    <div class="white-block"></div>
                </div>
                <i class="ifanrx ifanrx-right"></i>
            </div>
        </div>
    </div>
    <div class="sub-nav-bar--fixed__border"></div>
</div>
    <div id="collectionList" class="collection-list">

                                <div class='article-container'>
  		<div class="article-item article-item--list " data-post-id="1593391">
							<div class="article-image cover-image">
					<a href="https://www.ifanr.com/category/intelligentcar" class="article-label" target="_blank"  ga-bind="click" ga-category="MainPage_List" ga-action="ToItemArticle" ga-label="Article">董车会</a>
					<a href="https://www.ifanr.com/1593391" ga-bind="click" ga-category="MainPage_List" ga-action="ToItemArticle" ga-label="Article" class="article-link cover-block" target="_blank" style="background-image:url('https://s3.ifanr.com/wp-content/uploads/2024/07/niotm.jpg!260')" aria-label="不到 20 万！蔚来新车实拍，两厢、可换电，年底发布"></a>
				</div>
			
			<div class="article-info js-transform">
				<h3>
					<a class="js-title-transform" href="https://www.ifanr.com/1593391" ga-bind="click" ga-category="MainPage_List" ga-action="ToItemArticle" ga-label="Article" target="_blank">不到 20 万！蔚来新车实拍，两厢、可换电，年底发布</a>
				</h3>
				<div class="article-summary">萤火虫飞往欧洲。</div>
				<div class="article-meta" data-post-id="1593391">
					<div class="author-info">
						<img src="https://s3.ifanr.com/wp-content/uploads/2024/03/lh500.jpg!100" alt="">
						<span class="author-name">李华</span>
						<a href="https://www.ifanr.com/author/tanjiewen" class="cover-block" target="_blank" aria-label="作者主页"></a>
					</div>
					<time data-time="2024-07-22 21:00:37" data-timestamp="1721653237">4 小时前</time>
					<div class="float-right" data-post-id="1593391">
						<span class="ifanrx-like like-count js-article-like-count">-</span>
						<a class="text-link" href="https://www.ifanr.com/1593391#article-comments" target="_blank">
							<span class="ifanrx ifanrx-reply comment-count">-</span>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
                                        <div class='article-container'>
  		<div class="article-item article-item--list " data-post-id="1593360">
							<div class="article-image cover-image">
					<a href="https://www.ifanr.com/category/product" class="article-label" target="_blank"  ga-bind="click" ga-category="MainPage_List" ga-action="ToItemArticle" ga-label="Article">产品</a>
					<a href="https://www.ifanr.com/1593360" ga-bind="click" ga-category="MainPage_List" ga-action="ToItemArticle" ga-label="Article" class="article-link cover-block" target="_blank" style="background-image:url('https://s3.ifanr.com/wp-content/uploads/2024/07/motorazr2019-1024x439.jpg!260')" aria-label="为什么要花 6000 元买一台小折叠手机？"></a>
				</div>
			
			<div class="article-info js-transform">
				<h3>
					<a class="js-title-transform" href="https://www.ifanr.com/1593360" ga-bind="click" ga-category="MainPage_List" ga-action="ToItemArticle" ga-label="Article" target="_blank">为什么要花 6000 元买一台小折叠手机？</a>
				</h3>
				<div class="article-summary">六千元一台小折叠，还是美丽小废物吗？</div>
				<div class="article-meta" data-post-id="1593360">
					<div class="author-info">
						<img src="https://s3.ifanr.com/wp-content/uploads/2024/02/WechatIMG5.jpg!100" alt="">
						<span class="author-name">苏伟鸿</span>
						<a href="https://www.ifanr.com/author/suweihong" class="cover-block" target="_blank" aria-label="作者主页"></a>
					</div>
					<time data-time="2024-07-22 18:00:02" data-timestamp="1721642402">7 小时前</time>
					<div class="float-right" data-post-id="1593360">
						<span class="ifanrx-like like-count js-article-like-count">-</span>
						<a class="text-link" href="https://www.ifanr.com/1593360#article-comments" target="_blank">
							<span class="ifanrx ifanrx-reply comment-count">-</span>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
                                        <div class='article-container'>
  		<div class="article-item article-item--list " data-post-id="1592736">
							<div class="article-image cover-image">
					<a href="https://www.ifanr.com/category/people" class="article-label" target="_blank"  ga-bind="click" ga-category="MainPage_List" ga-action="ToItemArticle" ga-label="Article">人物</a>
					<a href="https://www.ifanr.com/1592736" ga-bind="click" ga-category="MainPage_List" ga-action="ToItemArticle" ga-label="Article" class="article-link cover-block" target="_blank" style="background-image:url('https://s3.ifanr.com/wp-content/uploads/2024/07/00korea-ai1-pwzf-jumbo.jpg!260')" aria-label="被 AlphaGo 击败的李世石，用 8 年重建崩塌的世界"></a>
				</div>
			
			<div class="article-info js-transform">
				<h3>
					<a class="js-title-transform" href="https://www.ifanr.com/1592736" ga-bind="click" ga-category="MainPage_List" ga-action="ToItemArticle" ga-label="Article" target="_blank">被 AlphaGo 击败的李世石，用 8 年重建崩塌的世界</a>
				</h3>
				<div class="article-summary">和 AI 共存同创已久的围棋世界</div>
				<div class="article-meta" data-post-id="1592736">
					<div class="author-info">
						<img src="https://s3.ifanr.com/wp-content/uploads/2017/01/fjw.jpg!100" alt="">
						<span class="author-name">方嘉文</span>
						<a href="https://www.ifanr.com/author/fangjiawen" class="cover-block" target="_blank" aria-label="作者主页"></a>
					</div>
					<time data-time="2024-07-22 09:58:56" data-timestamp="1721613536">15 小时前</time>
					<div class="float-right" data-post-id="1592736">
						<span class="ifanrx-like like-count js-article-like-count">-</span>
						<a class="text-link" href="https://www.ifanr.com/1592736#article-comments" target="_blank">
							<span class="ifanrx ifanrx-reply comment-count">-</span>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
                                        <div class='article-container'>
  		<div class="article-item article-item--list " data-post-id="1593247">
							<div class="article-image cover-image">
					<a href="https://www.ifanr.com/category/intelligentcar" class="article-label" target="_blank"  ga-bind="click" ga-category="MainPage_List" ga-action="ToItemArticle" ga-label="Article">董车会</a>
					<a href="https://www.ifanr.com/1593247" ga-bind="click" ga-category="MainPage_List" ga-action="ToItemArticle" ga-label="Article" class="article-link cover-block" target="_blank" style="background-image:url('https://s3.ifanr.com/wp-content/uploads/2024/07/7410448434550527998.jpg!260')" aria-label="43.9 万元起，全新极氪 009 加量减价发布，马力大增续航更长"></a>
				</div>
			
			<div class="article-info js-transform">
				<h3>
					<a class="js-title-transform" href="https://www.ifanr.com/1593247" ga-bind="click" ga-category="MainPage_List" ga-action="ToItemArticle" ga-label="Article" target="_blank">43.9 万元起，全新极氪 009 加量减价发布，马力大增续航更长</a>
				</h3>
				<div class="article-summary">788 马力，最高 900km 续航，续航和驾驶乐趣都想要。</div>
				<div class="article-meta" data-post-id="1593247">
					<div class="author-info">
						<img src="https://s3.ifanr.com/wp-content/uploads/2018/04/xdc.jpg!100" alt="">
						<span class="author-name">谢东成</span>
						<a href="https://www.ifanr.com/author/xiedongcheng" class="cover-block" target="_blank" aria-label="作者主页"></a>
					</div>
					<time data-time="2024-07-22 09:30:10" data-timestamp="1721611810">15 小时前</time>
					<div class="float-right" data-post-id="1593247">
						<span class="ifanrx-like like-count js-article-like-count">-</span>
						<a class="text-link" href="https://www.ifanr.com/1593247#article-comments" target="_blank">
							<span class="ifanrx ifanrx-reply comment-count">-</span>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
                                        <section class="article-large-item article-large-item--list" data-post-id="1593004">
  <div class="article-info">
    <div class="article-info-type">
      <img src="https://images.ifanr.cn/wp-content/themes/ifanr-5.0-pc/static//images/ifanr/dasheng.svg" class="dasheng-logo" alt="" />
        大声 | 07-18 11:18
      <img src="https://images.ifanr.cn/wp-content/themes/ifanr-5.0-pc/static//images/ifanr/dasheng-title-seperator.svg" class="dasheng-title-seperator" alt="" />
    </div>
    <h2 class="article-info-title">
      <a ga-bind="click" ga-action="MainPage_List" ga-category="ToArticle" ga-label="DashengArticle" href="https://www.ifanr.com/dasheng/1593004" target="_blank">
        我们需要的是一种更平易近人的，更无感知的 AI 应用。
      </a>
    </h2>
    <div class="article-author">
      <p class="author"><span class="seperator"></span>金山办公助理总裁晁云曈</p>
      <div class="collection-and-comment" data-post-id="1593004">
        <span class="ifanrx-like like-count js-article-like-count">-</span>
        <a class="text-link" href="https://www.ifanr.com/dasheng/1593004#article-comments" target="_blank">
          <span class="ifanrx ifanrx-reply comment-count">-</span>
        </a>
      </div>
    </div>
  </div>

  <div class="article-image">
    <a ga-bind="click" ga-action="Main" ga-category="Dasheng" href="https://www.ifanr.com/dasheng/1593004" target="_blank" class="article-link"
      style="background-image: url('https://s3.ifanr.com/wp-content/uploads/2024/07/output-3.png')" aria-label="WPSAI 2.0 如何打造一个有信任感 AI 生产力工具">
    </a>
  </div>

  <div class="clear"></div>

</section>                                <div class="video-info" data-component="VideoInfo">
  <div class="video-info-left">
        <div class="video-box">
      <div class="video-thumbnail-box">
        <img src="https://s3.ifanr.com/wp-content/uploads/2024/07/w-w-w.jpg!720" class="thumbnail" alt="" />
        <div class="video-play-btn ifanrx-play ifanrx"></div>
      </div>
      <iframe class="js-article-video-src" src="" frameborder="0" allowfullscreen></iframe>
    </div>
    <div class="video-info-headline__title">
      <div class="left">
        <a href="https://www.ifanr.com/video/1592813" class="title-link js-link" target="_blank" ga-bind="click" ga-action="ToVideo" ga-category="MainPage_List" ga-label="video"><p class="js-title">油门焊死！仰望 U8 冲坡挑战，1300 马力的暴力美学</p></a>
        <p class="video-info-headline-time">05:06</p>
      </div>
      <div class="right">
        <a href="https://www.ifanr.com/video/1592813" class="js-link" target="_blank" ga-bind="click" ga-action="ToVideo" ga-category="MainPage_List" ga-label="video" aria-label="油门焊死！仰望 U8 冲坡挑战，1300 马力的暴力美学">
          <i class="ifanrx ifanrx-arrow-right"></i>
        </a>
      </div>
    </div>
      </div>

  <div class="video-info-right">
    <div class="video-info-box">
            <div class="video-info-item video-info-item-active" data-url="https://v.qq.com/txp/iframe/player.html?vid=f3557w3nfbm" data-link="https://www.ifanr.com/video/1592813" data-thumbnail="https://s3.ifanr.com/wp-content/uploads/2024/07/w-w-w.jpg!720">
        <div class="left">
          <div class="cover-image" style="background-image: url(https://s3.ifanr.com/wp-content/uploads/2024/07/w-w-w.jpg!260)"></div>
          <div class="back-hover"></div>
        </div>
        <div class="right">
          <p class="title">油门焊死！仰望 U8 冲坡挑战，1300 马力的暴力美学</p>
          <p class="ifr-video-duration">05:06</p>
        </div>
      </div>
            <div class="video-info-item " data-url="https://v.qq.com/txp/iframe/player.html?vid=a3554t2uldk" data-link="https://www.ifanr.com/video/1590191" data-thumbnail="https://s3.ifanr.com/wp-content/uploads/2024/06/w-w-w-w.png!720">
        <div class="left">
          <div class="cover-image" style="background-image: url(https://s3.ifanr.com/wp-content/uploads/2024/06/w-w-w-w.png!260)"></div>
          <div class="back-hover"></div>
        </div>
        <div class="right">
          <p class="title">用 Vision Pro 超时空见面，FaceTime 沉浸式体验</p>
          <p class="ifr-video-duration">01:21</p>
        </div>
      </div>
            <div class="video-info-item " data-url="https://v.qq.com/txp/iframe/player.html?vid=g3552abvuox" data-link="https://www.ifanr.com/video/1588392" data-thumbnail="https://s3.ifanr.com/wp-content/uploads/2024/06/169.jpg!720">
        <div class="left">
          <div class="cover-image" style="background-image: url(https://s3.ifanr.com/wp-content/uploads/2024/06/169.jpg!260)"></div>
          <div class="back-hover"></div>
        </div>
        <div class="right">
          <p class="title">小时候脑补不出的中国古诗词，我们拍下来了</p>
          <p class="ifr-video-duration">08:10</p>
        </div>
      </div>
            <div class="video-info-item " data-url="https://v.qq.com/txp/iframe/player.html?vid=i35514gxad3" data-link="https://www.ifanr.com/video/1587836" data-thumbnail="https://s3.ifanr.com/wp-content/uploads/2024/06/0000.jpg!720">
        <div class="left">
          <div class="cover-image" style="background-image: url(https://s3.ifanr.com/wp-content/uploads/2024/06/0000.jpg!260)"></div>
          <div class="back-hover"></div>
        </div>
        <div class="right">
          <p class="title">2024 华为平板怎么选？一次看懂这 8 款的区别</p>
          <p class="ifr-video-duration">08:06</p>
        </div>
      </div>
            <div class="video-info-item " data-url="https://v.qq.com/txp/iframe/player.html?vid=q3551idwwq7" data-link="https://www.ifanr.com/video/1587608" data-thumbnail="https://s3.ifanr.com/wp-content/uploads/2024/06/000-1.jpg!720">
        <div class="left">
          <div class="cover-image" style="background-image: url(https://s3.ifanr.com/wp-content/uploads/2024/06/000-1.jpg!260)"></div>
          <div class="back-hover"></div>
        </div>
        <div class="right">
          <p class="title">这个超低调的科技公司，为什么是打工人的「梦中情司」？</p>
          <p class="ifr-video-duration">06:45</p>
        </div>
      </div>
            <div class="video-info-item " data-url="https://v.qq.com/txp/iframe/player.html?vid=f35510rhp7a" data-link="https://www.ifanr.com/video/1587332" data-thumbnail="https://s3.ifanr.com/wp-content/uploads/2024/05/169-1.jpg!720">
        <div class="left">
          <div class="cover-image" style="background-image: url(https://s3.ifanr.com/wp-content/uploads/2024/05/169-1.jpg!260)"></div>
          <div class="back-hover"></div>
        </div>
        <div class="right">
          <p class="title">华为 WATCH FIT 3 爆改挑战，怎么 FIT 怎么来！</p>
          <p class="ifr-video-duration">09:32</p>
        </div>
      </div>
            <div class="video-info-item " data-url="https://v.qq.com/txp/iframe/player.html?vid=a3550iin6ft" allowFullScreen" data-link="https://www.ifanr.com/video/1586477" data-thumbnail="https://s3.ifanr.com/wp-content/uploads/2024/05/000-1.png!720">
        <div class="left">
          <div class="cover-image" style="background-image: url(https://s3.ifanr.com/wp-content/uploads/2024/05/000-1.png!260)"></div>
          <div class="back-hover"></div>
        </div>
        <div class="right">
          <p class="title">详解 teenage engineering，为什么它被称作「乔布斯时代的苹果」？</p>
          <p class="ifr-video-duration">12:55</p>
        </div>
      </div>
            <div class="video-info-item " data-url="https://v.qq.com/txp/iframe/player.html?vid=i35494r9syx" data-link="https://www.ifanr.com/video/1584841" data-thumbnail="https://s3.ifanr.com/wp-content/uploads/2024/05/2222.jpg!720">
        <div class="left">
          <div class="cover-image" style="background-image: url(https://s3.ifanr.com/wp-content/uploads/2024/05/2222.jpg!260)"></div>
          <div class="back-hover"></div>
        </div>
        <div class="right">
          <p class="title">新 iPad Pro/Air 值得买吗？上手后我们发现了这些细节</p>
          <p class="ifr-video-duration">05:09</p>
        </div>
      </div>
            <div class="video-info-item " data-url="https://v.qq.com/txp/iframe/player.html?vid=j3548816obp" data-link="https://www.ifanr.com/video/1584443" data-thumbnail="https://s3.ifanr.com/wp-content/uploads/2024/05/169.jpg!720">
        <div class="left">
          <div class="cover-image" style="background-image: url(https://s3.ifanr.com/wp-content/uploads/2024/05/169.jpg!260)"></div>
          <div class="back-hover"></div>
        </div>
        <div class="right">
          <p class="title">拍了三千多张照片，我们找到了 Pura 70 Ultra 的影像「华点」</p>
          <p class="ifr-video-duration">09:05</p>
        </div>
      </div>
            <div class="video-info-item " data-url="https://v.qq.com/txp/iframe/player.html?vid=i3547yxjl9x" data-link="https://www.ifanr.com/video/1583174" data-thumbnail="https://s3.ifanr.com/wp-content/uploads/2024/04/111-9.jpg!720">
        <div class="left">
          <div class="cover-image" style="background-image: url(https://s3.ifanr.com/wp-content/uploads/2024/04/111-9.jpg!260)"></div>
          <div class="back-hover"></div>
        </div>
        <div class="right">
          <p class="title">为了拍中国空间站，我们造了一个追星星的厨房</p>
          <p class="ifr-video-duration">09:53</p>
        </div>
      </div>
            <div class="video-info-item " data-url="https://v.qq.com/txp/iframe/player.html?vid=b3545xoqq1g" data-link="https://www.ifanr.com/video/1580837" data-thumbnail="https://s3.ifanr.com/wp-content/uploads/2024/04/19201080-1.png!720">
        <div class="left">
          <div class="cover-image" style="background-image: url(https://s3.ifanr.com/wp-content/uploads/2024/04/19201080-1.png!260)"></div>
          <div class="back-hover"></div>
        </div>
        <div class="right">
          <p class="title">我们用 AI 办了一场活动，还原了 AI  想象中的春天</p>
          <p class="ifr-video-duration">10:55</p>
        </div>
      </div>
            <div class="video-info-item " data-url="https://v.qq.com/txp/iframe/player.html?vid=q3540wtnnp2" data-link="https://www.ifanr.com/video/1576046" data-thumbnail="https://s3.ifanr.com/wp-content/uploads/2024/02/1-8.jpg!720">
        <div class="left">
          <div class="cover-image" style="background-image: url(https://s3.ifanr.com/wp-content/uploads/2024/02/1-8.jpg!260)"></div>
          <div class="back-hover"></div>
        </div>
        <div class="right">
          <p class="title">5 米 3 的小鹏 X9，遇上了最堵春运……</p>
          <p class="ifr-video-duration">07:21</p>
        </div>
      </div>
            <div class="video-info-item " data-url="https://v.qq.com/x/page/p35407q28pq.html" data-link="https://www.ifanr.com/video/1575887" data-thumbnail="https://s3.ifanr.com/wp-content/uploads/2024/02/0000.jpg!720">
        <div class="left">
          <div class="cover-image" style="background-image: url(https://s3.ifanr.com/wp-content/uploads/2024/02/0000.jpg!260)"></div>
          <div class="back-hover"></div>
        </div>
        <div class="right">
          <p class="title">小米 14 Ultra 对比实测！影像旗舰争霸来了</p>
          <p class="ifr-video-duration">07:28</p>
        </div>
      </div>
            <div class="video-info-item " data-url="https://v.qq.com/txp/iframe/player.html?vid=v3538odhx0g" data-link="https://www.ifanr.com/video/1574563" data-thumbnail="https://s3.ifanr.com/wp-content/uploads/2024/01/heng.jpg!720">
        <div class="left">
          <div class="cover-image" style="background-image: url(https://s3.ifanr.com/wp-content/uploads/2024/01/heng.jpg!260)"></div>
          <div class="back-hover"></div>
        </div>
        <div class="right">
          <p class="title">我们花半个月时间，用手机长焦拍出了穿越感！</p>
          <p class="ifr-video-duration">02:41</p>
        </div>
      </div>
            <div class="video-info-item " data-url="https://v.qq.com/txp/iframe/player.html?vid=j3534np6vqu" data-link="https://www.ifanr.com/video/1571282" data-thumbnail="https://s3.ifanr.com/wp-content/uploads/2023/12/169-1.png!720">
        <div class="left">
          <div class="cover-image" style="background-image: url(https://s3.ifanr.com/wp-content/uploads/2023/12/169-1.png!260)"></div>
          <div class="back-hover"></div>
        </div>
        <div class="right">
          <p class="title">为了拿到这个健康大礼，我们完成了三个挑战</p>
          <p class="ifr-video-duration">08:17</p>
        </div>
      </div>
            <div class="video-info-item " data-url="https://v.qq.com/txp/iframe/player.html?vid=f3533ssaf2v" data-link="https://www.ifanr.com/video/1570471" data-thumbnail="https://s3.ifanr.com/wp-content/uploads/2023/12/1692.png!720">
        <div class="left">
          <div class="cover-image" style="background-image: url(https://s3.ifanr.com/wp-content/uploads/2023/12/1692.png!260)"></div>
          <div class="back-hover"></div>
        </div>
        <div class="right">
          <p class="title">老手机升级鸿蒙 4，还能多战两年？功臣是这四个字</p>
          <p class="ifr-video-duration">08:16</p>
        </div>
      </div>
            <div class="video-info-item " data-url="https://v.qq.com/txp/iframe/player.html?vid=v35329fy3ny" data-link="https://www.ifanr.com/video/1570109" data-thumbnail="https://s3.ifanr.com/wp-content/uploads/2023/12/16-9.jpg!720">
        <div class="left">
          <div class="cover-image" style="background-image: url(https://s3.ifanr.com/wp-content/uploads/2023/12/16-9.jpg!260)"></div>
          <div class="back-hover"></div>
        </div>
        <div class="right">
          <p class="title">第一台能用卫星发消息的大众平板！华为 MatePad Pro 11 英寸 2024 款评测体验</p>
          <p class="ifr-video-duration">09:36</p>
        </div>
      </div>
            <div class="video-info-item " data-url="https://v.qq.com/txp/iframe/player.html?vid=s35252ye6y7" data-link="https://www.ifanr.com/video/1568594" data-thumbnail="https://s3.ifanr.com/wp-content/uploads/2023/11/169.jpg!720">
        <div class="left">
          <div class="cover-image" style="background-image: url(https://s3.ifanr.com/wp-content/uploads/2023/11/169.jpg!260)"></div>
          <div class="back-hover"></div>
        </div>
        <div class="right">
          <p class="title">复活 1000 年前的创意，我们把粤港澳大湾区，装进了手机镜头</p>
          <p class="ifr-video-duration">10:39</p>
        </div>
      </div>
            <div class="video-info-item " data-url="https://v.qq.com/txp/iframe/player.html?vid=r35159nct3a" data-link="https://www.ifanr.com/video/1568495" data-thumbnail="https://s3.ifanr.com/wp-content/uploads/2023/11/1-6.jpg!720">
        <div class="left">
          <div class="cover-image" style="background-image: url(https://s3.ifanr.com/wp-content/uploads/2023/11/1-6.jpg!260)"></div>
          <div class="back-hover"></div>
        </div>
        <div class="right">
          <p class="title">小米 14/14 Pro 首发评测：全面对标 iPhone 15 Pro，成了吗？</p>
          <p class="ifr-video-duration">12:01</p>
        </div>
      </div>
            <div class="video-info-item " data-url="https://v.qq.com/txp/iframe/player.html?vid=h3519fxwbm1" data-link="https://www.ifanr.com/video/1567230" data-thumbnail="https://s3.ifanr.com/wp-content/uploads/2023/11/1920.jpg!720">
        <div class="left">
          <div class="cover-image" style="background-image: url(https://s3.ifanr.com/wp-content/uploads/2023/11/1920.jpg!260)"></div>
          <div class="back-hover"></div>
        </div>
        <div class="right">
          <p class="title">智慧 PC，笔记本电脑的终局之战？</p>
          <p class="ifr-video-duration">08:46</p>
        </div>
      </div>
          </div>
  </div>
</div>
                          <div class='article-container'>
  		<div class="article-item article-item--list " data-post-id="1593286">
							<div class="article-image cover-image">
					<a href="https://www.ifanr.com/category/ifanrnews" class="article-label" target="_blank"  ga-bind="click" ga-category="MainPage_List" ga-action="ToItemArticle" ga-label="Article">早报</a>
					<a href="https://www.ifanr.com/1593286" ga-bind="click" ga-category="MainPage_List" ga-action="ToItemArticle" ga-label="Article" class="article-link cover-block" target="_blank" style="background-image:url('https://s3.ifanr.com/images/ep/cover-images/vans_cover.jpg!260')" aria-label="早报|多地宝马 4S 店出现拒不交车及临时加价情况/曝华为已启动三折叠屏手机研发/周鸿祎谈为何微软蓝屏故障在中国少：大多数企业用 360"></a>
				</div>
			
			<div class="article-info js-transform">
				<h3>
					<a class="js-title-transform" href="https://www.ifanr.com/1593286" ga-bind="click" ga-category="MainPage_List" ga-action="ToItemArticle" ga-label="Article" target="_blank">早报|多地宝马 4S 店出现拒不交车及临时加价情况/曝华为已启动三折叠屏手机研发/周鸿祎谈为何微软蓝屏故障在中国少：大多数企业用 360</a>
				</h3>
				<div class="article-summary">· Google 或将与雷朋厂商开发 Gemini 智能眼镜
· 三星最大工会将在周一再次罢工
· 传广汽丰田将退出价格战，内部人士：官方从未说过</div>
				<div class="article-meta" data-post-id="1593286">
					<div class="author-info">
						<img src="https://cdn.ifanr.cn/ifanr/default_avatar.png" alt="">
						<span class="author-name">何晓涵</span>
						<a href="https://www.ifanr.com/author/hexiaohan" class="cover-block" target="_blank" aria-label="作者主页"></a>
					</div>
					<time data-time="2024-07-22 08:48:27" data-timestamp="1721609307">16 小时前</time>
					<div class="float-right" data-post-id="1593286">
						<span class="ifanrx-like like-count js-article-like-count">-</span>
						<a class="text-link" href="https://www.ifanr.com/1593286#article-comments" target="_blank">
							<span class="ifanrx ifanrx-reply comment-count">-</span>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
                                        <div class='article-container'>
  		<div class="article-item article-item--list " data-post-id="1593130">
							<div class="article-image cover-image">
					<a href="https://www.ifanr.com/category/product" class="article-label" target="_blank"  ga-bind="click" ga-category="MainPage_List" ga-action="ToItemArticle" ga-label="Article">产品</a>
					<a href="https://www.ifanr.com/1593130" ga-bind="click" ga-category="MainPage_List" ga-action="ToItemArticle" ga-label="Article" class="article-link cover-block" target="_blank" style="background-image:url('https://s3.ifanr.com/wp-content/uploads/2024/07/img_669a7f0f40ca2.jpeg!260')" aria-label="小米 MIX Fold4 评测：让我纠结的五个理由"></a>
				</div>
			
			<div class="article-info js-transform">
				<h3>
					<a class="js-title-transform" href="https://www.ifanr.com/1593130" ga-bind="click" ga-category="MainPage_List" ga-action="ToItemArticle" ga-label="Article" target="_blank">小米 MIX Fold4 评测：让我纠结的五个理由</a>
				</h3>
				<div class="article-summary">小米决定在「轻薄全能」的路上继续深造，但经过几天的使用，我对这部手机是又爱又纠结。</div>
				<div class="article-meta" data-post-id="1593130">
					<div class="author-info">
						<img src="https://s3.ifanr.com/wp-content/uploads/2024/04/WSL-1.jpg!100" alt="">
						<span class="author-name">吴 尚霖</span>
						<a href="https://www.ifanr.com/author/wushanglin" class="cover-block" target="_blank" aria-label="作者主页"></a>
					</div>
					<time data-time="2024-07-20 14:00:48" data-timestamp="1721455248">前天 14:00</time>
					<div class="float-right" data-post-id="1593130">
						<span class="ifanrx-like like-count js-article-like-count">-</span>
						<a class="text-link" href="https://www.ifanr.com/1593130#article-comments" target="_blank">
							<span class="ifanrx ifanrx-reply comment-count">-</span>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
                                        <div class='article-container'>
  		<div class="article-item article-item--list " data-post-id="1593166">
							<div class="article-image cover-image">
					<a href="https://www.ifanr.com/category/ifanrnews" class="article-label" target="_blank"  ga-bind="click" ga-category="MainPage_List" ga-action="ToItemArticle" ga-label="Article">早报</a>
					<a href="https://www.ifanr.com/1593166" ga-bind="click" ga-category="MainPage_List" ga-action="ToItemArticle" ga-label="Article" class="article-link cover-block" target="_blank" style="background-image:url('https://s3.ifanr.com/images/ep/cover-images/ka_fei_guan_zhong_de_nv_hai_men_cover.jpg!260')" aria-label="早报|小米赛车亮相，雷军谈造车：先从难的干起/杀毒软件致多地微软设备开机蓝屏/腾讯咪咕将拓展苹果 Vision Pro 沉浸式内容"></a>
				</div>
			
			<div class="article-info js-transform">
				<h3>
					<a class="js-title-transform" href="https://www.ifanr.com/1593166" ga-bind="click" ga-category="MainPage_List" ga-action="ToItemArticle" ga-label="Article" target="_blank">早报|小米赛车亮相，雷军谈造车：先从难的干起/杀毒软件致多地微软设备开机蓝屏/腾讯咪咕将拓展苹果 Vision Pro 沉浸式内容</a>
				</h3>
				<div class="article-summary">· 华为起诉联发科专利侵权，联发科回应
· 消息称小鹏培训大众汽车工程师
· 消息称 OpenAI 接触芯片设计商，讨论开发 AI 芯片</div>
				<div class="article-meta" data-post-id="1593166">
					<div class="author-info">
						<img src="https://s3.ifanr.com/wp-content/uploads/2024/02/WechatIMG5.jpg!100" alt="">
						<span class="author-name">苏伟鸿</span>
						<a href="https://www.ifanr.com/author/suweihong" class="cover-block" target="_blank" aria-label="作者主页"></a>
					</div>
					<time data-time="2024-07-20 09:00:28" data-timestamp="1721437228">前天 09:00</time>
					<div class="float-right" data-post-id="1593166">
						<span class="ifanrx-like like-count js-article-like-count">-</span>
						<a class="text-link" href="https://www.ifanr.com/1593166#article-comments" target="_blank">
							<span class="ifanrx ifanrx-reply comment-count">-</span>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
                                        <div class='article-container'>
  		<div class="article-item article-item--list " data-post-id="1593106">
							<div class="article-image cover-image">
					<a href="https://www.ifanr.com/category/business" class="article-label" target="_blank"  ga-bind="click" ga-category="MainPage_List" ga-action="ToItemArticle" ga-label="Article">公司</a>
					<a href="https://www.ifanr.com/1593106" ga-bind="click" ga-category="MainPage_List" ga-action="ToItemArticle" ga-label="Article" class="article-link cover-block" target="_blank" style="background-image:url('https://s3.ifanr.com/wp-content/uploads/2024/07/2024-07-19-21.54.53.png!260')" aria-label="小米首辆赛车 SU7 Ultra 发布，零百加速破 2 秒！但最好看的是雷军漂移"></a>
				</div>
			
			<div class="article-info js-transform">
				<h3>
					<a class="js-title-transform" href="https://www.ifanr.com/1593106" ga-bind="click" ga-category="MainPage_List" ga-action="ToItemArticle" ga-label="Article" target="_blank">小米首辆赛车 SU7 Ultra 发布，零百加速破 2 秒！但最好看的是雷军漂移</a>
				</h3>
				<div class="article-summary">MIX FOLD 4，可能是今晚最不重要的产品。</div>
				<div class="article-meta" data-post-id="1593106">
					<div class="author-info">
						<img src="https://s3.ifanr.com/wp-content/uploads/2024/05/WechatIMG31.jpg!100" alt="">
						<span class="author-name">王萌</span>
						<a href="https://www.ifanr.com/author/wangmeng" class="cover-block" target="_blank" aria-label="作者主页"></a>
					</div>
					<time data-time="2024-07-19 23:16:58" data-timestamp="1721402218">07-19 23:16</time>
					<div class="float-right" data-post-id="1593106">
						<span class="ifanrx-like like-count js-article-like-count">-</span>
						<a class="text-link" href="https://www.ifanr.com/1593106#article-comments" target="_blank">
							<span class="ifanrx ifanrx-reply comment-count">-</span>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
                                        <div class='article-container'>
  		<div class="article-item article-item--list " data-post-id="1592940">
							<div class="article-image cover-image">
					<a href="https://www.ifanr.com/category/intelligentcar" class="article-label" target="_blank"  ga-bind="click" ga-category="MainPage_List" ga-action="ToItemArticle" ga-label="Article">董车会</a>
					<a href="https://www.ifanr.com/1592940" ga-bind="click" ga-category="MainPage_List" ga-action="ToItemArticle" ga-label="Article" class="article-link cover-block" target="_blank" style="background-image:url('https://s3.ifanr.com/wp-content/uploads/2024/07/fengmian-1.png!260')" aria-label="领先不止一代，问界 M9 刷新 C-NCAP 安全评价最高分"></a>
				</div>
			
			<div class="article-info js-transform">
				<h3>
					<a class="js-title-transform" href="https://www.ifanr.com/1592940" ga-bind="click" ga-category="MainPage_List" ga-action="ToItemArticle" ga-label="Article" target="_blank">领先不止一代，问界 M9 刷新 C-NCAP 安全评价最高分</a>
				</h3>
				<div class="article-summary">安全，就是最大的豪华。</div>
				<div class="article-meta" data-post-id="1592940">
					<div class="author-info">
						<img src="https://s3.ifanr.com/wp-content/uploads/2018/04/xdc.jpg!100" alt="">
						<span class="author-name">谢东成</span>
						<a href="https://www.ifanr.com/author/xiedongcheng" class="cover-block" target="_blank" aria-label="作者主页"></a>
					</div>
					<time data-time="2024-07-19 17:19:08" data-timestamp="1721380748">07-19 17:19</time>
					<div class="float-right" data-post-id="1592940">
						<span class="ifanrx-like like-count js-article-like-count">-</span>
						<a class="text-link" href="https://www.ifanr.com/1592940#article-comments" target="_blank">
							<span class="ifanrx ifanrx-reply comment-count">-</span>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
                                        <div class='article-container'>
  		<div class="article-item article-item--list " data-post-id="1592900">
							<div class="article-image cover-image">
					<a href="https://www.ifanr.com/category/intelligentcar" class="article-label" target="_blank"  ga-bind="click" ga-category="MainPage_List" ga-action="ToItemArticle" ga-label="Article">董车会</a>
					<a href="https://www.ifanr.com/1592900" ga-bind="click" ga-category="MainPage_List" ga-action="ToItemArticle" ga-label="Article" class="article-link cover-block" target="_blank" style="background-image:url('https://s3.ifanr.com/wp-content/uploads/2024/07/tbem.jpg!260')" aria-label="BBA 全部开始涨价，血流成河的汽车价格战快打不下去了"></a>
				</div>
			
			<div class="article-info js-transform">
				<h3>
					<a class="js-title-transform" href="https://www.ifanr.com/1592900" ga-bind="click" ga-category="MainPage_List" ga-action="ToItemArticle" ga-label="Article" target="_blank">BBA 全部开始涨价，血流成河的汽车价格战快打不下去了</a>
				</h3>
				<div class="article-summary">是时候抄底 BBA 了？</div>
				<div class="article-meta" data-post-id="1592900">
					<div class="author-info">
						<img src="https://s3.ifanr.com/wp-content/uploads/2024/03/lh500.jpg!100" alt="">
						<span class="author-name">李华</span>
						<a href="https://www.ifanr.com/author/tanjiewen" class="cover-block" target="_blank" aria-label="作者主页"></a>
					</div>
					<time data-time="2024-07-19 16:13:28" data-timestamp="1721376808">07-19 16:13</time>
					<div class="float-right" data-post-id="1592900">
						<span class="ifanrx-like like-count js-article-like-count">-</span>
						<a class="text-link" href="https://www.ifanr.com/1592900#article-comments" target="_blank">
							<span class="ifanrx ifanrx-reply comment-count">-</span>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
                                        <div class='article-container'>
  		<div class="article-item article-item--list " data-post-id="1592926">
							<div class="article-image cover-image">
					<a href="https://www.ifanr.com/category/ifanrnews" class="article-label" target="_blank"  ga-bind="click" ga-category="MainPage_List" ga-action="ToItemArticle" ga-label="Article">早报</a>
					<a href="https://www.ifanr.com/1592926" ga-bind="click" ga-category="MainPage_List" ga-action="ToItemArticle" ga-label="Article" class="article-link cover-block" target="_blank" style="background-image:url('https://s3.ifanr.com/images/ep/cover-images/hai_lang_cover.jpg!260')" aria-label="早报|OpenAI 发布 GPT-4o mini，GPT-3.5 退役/曝娃哈哈总经理宗馥莉请辞/香港消委会致歉农夫山泉"></a>
				</div>
			
			<div class="article-info js-transform">
				<h3>
					<a class="js-title-transform" href="https://www.ifanr.com/1592926" ga-bind="click" ga-category="MainPage_List" ga-action="ToItemArticle" ga-label="Article" target="_blank">早报|OpenAI 发布 GPT-4o mini，GPT-3.5 退役/曝娃哈哈总经理宗馥莉请辞/香港消委会致歉农夫山泉</a>
				</h3>
				<div class="article-summary">· 苹果回应使用未授权视频训练 AI：相关模型仅用于研究
· 小米回应 SU7 汽车磕碰后车底冒烟
· 华为辟谣「远程实习」</div>
				<div class="article-meta" data-post-id="1592926">
					<div class="author-info">
						<img src="https://s3.ifanr.com/wp-content/uploads/2024/02/WechatIMG5.jpg!100" alt="">
						<span class="author-name">苏伟鸿</span>
						<a href="https://www.ifanr.com/author/suweihong" class="cover-block" target="_blank" aria-label="作者主页"></a>
					</div>
					<time data-time="2024-07-19 08:30:10" data-timestamp="1721349010">07-19 08:30</time>
					<div class="float-right" data-post-id="1592926">
						<span class="ifanrx-like like-count js-article-like-count">-</span>
						<a class="text-link" href="https://www.ifanr.com/1592926#article-comments" target="_blank">
							<span class="ifanrx ifanrx-reply comment-count">-</span>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
                                        <div class='article-container'>
  		<div class="article-item article-item--list " data-post-id="1592863">
							<div class="article-image cover-image">
					<a href="https://www.ifanr.com/category/product" class="article-label" target="_blank"  ga-bind="click" ga-category="MainPage_List" ga-action="ToItemArticle" ga-label="Article">产品</a>
					<a href="https://www.ifanr.com/1592863" ga-bind="click" ga-category="MainPage_List" ga-action="ToItemArticle" ga-label="Article" class="article-link cover-block" target="_blank" style="background-image:url('https://s3.ifanr.com/wp-content/uploads/2024/07/00K70U309831.jpg!260')" aria-label="Redmi K70 至尊版体验：是性能的至尊版，还是全能的超大杯"></a>
				</div>
			
			<div class="article-info js-transform">
				<h3>
					<a class="js-title-transform" href="https://www.ifanr.com/1592863" ga-bind="click" ga-category="MainPage_List" ga-action="ToItemArticle" ga-label="Article" target="_blank">Redmi K70 至尊版体验：是性能的至尊版，还是全能的超大杯</a>
				</h3>
				<div class="article-summary">从性能旗舰，进化成全能旗舰</div>
				<div class="article-meta" data-post-id="1592863">
					<div class="author-info">
						<img src="https://s3.ifanr.com/wp-content/uploads/2017/02/lface.jpg!100" alt="">
						<span class="author-name">梁梦麟</span>
						<a href="https://www.ifanr.com/author/komoleung" class="cover-block" target="_blank" aria-label="作者主页"></a>
					</div>
					<time data-time="2024-07-18 19:15:58" data-timestamp="1721301358">07-18 19:15</time>
					<div class="float-right" data-post-id="1592863">
						<span class="ifanrx-like like-count js-article-like-count">-</span>
						<a class="text-link" href="https://www.ifanr.com/1592863#article-comments" target="_blank">
							<span class="ifanrx ifanrx-reply comment-count">-</span>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
                                        <div class='article-container'>
  		<div class="article-item article-item--list " data-post-id="1592627">
							<div class="article-image cover-image">
					<a href="https://www.ifanr.com/category/product" class="article-label" target="_blank"  ga-bind="click" ga-category="MainPage_List" ga-action="ToItemArticle" ga-label="Article">产品</a>
					<a href="https://www.ifanr.com/1592627" ga-bind="click" ga-category="MainPage_List" ga-action="ToItemArticle" ga-label="Article" class="article-link cover-block" target="_blank" style="background-image:url('https://s3.ifanr.com/wp-content/uploads/2024/07/WechatIMG13.jpg!260')" aria-label="苹果折叠手机专利曝光，可能更耐摔？"></a>
				</div>
			
			<div class="article-info js-transform">
				<h3>
					<a class="js-title-transform" href="https://www.ifanr.com/1592627" ga-bind="click" ga-category="MainPage_List" ga-action="ToItemArticle" ga-label="Article" target="_blank">苹果折叠手机专利曝光，可能更耐摔？</a>
				</h3>
				<div class="article-summary">苹果再次公布折叠屏专利</div>
				<div class="article-meta" data-post-id="1592627">
					<div class="author-info">
						<img src="https://cdn.ifanr.cn/ifanr/default_avatar.png" alt="">
						<span class="author-name">周奕旨</span>
						<a href="https://www.ifanr.com/author/zhouyizhi" class="cover-block" target="_blank" aria-label="作者主页"></a>
					</div>
					<time data-time="2024-07-18 15:02:52" data-timestamp="1721286172">07-18 15:02</time>
					<div class="float-right" data-post-id="1592627">
						<span class="ifanrx-like like-count js-article-like-count">-</span>
						<a class="text-link" href="https://www.ifanr.com/1592627#article-comments" target="_blank">
							<span class="ifanrx ifanrx-reply comment-count">-</span>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
                                        <div class='article-container'>
  		<div class="article-item article-item--list " data-post-id="1592674">
							<div class="article-image cover-image">
					<a href="https://www.ifanr.com/category/intelligentcar" class="article-label" target="_blank"  ga-bind="click" ga-category="MainPage_List" ga-action="ToItemArticle" ga-label="Article">董车会</a>
					<a href="https://www.ifanr.com/1592674" ga-bind="click" ga-category="MainPage_List" ga-action="ToItemArticle" ga-label="Article" class="article-link cover-block" target="_blank" style="background-image:url('https://s3.ifanr.com/wp-content/uploads/2024/07/lus.jpg!260')" aria-label="续航 823 公里！全球「能效最高」的电车发布，但我们还买不到"></a>
				</div>
			
			<div class="article-info js-transform">
				<h3>
					<a class="js-title-transform" href="https://www.ifanr.com/1592674" ga-bind="click" ga-category="MainPage_List" ga-action="ToItemArticle" ga-label="Article" target="_blank">续航 823 公里！全球「能效最高」的电车发布，但我们还买不到</a>
				</h3>
				<div class="article-summary">名副其实。</div>
				<div class="article-meta" data-post-id="1592674">
					<div class="author-info">
						<img src="https://s3.ifanr.com/wp-content/uploads/2024/03/lh500.jpg!100" alt="">
						<span class="author-name">李华</span>
						<a href="https://www.ifanr.com/author/tanjiewen" class="cover-block" target="_blank" aria-label="作者主页"></a>
					</div>
					<time data-time="2024-07-18 11:24:47" data-timestamp="1721273087">07-18 11:24</time>
					<div class="float-right" data-post-id="1592674">
						<span class="ifanrx-like like-count js-article-like-count">-</span>
						<a class="text-link" href="https://www.ifanr.com/1592674#article-comments" target="_blank">
							<span class="ifanrx ifanrx-reply comment-count">-</span>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
                                        <div class='article-container'>
  		<div class="article-item article-item--list " data-post-id="1592796">
							<div class="article-image cover-image">
					<a href="https://www.ifanr.com/category/ifanrnews" class="article-label" target="_blank"  ga-bind="click" ga-category="MainPage_List" ga-action="ToItemArticle" ga-label="Article">早报</a>
					<a href="https://www.ifanr.com/1592796" ga-bind="click" ga-category="MainPage_List" ga-action="ToItemArticle" ga-label="Article" class="article-link cover-block" target="_blank" style="background-image:url('https://s3.ifanr.com/images/ep/cover-images/you_xi_cover.jpg!260')" aria-label="早报|曝华为 Pura 70 出货量同比 P60 增长 125%/爱奇艺就「投屏案」提出上诉/今日头条回应导演陆川被盗号"></a>
				</div>
			
			<div class="article-info js-transform">
				<h3>
					<a class="js-title-transform" href="https://www.ifanr.com/1592796" ga-bind="click" ga-category="MainPage_List" ga-action="ToItemArticle" ga-label="Article" target="_blank">早报|曝华为 Pura 70 出货量同比 P60 增长 125%/爱奇艺就「投屏案」提出上诉/今日头条回应导演陆川被盗号</a>
				</h3>
				<div class="article-summary">· 小米首款小折叠手机 Mix Flip 亮相，全尺寸外屏+骁龙 8 Gen 3 处理器
· 月之暗面回应大模型显示「9.11 大于 9.9」
· 苹果发布宣传片强调 Safari 浏览器隐私安全性</div>
				<div class="article-meta" data-post-id="1592796">
					<div class="author-info">
						<img src="https://s3.ifanr.com/wp-content/uploads/2024/02/WechatIMG5.jpg!100" alt="">
						<span class="author-name">苏伟鸿</span>
						<a href="https://www.ifanr.com/author/suweihong" class="cover-block" target="_blank" aria-label="作者主页"></a>
					</div>
					<time data-time="2024-07-18 08:13:42" data-timestamp="1721261622">07-18 08:13</time>
					<div class="float-right" data-post-id="1592796">
						<span class="ifanrx-like like-count js-article-like-count">-</span>
						<a class="text-link" href="https://www.ifanr.com/1592796#article-comments" target="_blank">
							<span class="ifanrx ifanrx-reply comment-count">-</span>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
                                        <div class='article-container'>
  		<div class="article-item article-item--list " data-post-id="1592675">
							<div class="article-image cover-image">
					<a href="https://www.ifanr.com/category/%e5%95%86%e4%b8%9a" class="article-label" target="_blank"  ga-bind="click" ga-category="MainPage_List" ga-action="ToItemArticle" ga-label="Article">商业</a>
					<a href="https://www.ifanr.com/1592675" ga-bind="click" ga-category="MainPage_List" ga-action="ToItemArticle" ga-label="Article" class="article-link cover-block" target="_blank" style="background-image:url('https://s3.ifanr.com/wp-content/uploads/2024/07/mab.jpg!260')" aria-label="从豆包到 Kimi，为什么 AI 产品都在做浏览器插件"></a>
				</div>
			
			<div class="article-info js-transform">
				<h3>
					<a class="js-title-transform" href="https://www.ifanr.com/1592675" ga-bind="click" ga-category="MainPage_List" ga-action="ToItemArticle" ga-label="Article" target="_blank">从豆包到 Kimi，为什么 AI 产品都在做浏览器插件</a>
				</h3>
				<div class="article-summary">哪里不会点哪里的浏览器来了</div>
				<div class="article-meta" data-post-id="1592675">
					<div class="author-info">
						<img src="https://s3.ifanr.com/wp-content/uploads/2023/11/WechatIMG2690.jpeg!100" alt="">
						<span class="author-name">张成晨</span>
						<a href="https://www.ifanr.com/author/zhangchengchen" class="cover-block" target="_blank" aria-label="作者主页"></a>
					</div>
					<time data-time="2024-07-17 19:05:20" data-timestamp="1721214320">07-17 19:05</time>
					<div class="float-right" data-post-id="1592675">
						<span class="ifanrx-like like-count js-article-like-count">-</span>
						<a class="text-link" href="https://www.ifanr.com/1592675#article-comments" target="_blank">
							<span class="ifanrx ifanrx-reply comment-count">-</span>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
                                        <div class='article-container'>
  		<div class="article-item article-item--list " data-post-id="1592600">
							<div class="article-image cover-image">
					<a href="https://www.ifanr.com/category/ifanrnews" class="article-label" target="_blank"  ga-bind="click" ga-category="MainPage_List" ga-action="ToItemArticle" ga-label="Article">早报</a>
					<a href="https://www.ifanr.com/1592600" ga-bind="click" ga-category="MainPage_List" ga-action="ToItemArticle" ga-label="Article" class="article-link cover-block" target="_blank" style="background-image:url('https://s3.ifanr.com/images/ep/cover-images/zi_hang_che_bei_ying_cover.jpg!260')" aria-label="早报|小米雷军官宣本周五演讲：谈造车经历，发布多款新品/农夫山泉要求香港消保委道歉/苹果、英伟达被曝私自使用创作者视频训练 AI"></a>
				</div>
			
			<div class="article-info js-transform">
				<h3>
					<a class="js-title-transform" href="https://www.ifanr.com/1592600" ga-bind="click" ga-category="MainPage_List" ga-action="ToItemArticle" ga-label="Article" target="_blank">早报|小米雷军官宣本周五演讲：谈造车经历，发布多款新品/农夫山泉要求香港消保委道歉/苹果、英伟达被曝私自使用创作者视频训练 AI</a>
				</h3>
				<div class="article-summary">· 消息称字节跳动将于本周公布 AI 模型技术进展
· 曝马斯克要求特斯拉年底前解决电池研发问题
· 华为首部手机电影《化境》上线，Pura 70 系列手机拍摄</div>
				<div class="article-meta" data-post-id="1592600">
					<div class="author-info">
						<img src="https://s3.ifanr.com/wp-content/uploads/2024/02/WechatIMG5.jpg!100" alt="">
						<span class="author-name">苏伟鸿</span>
						<a href="https://www.ifanr.com/author/suweihong" class="cover-block" target="_blank" aria-label="作者主页"></a>
					</div>
					<time data-time="2024-07-17 08:26:12" data-timestamp="1721175972">07-17 08:26</time>
					<div class="float-right" data-post-id="1592600">
						<span class="ifanrx-like like-count js-article-like-count">-</span>
						<a class="text-link" href="https://www.ifanr.com/1592600#article-comments" target="_blank">
							<span class="ifanrx ifanrx-reply comment-count">-</span>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
                                        <div class='article-container'>
  		<div class="article-item article-item--list " data-post-id="1592584">
							<div class="article-image cover-image">
					<a href="https://www.ifanr.com/category/intelligentcar" class="article-label" target="_blank"  ga-bind="click" ga-category="MainPage_List" ga-action="ToItemArticle" ga-label="Article">董车会</a>
					<a href="https://www.ifanr.com/1592584" ga-bind="click" ga-category="MainPage_List" ga-action="ToItemArticle" ga-label="Article" class="article-link cover-block" target="_blank" style="background-image:url('https://s3.ifanr.com/wp-content/uploads/2024/07/ms.jpg!260')" aria-label="马斯克 4 年前的这个决定，让特斯拉犯下了最严重的错误"></a>
				</div>
			
			<div class="article-info js-transform">
				<h3>
					<a class="js-title-transform" href="https://www.ifanr.com/1592584" ga-bind="click" ga-category="MainPage_List" ga-action="ToItemArticle" ga-label="Article" target="_blank">马斯克 4 年前的这个决定，让特斯拉犯下了最严重的错误</a>
				</h3>
				<div class="article-summary">马斯克后悔的事不多，这也许能算一件。</div>
				<div class="article-meta" data-post-id="1592584">
					<div class="author-info">
						<img src="https://s3.ifanr.com/wp-content/uploads/2024/03/lh500.jpg!100" alt="">
						<span class="author-name">李华</span>
						<a href="https://www.ifanr.com/author/tanjiewen" class="cover-block" target="_blank" aria-label="作者主页"></a>
					</div>
					<time data-time="2024-07-16 21:16:33" data-timestamp="1721135793">07-16 21:16</time>
					<div class="float-right" data-post-id="1592584">
						<span class="ifanrx-like like-count js-article-like-count">-</span>
						<a class="text-link" href="https://www.ifanr.com/1592584#article-comments" target="_blank">
							<span class="ifanrx ifanrx-reply comment-count">-</span>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
                                        <div class='article-container'>
  		<div class="article-item article-item--list " data-post-id="1592505">
							<div class="article-image cover-image">
					<a href="https://www.ifanr.com/category/product" class="article-label" target="_blank"  ga-bind="click" ga-category="MainPage_List" ga-action="ToItemArticle" ga-label="Article">产品</a>
					<a href="https://www.ifanr.com/1592505" ga-bind="click" ga-category="MainPage_List" ga-action="ToItemArticle" ga-label="Article" class="article-link cover-block" target="_blank" style="background-image:url('https://s3.ifanr.com/wp-content/uploads/2024/07/1280X1280.jpeg!260')" aria-label="索尼 ZV-E10 II 推出，视频功能再进一步"></a>
				</div>
			
			<div class="article-info js-transform">
				<h3>
					<a class="js-title-transform" href="https://www.ifanr.com/1592505" ga-bind="click" ga-category="MainPage_List" ga-action="ToItemArticle" ga-label="Article" target="_blank">索尼 ZV-E10 II 推出，视频功能再进一步</a>
				</h3>
				<div class="article-summary">「甜品」级的索尼 ZV-E10 II</div>
				<div class="article-meta" data-post-id="1592505">
					<div class="author-info">
						<img src="https://cdn.ifanr.cn/ifanr/default_avatar.png" alt="">
						<span class="author-name">周奕旨</span>
						<a href="https://www.ifanr.com/author/zhouyizhi" class="cover-block" target="_blank" aria-label="作者主页"></a>
					</div>
					<time data-time="2024-07-16 18:28:56" data-timestamp="1721125736">07-16 18:28</time>
					<div class="float-right" data-post-id="1592505">
						<span class="ifanrx-like like-count js-article-like-count">-</span>
						<a class="text-link" href="https://www.ifanr.com/1592505#article-comments" target="_blank">
							<span class="ifanrx ifanrx-reply comment-count">-</span>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
                                        <div class='article-container'>
  		<div class="article-item article-item--list " data-post-id="1592512">
							<div class="article-image cover-image">
					<a href="https://www.ifanr.com/category/%e5%95%86%e4%b8%9a" class="article-label" target="_blank"  ga-bind="click" ga-category="MainPage_List" ga-action="ToItemArticle" ga-label="Article">商业</a>
					<a href="https://www.ifanr.com/1592512" ga-bind="click" ga-category="MainPage_List" ga-action="ToItemArticle" ga-label="Article" class="article-link cover-block" target="_blank" style="background-image:url('https://s3.ifanr.com/wp-content/uploads/2024/07/ke44.jpg!260')" aria-label="体验完夸克 AI 搜索，可靠的万能 AI 搭子找到了"></a>
				</div>
			
			<div class="article-info js-transform">
				<h3>
					<a class="js-title-transform" href="https://www.ifanr.com/1592512" ga-bind="click" ga-category="MainPage_List" ga-action="ToItemArticle" ga-label="Article" target="_blank">体验完夸克 AI 搜索，可靠的万能 AI 搭子找到了</a>
				</h3>
				<div class="article-summary">个人学习、生活和工作的智能助手</div>
				<div class="article-meta" data-post-id="1592512">
					<div class="author-info">
						<img src="https://s3.ifanr.com/wp-content/uploads/2023/11/WechatIMG2690.jpeg!100" alt="">
						<span class="author-name">张成晨</span>
						<a href="https://www.ifanr.com/author/zhangchengchen" class="cover-block" target="_blank" aria-label="作者主页"></a>
					</div>
					<time data-time="2024-07-16 17:49:29" data-timestamp="1721123369">07-16 17:49</time>
					<div class="float-right" data-post-id="1592512">
						<span class="ifanrx-like like-count js-article-like-count">-</span>
						<a class="text-link" href="https://www.ifanr.com/1592512#article-comments" target="_blank">
							<span class="ifanrx ifanrx-reply comment-count">-</span>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
              
    </div>

    <div class="load-more-card">
  <span class="load-more-btn">加载更多</span>
  <span class="no-more-text hidden">没有更多了</span>
  <span class="loading-text hidden">正在加载...</span>
</div>
  </div>

  <div class="collection-sidebar">
    <div class="widget-container">
      <section class="buzz-widget" data-component="BuzzWidget">
  <div class="widget-header">
    <h3><span>快讯</span></h3>
  </div>
  <ul class="buzz-widget-items js-buzz-widget-items">
          <li class="buzz-widget-items__item">
        <div class="time-and-title-box">
          <div class="title">
            <a class="js-click-buzz_url" data-href="" href="https://www.ifanr.com/digest/1593388" target="_blank" >
              <h2 class="buzz-widget-items__item__title js-clamp-lines--2">岚图知音华为智驾版售价疑曝光，内部消息直指 25 万元门槛</h2>
            </a>
          </div>
                                <div class="buzz-widget-items__item__meta"><span>12 小时前</span></div>
                  </div>
        <div class="buzz-widget-items__item__content">
          <div class="summary">
            <div class="summary-text">7月22日，有媒体报道称，岚图知音华为智驾版售价预计在25万元左右。

&nbsp;

据此前工信部披露的产品公告，岚图知音最高续航达901km，搭载800V高压平台，5C快充可实现15分钟补能515公里，标配CDC可调阻尼悬架，且按照“中欧双五星”安全标准开发设计。

&nbsp;

<img class="alignnone size-large wp-image-1593390" src="https://s3.ifanr.com/wp-content/uploads/2024/07/ZY-1-1024x683.jpg" alt="" width="1024" height="683" />

&nbsp;

今年4月，岚图与华为合作正式落地，双方将在智能座舱、智能驾驶领域展开合作，华为朋友圈中除了“四界”，再添“一音”——岚图知音！值得注意的是，和华为“四界”不同的是，岚图在智能化领域已处于领先地位，6月底，岚图已摘得武汉市相关部门联合授予的智能网联测试牌照，拥有L4级自动驾驶路测能力，该品牌技术已迈入厚积薄发的新阶段。

&nbsp;

岚图智驾以“合作”、“自研”两种方式齐头并进，一方面与华为、百度等顶级公司合作，强强联合，优势互补；另一方面持续探索，自主研发领先智驾科技，智能化水平已逐步进入第一梯队。随着岚图智驾、智舱领域的持续升级，其将为用户带来更加先进、便捷、舒适的用车体验，这是传统燃油车无法比拟的，岚图知音将拥有远超BBA的好开与舒适！

&nbsp;

不只是超越传统燃油车这么简单，岚图在三电技术领域的厚积薄发，就在知音车型上得以彰显。许多网友用Model Y和岚图知音做比较，数据分析可得，岚图知音有着更大的空间、更长的续航，以及更适合中国人开的智驾系统和智能座舱，并且外观设计更沉稳霸气。此前，岚图汽车CEO卢放表示，岚图知音在技术上具备全方位超越Model Y的能力，“我们有信心把它打造成这个价格段内最具竞争力的产品。”

&nbsp;

岚图知音是岚图品牌在今年的北京车展上发布Let's VOYAH“共岚图”出海战略后的首款全球车，岚图知音向全世界展示了中国汽车品牌的雄心与实力，相信新车不仅要在国内市场与Model Y一较高下，更要在更大的全球舞台上展现中国智造的魅力。

&nbsp;

近年来，包括岚图在内的中国高端新能源品牌，持续推动高端市场的电动化转型，现在随着智能化下半场的开启，高阶智能驾驶成为各大车企争夺的焦点。岚图与华为两大业界翘楚在智驾方面的强强合作，将共同推动我国的高阶智能驾驶进入快车道，推动技术革新，推动汽车行业向上，并带领行业在智驾领域的投入与探索逐步从“尝试”进入“应用”阶段，科技不是炫技，不是服人，而是要服务于人，最终要将更好的产品和服务带给用户。</div>
          </div>
          <div class="share">
                        <span>分享到</span>
            <i class="ifanrx ifanrx-weibo weibo-hover">
              <a class="weibo-link"
                 href="http://v.t.sina.com.cn/share/share.php?url=https://www.ifanr.com/digest/1593388/&title=岚图知音华为智驾版售价疑曝光，内部消息直指 25 万元门槛"
                 target="_blank" aria-label="岚图知音华为智驾版售价疑曝光，内部消息直指 25 万元门槛"></a>
            </i>
            <i class="ifanrx ifanrx-wechat js-wechat-hover">
            </i>
          </div>
        </div>

        <div class="js-wechat buzz-widget-items__item__qrcode">
          <div class="wechat-qrcode-left">
            <h3>分享至微信</h3>
            <p>使用微信扫码将网页分享到微信</p>
          </div>
          <div class="wechat-qrcode-right">
            <div class="js-qrcode" data-qrcode-class="buzz-qrcode__image" data-url="https://www.ifanr.com/digest/1593388"></div>
          </div>
        </div>

      </li>
          <li class="buzz-widget-items__item">
        <div class="time-and-title-box">
          <div class="title">
            <a class="js-click-buzz_url" data-href="" href="https://www.ifanr.com/digest/1593292" target="_blank" >
              <h2 class="buzz-widget-items__item__title js-clamp-lines--2">联想 YOGA 携手中国国家射击队官宣，助力运动健儿圆梦赛场</h2>
            </a>
          </div>
                                <div class="buzz-widget-items__item__meta"><span>14 小时前</span></div>
                  </div>
        <div class="buzz-widget-items__item__content">
          <div class="summary">
            <div class="summary-text">百步穿杨，沉稳致胜。从1984年传承至今，一段新的靶场传奇即将开启。作为PC行业的创新引领者，7月22日，联想YOGA正式宣布成为中国国家射击队AI PC合作伙伴。凭借澎湃性能输出、轻薄灵动形态与领先AI创新，联想将全程助力运动健儿稳健发挥，陪伴他们迎接全球瞩目的高光时刻。

&nbsp;

中国国家射击队作为世界射击领域的一支劲旅，在历届国际大赛上取得了优异的成绩，即将于塞纳河畔开幕的体育盛事中全项参赛。本次参赛阵容以“00后”为班底，年纪最小的队员仅有17岁。老将稳健、新秀拔尖，中国国家射击队这支传统强队，正在掀起一场“青春风暴”，以更昂扬的姿态迎接全新挑战。

&nbsp;

<img class="alignnone size-full wp-image-1593329" src="https://s3.ifanr.com/wp-content/uploads/2024/07/LX-1.jpg" alt="" width="1268" height="714" />

&nbsp;

在多年扎实积累与持续创新方面，联想与中国国家射击队不谋而合。联想PC不仅稳居全球市场份额第一，更紧握时代机遇以最全面AI PC产品组合确立了在AI PC领域的领跑地位，品牌价值持续彰显，品牌生命力不断焕发。

&nbsp;

作为全球PC领导厂商，联想希望依托联想YOGA系列产品全方位的优异表现，为中国国家射击队带来全面的智慧赋能。基于其强大稳健的性能表现与轻薄灵巧的外观设计，无论是日常训练，还是外出备赛，队伍都能轻松获得高效助力。同时，其澎湃的AI算力，未来将在科学训练、人才培养以及运营智能化等方面为中国国家射击队提供助力。

&nbsp;

<img class="alignnone size-full wp-image-1593330" src="https://s3.ifanr.com/wp-content/uploads/2024/07/LX-2.jpg" alt="" width="1144" height="823" />

&nbsp;

同时，联想YOGA也正为用户带来高效赋能与优质体验。以联想YOGA Book 9i AI元启为例，作为全球首款 AI 双屏翻转本，其以百变形态创造了无限可能，高效满足了都市白领的多样化需求。

&nbsp;

这款产品不仅机身轻巧、方便随身携带，而且其Dual PURESIGHT超感双屏的显示设计还可以为用户提供更为沉浸的大屏使用。瀑布屏一开，视野更大，仿佛亲临顶尖赛事现场。利用内嵌于产品上的个人智能体“小天”，用户通过简单的语音指令即可快速获取法国体育盛会的赛程信息，不错过每一场精彩赛事，不错过中国国家射击队运动健儿的精彩表现。

&nbsp;

<img class="alignnone size-full wp-image-1593331" src="https://s3.ifanr.com/wp-content/uploads/2024/07/LX-3.jpg" alt="" width="1267" height="704" />

&nbsp;

另一款产品联想YOGA Air 14s骁龙 AI元启，配置高通骁龙X Elite处理器，做到了全天动力、澎湃随行。革命性的技术突破，让这款产品成为业内首个打破续航、性能与轻薄便携“不可能三角”的笔记本。搭载的高通骁龙X Elite平台性能释放弹性极大，小巧机身也可以轻松拥有媲美桌面级电脑的性能水准。NPU算力高达每秒45万亿次，配合个人智能体“小天”，文档处理和图像生成的速度分别提升了22%和45%。

&nbsp;

此外，YOGA Air 14s骁龙AI元启的续航能力可长达24小时，解决了移动办公用户的“电量焦虑”。无论是在办公室、咖啡馆，还是在家中，都能享受到不间断的办公和观赛体验。

&nbsp;

联想YOGA在百变外观、极致工艺和 AI 创新等方面展现出的卓越水准，充分体现了联想深耕PC领域多年来所积聚的强大实力。IDC 最新发布的2024年第二季度 PC 市场报告认为，AI PC正为PC市场注入无限活力与潜力。在 AI PC 方面，联想正以最领先和全面的 AI PC 产品组合，不断满足企业、消费等不同细分领域的用户全场景的 AI 需求。

&nbsp;

今年正值中国国家射击队为祖国夺得首金40周年，联想也迎来40周岁的“生日”。今夏体育盛会期间，两支巅峰之师的强强联合，也将在竞技赛场上打造更多激动人心的荣耀时刻。</div>
          </div>
          <div class="share">
                        <span>分享到</span>
            <i class="ifanrx ifanrx-weibo weibo-hover">
              <a class="weibo-link"
                 href="http://v.t.sina.com.cn/share/share.php?url=https://www.ifanr.com/digest/1593292/&title=联想 YOGA 携手中国国家射击队官宣，助力运动健儿圆梦赛场"
                 target="_blank" aria-label="联想 YOGA 携手中国国家射击队官宣，助力运动健儿圆梦赛场"></a>
            </i>
            <i class="ifanrx ifanrx-wechat js-wechat-hover">
            </i>
          </div>
        </div>

        <div class="js-wechat buzz-widget-items__item__qrcode">
          <div class="wechat-qrcode-left">
            <h3>分享至微信</h3>
            <p>使用微信扫码将网页分享到微信</p>
          </div>
          <div class="wechat-qrcode-right">
            <div class="js-qrcode" data-qrcode-class="buzz-qrcode__image" data-url="https://www.ifanr.com/digest/1593292"></div>
          </div>
        </div>

      </li>
          <li class="buzz-widget-items__item">
        <div class="time-and-title-box">
          <div class="title">
            <a class="js-click-buzz_url" data-href="https://weibo.com/1642720480/5058887603978701" href="https://www.ifanr.com/digest/1593291" target="_blank" >
              <h2 class="buzz-widget-items__item__title js-clamp-lines--2">广州申办蔚来 NIO DAY 成功，NIO IN 2024 定档</h2>
            </a>
          </div>
                                <div class="buzz-widget-items__item__meta"><span>14 小时前</span></div>
                  </div>
        <div class="buzz-widget-items__item__content">
          <div class="summary">
            <div class="summary-text">
7 月 21 日晚，随着NIO Day 2024 城市申办投票结果出炉，广州最后半小时以微弱优势反超杭州，成为由蔚来社区用户共同决定的 NIO Day 2024 的举办城市。

接下来，NIO Day 2024 正式进入筹备执行阶段，今年 NIO DAY 将会在广州举办。

另一方面，蔚来 ​……</div>
          </div>
          <div class="share">
                        <a href="https://weibo.com/1642720480/5058887603978701" rel="nofollow noopener noreferrer" target="_blank"
               class="text-link"><i class="ifanrx ifanrx-link"></i><span>原文链接</span></a>
                        <span>分享到</span>
            <i class="ifanrx ifanrx-weibo weibo-hover">
              <a class="weibo-link"
                 href="http://v.t.sina.com.cn/share/share.php?url=https://www.ifanr.com/digest/1593291/&title=广州申办蔚来 NIO DAY 成功，NIO IN 2024 定档"
                 target="_blank" aria-label="广州申办蔚来 NIO DAY 成功，NIO IN 2024 定档"></a>
            </i>
            <i class="ifanrx ifanrx-wechat js-wechat-hover">
            </i>
          </div>
        </div>

        <div class="js-wechat buzz-widget-items__item__qrcode">
          <div class="wechat-qrcode-left">
            <h3>分享至微信</h3>
            <p>使用微信扫码将网页分享到微信</p>
          </div>
          <div class="wechat-qrcode-right">
            <div class="js-qrcode" data-qrcode-class="buzz-qrcode__image" data-url="https://www.ifanr.com/digest/1593291"></div>
          </div>
        </div>

      </li>
          <li class="buzz-widget-items__item">
        <div class="time-and-title-box">
          <div class="title">
            <a class="js-click-buzz_url" data-href="https://weibo.com/1642720480/5058635677305874" href="https://www.ifanr.com/digest/1593285" target="_blank" >
              <h2 class="buzz-widget-items__item__title js-clamp-lines--2">曝华为已启动三折叠屏手机相关项目研发</h2>
            </a>
          </div>
                                <div class="buzz-widget-items__item__meta"><span>19 小时前</span></div>
                  </div>
        <div class="buzz-widget-items__item__content">
          <div class="summary">
            <div class="summary-text">
据证券日报消息，近期有供应链消息显示，全球首个三折叠屏手机样机已出，融入华为多项新技术，量产排期约在今年第三、第四季度。

此前，华为常务董事、终端 BG 董事长、智能汽车解决方案 BU 董事长余承东日前也在直播时透露，华为下一代折叠屏历经 5 年研发 ​……</div>
          </div>
          <div class="share">
                        <a href="https://weibo.com/1642720480/5058635677305874" rel="nofollow noopener noreferrer" target="_blank"
               class="text-link"><i class="ifanrx ifanrx-link"></i><span>原文链接</span></a>
                        <span>分享到</span>
            <i class="ifanrx ifanrx-weibo weibo-hover">
              <a class="weibo-link"
                 href="http://v.t.sina.com.cn/share/share.php?url=https://www.ifanr.com/digest/1593285/&title=曝华为已启动三折叠屏手机相关项目研发"
                 target="_blank" aria-label="曝华为已启动三折叠屏手机相关项目研发"></a>
            </i>
            <i class="ifanrx ifanrx-wechat js-wechat-hover">
            </i>
          </div>
        </div>

        <div class="js-wechat buzz-widget-items__item__qrcode">
          <div class="wechat-qrcode-left">
            <h3>分享至微信</h3>
            <p>使用微信扫码将网页分享到微信</p>
          </div>
          <div class="wechat-qrcode-right">
            <div class="js-qrcode" data-qrcode-class="buzz-qrcode__image" data-url="https://www.ifanr.com/digest/1593285"></div>
          </div>
        </div>

      </li>
          <li class="buzz-widget-items__item">
        <div class="time-and-title-box">
          <div class="title">
            <a class="js-click-buzz_url" data-href="https://weibo.com/1642720480/5058640036500924" href="https://www.ifanr.com/digest/1593284" target="_blank" >
              <h2 class="buzz-widget-items__item__title js-clamp-lines--2">Google 或将与雷朋厂商开发 Gemini 智能眼镜</h2>
            </a>
          </div>
                                <div class="buzz-widget-items__item__meta"><span>19 小时前</span></div>
                  </div>
        <div class="buzz-widget-items__item__content">
          <div class="summary">
            <div class="summary-text">
据 The Verge 报道，Google 目前正在与开发了雷朋智能眼镜的 EssilorLuxottica 接触，计划携手开发 Gemini 智能眼镜。

此前，Meta 已与该公司合作开发了两代雷朋智能眼镜。另外，有多家媒体报道，Meta 计划斥资数十亿美元收购 EssilorLuxottica 约 5%  ​……</div>
          </div>
          <div class="share">
                        <a href="https://weibo.com/1642720480/5058640036500924" rel="nofollow noopener noreferrer" target="_blank"
               class="text-link"><i class="ifanrx ifanrx-link"></i><span>原文链接</span></a>
                        <span>分享到</span>
            <i class="ifanrx ifanrx-weibo weibo-hover">
              <a class="weibo-link"
                 href="http://v.t.sina.com.cn/share/share.php?url=https://www.ifanr.com/digest/1593284/&title=Google 或将与雷朋厂商开发 Gemini 智能眼镜"
                 target="_blank" aria-label="Google 或将与雷朋厂商开发 Gemini 智能眼镜"></a>
            </i>
            <i class="ifanrx ifanrx-wechat js-wechat-hover">
            </i>
          </div>
        </div>

        <div class="js-wechat buzz-widget-items__item__qrcode">
          <div class="wechat-qrcode-left">
            <h3>分享至微信</h3>
            <p>使用微信扫码将网页分享到微信</p>
          </div>
          <div class="wechat-qrcode-right">
            <div class="js-qrcode" data-qrcode-class="buzz-qrcode__image" data-url="https://www.ifanr.com/digest/1593284"></div>
          </div>
        </div>

      </li>
          <li class="buzz-widget-items__item">
        <div class="time-and-title-box">
          <div class="title">
            <a class="js-click-buzz_url" data-href="https://weibo.com/1642720480/5058641856565332" href="https://www.ifanr.com/digest/1593283" target="_blank" >
              <h2 class="buzz-widget-items__item__title js-clamp-lines--2">三星最大工会将在周一再次罢工</h2>
            </a>
          </div>
                                <div class="buzz-widget-items__item__meta"><span>19 小时前</span></div>
                  </div>
        <div class="buzz-widget-items__item__content">
          <div class="summary">
            <div class="summary-text">
据彭博社 7 月 21 日消息，尽管目前谈判仍在进行中，但三星最大工会决定，将于周一在三星位于首尔南部的芯片生产基地举行集会。

全国三星电子工会发言人在电话中表示，抗议游行将于上午举行，预计约 1500人参加。

本月早些时候，三星工会就有超过 6500 名工人举行 ​……</div>
          </div>
          <div class="share">
                        <a href="https://weibo.com/1642720480/5058641856565332" rel="nofollow noopener noreferrer" target="_blank"
               class="text-link"><i class="ifanrx ifanrx-link"></i><span>原文链接</span></a>
                        <span>分享到</span>
            <i class="ifanrx ifanrx-weibo weibo-hover">
              <a class="weibo-link"
                 href="http://v.t.sina.com.cn/share/share.php?url=https://www.ifanr.com/digest/1593283/&title=三星最大工会将在周一再次罢工"
                 target="_blank" aria-label="三星最大工会将在周一再次罢工"></a>
            </i>
            <i class="ifanrx ifanrx-wechat js-wechat-hover">
            </i>
          </div>
        </div>

        <div class="js-wechat buzz-widget-items__item__qrcode">
          <div class="wechat-qrcode-left">
            <h3>分享至微信</h3>
            <p>使用微信扫码将网页分享到微信</p>
          </div>
          <div class="wechat-qrcode-right">
            <div class="js-qrcode" data-qrcode-class="buzz-qrcode__image" data-url="https://www.ifanr.com/digest/1593283"></div>
          </div>
        </div>

      </li>
          <li class="buzz-widget-items__item">
        <div class="time-and-title-box">
          <div class="title">
            <a class="js-click-buzz_url" data-href="https://weibo.com/1642720480/5058644058576688" href="https://www.ifanr.com/digest/1593282" target="_blank" >
              <h2 class="buzz-widget-items__item__title js-clamp-lines--2">传广汽丰田将退出价格战，内部人士：官方从未说过退出价格战</h2>
            </a>
          </div>
                                <div class="buzz-widget-items__item__meta"><span>19 小时前</span></div>
                  </div>
        <div class="buzz-widget-items__item__content">
          <div class="summary">
            <div class="summary-text">
据第一财经报道，近期有消息称，广汽丰田将跟进宝马等豪华燃油品牌退出价格战的策略。

第一财经就此事求证广汽丰田相关人士，对方回复「官方从未说过退出价格战，意外被卷入宝马此次事件，广汽丰田车型还是会有优惠价格，只是优惠价格 ​……</div>
          </div>
          <div class="share">
                        <a href="https://weibo.com/1642720480/5058644058576688" rel="nofollow noopener noreferrer" target="_blank"
               class="text-link"><i class="ifanrx ifanrx-link"></i><span>原文链接</span></a>
                        <span>分享到</span>
            <i class="ifanrx ifanrx-weibo weibo-hover">
              <a class="weibo-link"
                 href="http://v.t.sina.com.cn/share/share.php?url=https://www.ifanr.com/digest/1593282/&title=传广汽丰田将退出价格战，内部人士：官方从未说过退出价格战"
                 target="_blank" aria-label="传广汽丰田将退出价格战，内部人士：官方从未说过退出价格战"></a>
            </i>
            <i class="ifanrx ifanrx-wechat js-wechat-hover">
            </i>
          </div>
        </div>

        <div class="js-wechat buzz-widget-items__item__qrcode">
          <div class="wechat-qrcode-left">
            <h3>分享至微信</h3>
            <p>使用微信扫码将网页分享到微信</p>
          </div>
          <div class="wechat-qrcode-right">
            <div class="js-qrcode" data-qrcode-class="buzz-qrcode__image" data-url="https://www.ifanr.com/digest/1593282"></div>
          </div>
        </div>

      </li>
          <li class="buzz-widget-items__item">
        <div class="time-and-title-box">
          <div class="title">
            <a class="js-click-buzz_url" data-href="https://weibo.com/1642720480/5058647954033801" href="https://www.ifanr.com/digest/1593281" target="_blank" >
              <h2 class="buzz-widget-items__item__title js-clamp-lines--2">网传 WPS 使用用户文档被用作 AI 训练，官方否认</h2>
            </a>
          </div>
                                <div class="buzz-widget-items__item__meta"><span>19 小时前</span></div>
                  </div>
        <div class="buzz-widget-items__item__content">
          <div class="summary">
            <div class="summary-text">
近期，有网友在社交平台发文，称 WPS 将自己的文章改版后喂给 AI ，还有网友表示自己未发布的小说内容被 WPS 喂给抖音豆包 AI。

7 月 21 日，WPS 官方就此事做出回应，称「我们第一时间进行了严格排查及用户沟通，相关问题完全失实。」

WPS 表示 ​……</div>
          </div>
          <div class="share">
                        <a href="https://weibo.com/1642720480/5058647954033801" rel="nofollow noopener noreferrer" target="_blank"
               class="text-link"><i class="ifanrx ifanrx-link"></i><span>原文链接</span></a>
                        <span>分享到</span>
            <i class="ifanrx ifanrx-weibo weibo-hover">
              <a class="weibo-link"
                 href="http://v.t.sina.com.cn/share/share.php?url=https://www.ifanr.com/digest/1593281/&title=网传 WPS 使用用户文档被用作 AI 训练，官方否认"
                 target="_blank" aria-label="网传 WPS 使用用户文档被用作 AI 训练，官方否认"></a>
            </i>
            <i class="ifanrx ifanrx-wechat js-wechat-hover">
            </i>
          </div>
        </div>

        <div class="js-wechat buzz-widget-items__item__qrcode">
          <div class="wechat-qrcode-left">
            <h3>分享至微信</h3>
            <p>使用微信扫码将网页分享到微信</p>
          </div>
          <div class="wechat-qrcode-right">
            <div class="js-qrcode" data-qrcode-class="buzz-qrcode__image" data-url="https://www.ifanr.com/digest/1593281"></div>
          </div>
        </div>

      </li>
      </ul>
  <div class="clear"></div>
    <div class="buzz-widget-url_buzz">
          <a  href="https://www.ifanr.com/buzz/1382781">
        <span>深康佳 A 子公司以 6.37 亿元竞得 479 亩项目用地</span>
      </a>
          <a  href="https://www.ifanr.com/buzz/1322727">
        <span>复制错误和自私基因，什么是生命的本质？</span>
      </a>
          <a  href="https://www.ifanr.com/buzz/1320640">
        <span>从科学转向哲学的波兰尼，如何理解知识和人？</span>
      </a>
          <a  href="https://www.ifanr.com/buzz/1316605">
        <span>关于两栖爬行动物，为什么我们会对它们又爱又恨？</span>
      </a>
          <a  href="https://www.ifanr.com/buzz/1315192">
        <span>罗伯特·谢克里的小说集，他被看作科幻领域的幽默宗师</span>
      </a>
          <a  href="https://www.ifanr.com/buzz/1314120">
        <span>数学家哈代的辩白，什么是数学中的美学？</span>
      </a>
          <a  href="https://www.ifanr.com/buzz/1312319">
        <span>有朝一日，人类可以完全消灭流行病吗？</span>
      </a>
          <a  href="https://www.ifanr.com/buzz/1312317">
        <span>比尔·盖茨推荐的书，“直面科技行业最紧迫的争议性问题”</span>
      </a>
      </div>
    <div class="buzz-footer">
    <a href="https://www.ifanr.com/digest/" target="_blank"><span class="load-others-btn" ga-bind="click"
                                                    ga-category="LiveArticlePage_List" ga-action="LoadMore"
                                                    ga-label="LoadMoreButton">查看更多</span></a>
  </div>
</section>
    </div>

    <div class="ads-container">
          </div>
  </div>

</div>

      </div>
    </div>
  </div>
  <div style="visibility: hidden; height: 0;">
    <a rel="prev" href="https://www.ifanr.com/seo-page/1">prev</a>
    <a rel="next" href="https://www.ifanr.com/seo-page/2">next</a>
  </div>

          <div class="u-clearfix footer-content"></div>
<div class="ifanr-footer">
  <div class="c-footer" id="footer">
    <div class="o-wrapper">
      <div class="u-clearfix"></div>
      <div class="c-footer__logo">
      </div>
      <div class="c-footer__container">
        <div class="c-footer__navigation">
          <div>爱范儿，关注明日产品的数字潮牌</div>
          <a href="https://www.ifanr.com" ga-bind="click" ga-category="Footer" ga-action="ClickIfanr"
             ga-label="ifanrButton">爱范儿</a>
          <a href="/app/" ga-bind="click" ga-category="Footer" ga-action="ClickAppSo" ga-label="AppSoButton"> AppSo </a>
          <a href="/category/intelligentcar" ga-bind="click" ga-category="Footer" ga-action="ClickTime2Drive"
             ga-label="Time2DriveButton">董车会</a>
          <a href="https://minapp.com/miniapp/" target="_blank" ga-bind="click" ga-category="Footer"
             ga-action="ClickMinapp" ga-label="MinappButton">知晓程序</a>
        </div>
        <div class="c-footer__navigation c-footer-nav-aboutus">
          <div>关于爱范儿</div>
          <a href="https://www.ifanr.com/about/our-team/" ga-bind="click" ga-category="Footer" ga-action="ClickAboutWe"
             ga-label="AboutWeButton">关于我们</a>
          <a href="https://www.ifanr.com/shequguize/" ga-bind="click" ga-category="Footer" ga-action="ClickCommunityRegulations"
             ga-label="CommunityRegulationsButton">社区规则</a>
          <a href="https://www.ifanr.com/privacypolicy/" ga-bind="click" ga-category="Footer" ga-action="ClickPrivacy-policy"
             ga-label="Privacy-policyButton">隐私策略</a>
          <a href="https://www.lagou.com/gongsi/j25623.html" target="_blank" ga-bind="click" ga-category="Footer" ga-action="ClickJoinus"
             ga-label="Join us Button">加入我们</a>
          <a href="https://www.ifanr.com/adinfo/" ga-bind="click" ga-category="Footer" ga-action="ClickCooperation"
             ga-label="CooperationButton">商务合作</a>
        </div>
        <div class="c-footer__navigation c-footer__navigation--inline-nav">
          <div>合作伙伴</div>
          <div class="c-footer-sponsors">
            <a href="https://cloud.minapp.com/" target="_blank" class="c-footer-sponsors_item" ga-bind="click"
               ga-category="Footer" ga-action="ClickCloudMinapp" ga-label="CloudMinappButton">
              <div class="c-footer-sponsors_zhixiaoyun"></div>
            </a>
            <a href="https://aws.amazon.com/what-is-cloud-computing" rel="nofollow noopener noreferrer" target="_blank"
               class="c-footer-sponsors_item"
               aria-label="爱范儿合作伙伴 Amazon"
               ga-bind="click" ga-category="Footer" ga-action="ClickAmazon" ga-label="AmazonButton">
              <div class="c-footer-sponsors_amazon"></div>
            </a>
          </div>
        </div>
        <div class="u-clearfix"></div>
        <div class="c-footer__copyright">
          <div class="c-footer__contacts c-contacts">
            <a class="c-contacts__icon c-contacts__icon--weibo" href="https://weibo.com/u/1642720480?tabtype=feed" target="_blank"
               rel="nofollow noopener noreferrer" aria-label="爱范儿官方微博"></a>
            <a class="c-contacts__icon c-contacts__icon--twitter" href="https://twitter.com/ifanr"
               rel="nofollow noopener noreferrer" target="_blank" aria-label="爱范儿官方 Twitter"></a>
            <a class="c-contacts__icon c-contacts__icon--xiaohongshu" href="https://www.xiaohongshu.com/user/profile/60dc0bae000000002002d9fd"
               rel="nofollow noopener noreferrer" target="_blank" aria-label="爱范儿官方小红书"></a>
            <a class="c-contacts__icon c-contacts__icon--bilibili" href="https://space.bilibili.com/12351332?spm_id_from=333.337.0.0"
               rel="nofollow noopener noreferrer" target="_blank" aria-label="爱范儿官方哔哩哔哩"></a>
            <a class="c-contacts__icon c-contacts__icon--douyin" href="https://www.douyin.com/user/MS4wLjABAAAAZY-Gty7wfG99FzGnseJLC4SlcBpJOSXNOaaj6Fz9QwQ"
               rel="nofollow noopener noreferrer" target="_blank" aria-label="爱范儿官方抖音"></a>
            <a class="c-contacts__icon c-contacts__icon--toutiao" href="https://www.toutiao.com/c/user/token/MS4wLjABAAAAQkBPIHsXri8lTUIQNFb4uEaiM7YLWh-FdUCK7pb4FTg/?source=mine_profile"
               rel="nofollow noopener noreferrer" target="_blank" aria-label="爱范儿官方今日头条"></a>
            <a class="c-contacts__icon c-contacts__icon--baidubaijiahao" href="https://author.baidu.com/home?from=bjh_article&app_id=1543625795951172"
               rel="nofollow noopener noreferrer" target="_blank" aria-label="爱范儿官方百家号"></a>
            <a class="c-contacts__icon c-contacts__icon--youtube" href="https://www.youtube.com/@ifanrvideo6692"
               rel="nofollow noopener noreferrer" target="_blank" aria-label="爱范儿官方 Youtube"></a>
          </div>
          <div class="u-text-right">
            <a href="http://beian.miit.gov.cn" target="_blank"
              rel="nofollow noopener noreferrer" class="js-beian">粤ICP备18066688号-2</a>
            <a href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=44010602006618"
              rel="nofollow noopener noreferrer" target="_blank" class="row2 js-gongwanganbei"><i></i>粤公网安备44010602006618号</a>
          </div>

          <div class="u-text">
            <p class="u-text-left">版权所有 &copy; <span class="js-company">广州利沃致远投资管理合伙企业（有限合伙）</span> 2008 - 2023。以商业目的使用爱范儿网站内容需获许可。非商业目的使用授权遵循 <a
                  href="https://creativecommons.org/licenses/by-nc/4.0/">CC BY-NC 4.0</a>。</p>
            <p class="u-text-english">All content is made available under the CC BY-NC 4.0 for non-commercial use. Commercial use of this content is prohibited without explicit permission. </p>
            <div class="u-text-design_studio">Designed by
              <div class="design-studio"><p class="design-studio_name"><span>if</span>
                  <span>Design Studio.</span></p>
                <div class="c-design-studio_card c-popup-qrcode">
                  <div class="c-popup-qrcode__title">关注 if Design Studio.</div>
                  <img class="js-qrcode c-popup-qrcode__image" src="https://images.ifanr.cn/wp-content/themes/ifanr-5.0-pc/static/images/ifanr-desing-studio__qrcode.jpg" alt="if Design Studio. 微信公众号" />
                  <div class="c-popup-qrcode__hint">微信扫码关注公众号 if Design Studio.</div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
    
    <div class="c-goto-top" data-component="VisibilityOnScroll"
     data-visibility-top-bound="1200" data-visibility-bottom-bound="#footer" style="visibility: hidden;">
  <a ga-bind="click" ga-action="ClickReport" ga-category="Floating_Action_Button" ga-label="ReportButton" href="https://www.ifanr.com/about/contribute/" class="c-goto-top-item c-goto-top-item--contribute c-goto-top-link" aria-label="内容投稿"></a>
  <div ga-bind="hover" ga-action="HoverDownloadApp" ga-category="Floating_Action_Button" ga-label="DownloadApp Button" class="c-goto-top-item c-goto-top-item--app">
    <div class="c-goto-top__app__container c-goto-top-app">
      <img src="https://images.ifanr.cn/wp-content/themes/ifanr-5.0-pc/static/images/ifanr-app.png" alt="" class="c-goto-top__app__qrcode">
      <div class="c-goto-top-app__intro">
        <p class="c-goto-app-intro__title">爱范儿 App</p>
        <p class="c-goto-app-intro__desc">爱范儿,让未来触手可及</p>
      </div>
    </div>
  </div>
  <div ga-bind="hover" ga-action="HoverQRCard" ga-category="Floating_Action_Button" ga-label="QRCordButton" class="c-goto-top-item c-goto-top-item--qrcodes">
    <div class="c-goto-top__qrcodes__container c-goto-top-qrcodes" data-component="Tab">
      <div class="c-goto-top-qrcodes-nav" data-component="AwesomeUnderline">
        <div class="c-goto-top-qrcodes__tab">
          <span class="c-goto-top-qrcodes-header" as-decorated data-tab="ifanr" data-default-tab>爱范儿</span>
        </div>
        <div class="c-goto-top-qrcodes__tab">
          <span class="c-goto-top-qrcodes-header" as-decorated data-tab="appso">AppSo</span>
        </div>
        <div class="c-goto-top-qrcodes__tab">
          <span class="c-goto-top-qrcodes-header" as-decorated data-tab="coolbuy">玩物志</span>
        </div>
        <div class="c-goto-top-qrcodes__tab">
          <span class="c-goto-top-qrcodes-header" as-decorated data-tab="zhixiaoyun">知晓云</span>
        </div>
        <div class="c-goto-top-qrcodes__tab" style="min-width:60px">
          <span class="c-goto-top-qrcodes-header" as-decorated data-tab="minapp">知晓程序</span>
        </div>
        <div class="c-goto-top-qrcodes__line" as-underline></div>
      </div>
      <div>
        <div class="c-goto-top-qrcodes-body js-goto-top-qrcode" data-tab-target="ifanr">
          <img src="https://images.ifanr.cn/wp-content/themes/ifanr-5.0-pc/static/images/ifanrqrcode.jpg" alt="Ifanr QR Code" class="c-goto-top-qrcodes-body__image">
          <p class="c-goto-top-qrcodes-body__text">关注爱范儿微信号，连接热爱，关注这个时代最好的产品。</p>
        </div>
        <div class="c-goto-top-qrcodes-body js-goto-top-qrcode" data-tab-target="appso">
          <img src="https://images.ifanr.cn/wp-content/themes/ifanr-5.0-pc/static/images/appsoqrcode.jpg" alt="AppSo QR Code" class="c-goto-top-qrcodes-body__image">
          <p class="c-goto-top-qrcodes-body__text">想让你的手机好用到哭？关注这个号就够了。</p>
        </div>
        <div class="c-goto-top-qrcodes-body js-goto-top-qrcode" data-tab-target="coolbuy">
          <img src="https://images.ifanr.cn/wp-content/themes/ifanr-5.0-pc/static/images/coolbuyqrcode.jpg" alt="CoolBuy QR Code" class="c-goto-top-qrcodes-body__image">
          <p class="c-goto-top-qrcodes-body__text">关注玩物志微信号，就是让你乱花钱。</p>
        </div>
        <div class="c-goto-top-qrcodes-body js-goto-top-qrcode" data-tab-target="zhixiaoyun">
          <img src="https://images.ifanr.cn/wp-content/themes/ifanr-5.0-pc/static/images/zhixiaoyunqrcode.jpg" alt="CoolBuy QR Code" class="c-goto-top-qrcodes-body__image">
          <p class="c-goto-top-qrcodes-body__text">小程序开发快人一步。</p>
        </div>
        <div class="c-goto-top-qrcodes-body js-goto-top-qrcode" data-tab-target="minapp">
          <img src="https://images.ifanr.cn/wp-content/themes/ifanr-5.0-pc/static/images/minappqrcode.jpg" alt="CoolBuy QR Code" class="c-goto-top-qrcodes-body__image">
          <p class="c-goto-top-qrcodes-body__text">最好的微信新商业服务平台。</p>
        </div>
      </div>
    </div>
  </div>
  <div class="c-goto-top-item c-goto-top-item--go" ga-bind="click" ga-category="Floating_Action_Button" ga-action="ClickTop" ga-label="TopButton" data-component="GotoTop"></div>
</div>
  </div>
  


<script type='text/javascript' src='//images.ifanr.cn/wp-content/themes/ifanr-5.0-pc/static/dist/app-2b500fd34a.min.js?ver=4.9.9'></script>
      <![if gte IE 9]>
    <script src="//cdn.ifanr.cn/vendor/raven/3.22.4/raven.min.js"></script>
    <script type="text/javascript">
      Raven.config('https://d19b2d48c27542a2af4f6ff35063ebaf@sentry.io/41363', {}).install();
      window.onerror = function(msg, src, lineNo, columnNo, err) {
        var string = msg.toLowerCase();
        if (string.indexOf(substring) > -1) {
          return;
        }
          Raven.captureException(err)
      };
    </script>
    <![endif]>
    <script type="text/javascript">
  _atrk_opts = { atrk_acct:"M/54m1aU8KL352", domain:"ifanr.com",dynamic: true};
  (function() { var as = document.createElement('script'); as.type = 'text/javascript'; as.async = true; as.src = "https://d31qbv1cthcecs.cloudfront.net/atrk.js"; var s = document.getElementsByTagName('script')[0];s.parentNode.insertBefore(as, s); })();
  </script>
  <noscript><img src="https://d5nxst8fruw4z.cloudfront.net/atrk.gif?account=M/54m1aU8KL352" style="display:none" height="1" width="1" alt="" /></noscript>
  <script type="text/javascript">
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
      (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
      m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','//analytics.ifanrusercontent.com/analytics.js','ga');
  </script>
  <script>
    (function(){
      var bp = document.createElement('script');
      var curProtocol = window.location.protocol.split(':')[0];
      if (curProtocol === 'https') {
        bp.src = 'https://zz.bdstatic.com/linksubmit/push.js';
      } else {
        bp.src = 'http://push.zhanzhang.baidu.com/push.js';
      }
      var s = document.getElementsByTagName("script")[0];
      s.parentNode.insertBefore(bp, s);
    })();
  </script>
 
    
    </body>
</html>

<!-- t:0.48181, h:'2024-07-23T01:22:10+08:00 28800', H:'i-ifanrcom-1000' --><!--
Whitelist mode: 
Remote address: 127.0.0.2
Request REQUEST_URI: /
Rebuilt REQUEST_URI: /
Rebuilt QUERY_STRING: 

Cacheable: 1
Cache key: 48d074bc57e13b0b2be53777e13e8c99e7c45965
Cache namespace: da39a3ee5e6b4b0d3255bfef95601890afd80709
Cache hit: 1
Cache hits: 5
Cache mtime: 1721668930.3743
Cache age: 91.421451091766

Memory usage: 4 MiB
Peak memory usage: 4 MiB
-->
<!-- t:0.01431, h:'2024-07-22T17:23:41+00:00 0', H:'i-ifanrcom-1001' -->
''';
