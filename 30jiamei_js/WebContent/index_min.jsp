<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="shopping.DAO.*,shopping.Class.*, java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>jQuery zA7n.js Accordion Slider Demo</title>
        <!--彈出視窗程式-->
        <style>
            body{font:12px/1.2 Verdana, sans-serif; padding:0 10px;}
            a:link, a:visited{text-decoration:none; color:#416CE5; border-bottom:1px solid #416CE5;}
            h2{font-size:13px; margin:15px 0 0 0;}
        </style>
        <link rel="stylesheet" href="colorbox.css" />
        <script src="js/jquery-1.11.3.min.js"></script>
        <script src="js/jquery.colorbox.js"></script>                
        <script>
            $(document).ready(function() {
                //Examples of how to assign the Colorbox event to elements
                $(".group1").colorbox({rel: 'group1'});
                $(".group2").colorbox({rel: 'group2', transition: "fade"});
                $(".group3").colorbox({rel: 'group3', transition: "none", width: "75%", height: "75%"});
                $(".group4").colorbox({rel: 'group4', slideshow: true});
                $(".ajax").colorbox();
                $(".youtube").colorbox({iframe: true, innerWidth: 640, innerHeight: 390});
                $(".vimeo").colorbox({iframe: true, innerWidth: 500, innerHeight: 409});
                $(".iframe").colorbox({iframe: true, width: "80%", height: "80%"});
                $(".inline").colorbox({inline: true, width: "50%"});
                $(".callbacks").colorbox({
                    onOpen: function() {
                        alert('onOpen: colorbox is about to open');
                    },
                    onLoad: function() {
                        alert('onLoad: colorbox has started to load the targeted content');
                    },
                    onComplete: function() {
                        alert('onComplete: colorbox has displayed the loaded content');
                    },
                    onCleanup: function() {
                        alert('onCleanup: colorbox has begun the close process');
                    },
                    onClosed: function() {
                        alert('onClosed: colorbox has completely closed');
                    }
                });

                $('.non-retina').colorbox({rel: 'group5', transition: 'none'})
                $('.retina').colorbox({rel: 'group5', transition: 'none', retinaImage: true, retinaUrl: true});

                //Example of preserving a JavaScript event for inline calls.
                $("#click").click(function() {
                    $('#click').css({"background-color": "#ff0", "color": "#fff", "cursor": "inherit"}).text("Open this window again and this message will still be here.");
                    return false;
                });
            });
        </script>
        <!--彈出視窗程式結尾-->


        <link href="css/jquerysctipttop.css" rel="stylesheet" type="text/css">
        <link href="css/index.css" rel="stylesheet">
        <!-- 分頁 -->
        <style type="text/css">
            #wrapper {
                width: 960px;
                height: 700px;
                background-color: #FF9999;
                margin-left:auto; 
                margin-right:auto; 
            }	
            #header {
                width: 960px;
                height: 100px;
                background-color: #FF9900;
                margin-left:auto; 
                margin-right:auto; 
            }

            #content {
                width: 960px;
                height: 700px;
                background-image:url(images/back1.jpg);
                float: right;	
            }

        </style>
        <!-- 分頁尾 -->
    </head>
    <body>
        <div id="wrapper">
            <div id="header">
                <div class="page" id="page">
                    <div class="accordion" id="zA7n">
                        <ul class="accordion__ul">
                            <li class="accordion__li"><a href="index_min2.jsp"><img class="accordion__img" src="images/menu/1.jpg" alt="Image Alt" /></a></li>
                            <li class="accordion__li"><a href="ProductList_all.jsp" class='iframe'><img class="accordion__img" src="images/menu/2.jpg" alt="Image Alt" /></a></li>
                            <li class="accordion__li"><a href="page/mei.html" class='iframe'><img class="accordion__img" src="images/menu/3.jpg" alt="Image Alt" /></a></li>
                            <li class="accordion__li"><a href="ProductList_all.jsp" class='iframe'><img class="accordion__img" src="images/menu/4.jpg" alt="Image Alt" /></a></li>
                            <li class="accordion__li"><a href="page/memberAdd.html" class='iframe'><img class="accordion__img" src="images/menu/5.jpg" alt="Image Alt" /></a></li>
                        </ul>
                    </div>
                </div>
            </div>
            
            
            <div id="content">
               
               
               
               
               
               
               
            </div>
        </div>
        
        
        
        <!-- This contains the hidden content for inline calls -->
        <div style='display:none'>
            <div id='inline_content' style='padding:10px; background:#fff;'>
                <p><strong>This content comes from a hidden element on this page.</strong></p>
                <p>The inline option preserves bound JavaScript events and changes, and it puts the content back where it came from when it is closed.</p>
                <p><a id="click" href="#" style='padding:5px; background:#ccc;'>Click me, it will be preserved!</a></p>

                <p><strong>If you try to open a new Colorbox while it is already open, it will update itself with the new content.</strong></p>
                <p>Updating Content Example:<br />
                    <a class="ajax" href="../content/ajax.html">Click here to load new content</a></p>
            </div>
        </div>


        <!--<script src="js/jquerymin.js"></script>-->

        <script src="js/limit.js"></script>
        <script src="js/zA7n.js"></script>
        <script>
            $(window).load(function() {
                $('#zA7n').zA7n({});
            });
        </script><script type="text/javascript">

            var _gaq = _gaq || [];
            _gaq.push(['_setAccount', 'UA-36251023-1']);
            _gaq.push(['_setDomainName', 'jqueryscript.net']);
            _gaq.push(['_trackPageview']);

            (function() {
                var ga = document.createElement('script');
                ga.type = 'text/javascript';
                ga.async = true;
                ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
                var s = document.getElementsByTagName('script')[0];
                s.parentNode.insertBefore(ga, s);
            })();
        </script>

    </body>
</html>
