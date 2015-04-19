<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <title>图片预览</title>
    <style>
        body {
            font: 12px/1.2 Verdana, sans-serif;
            padding: 0 10px;
        }

        a:link, a:visited {
            text-decoration: none;
            color: #416CE5;
            border-bottom: 1px solid #416CE5;
        }

        h2 {
            font-size: 13px;
            margin: 15px 0 0 0;
        }
    </style>
    <link rel="stylesheet" href="../css/colorbox.css"/>
    <script src="../js/jquery-1.8.3.min.js"></script>
    <script src="../js/jquery.colorbox.js"></script>
    <script>
        $(document).ready(function () {
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
                onOpen: function () {
                    alert('onOpen: 打开时');
                },
                onLoad: function () {
                    alert('onLoad: 加载时');
                },
                onComplete: function () {
                    alert('onComplete: 加载完毕时');
                },
                onCleanup: function () {
                    alert('onCleanup: 退出时');
                },
                onClosed: function () {
                    alert('onClosed: 关闭后');
                }
            });

            $('.non-retina').colorbox({rel: 'group5', transition: 'none'})
            $('.retina').colorbox({rel: 'group5', transition: 'none', retinaImage: true, retinaUrl: true});

            $("#click").click(function () {
                $('#click').css({"background-color": "#f00", "color": "#fff", "cursor": "inherit"}).text("Open this window again and this message will still be here.");
                return false;
            });
        });
    </script>
</head>
<body>
<h1>Colorbox Demonstration</h1>

<h2>弹出式</h2>

<p><a class="group1" href="../attachment/image/ohoopee1.jpg" title="Me and my grandfather on the Ohoopee.">Grouped Photo 1</a></p>

<p><a class="group1" href="../attachment/image/ohoopee2.jpg" title="On the Ohoopee as a child">Grouped Photo 2</a></p>

<p><a class="group1" href="../attachment/image/ohoopee3.jpg" title="On the Ohoopee as an adult">Grouped Photo 3</a></p>

<h2>渐变式</h2>

<p><a class="group2" href="../attachment/image/ohoopee1.jpg" title="Me and my grandfather on the Ohoopee">Grouped Photo 1</a></p>

<p><a class="group2" href="../attachment/image/ohoopee2.jpg" title="On the Ohoopee as a child">Grouped Photo 2</a></p>

<p><a class="group2" href="../attachment/image/ohoopee3.jpg" title="On the Ohoopee as an adult">Grouped Photo 3</a></p>

<h2>按比例显示(75% of screen size)</h2>

<p><a class="group3" href="../attachment/image/ohoopee1.jpg" title="Me and my grandfather on the Ohoopee.">Grouped Photo 1</a></p>

<p><a class="group3" href="../attachment/image/ohoopee2.jpg" title="On the Ohoopee as a child">Grouped Photo 2</a></p>

<p><a class="group3" href="../attachment/image/ohoopee3.jpg" title="On the Ohoopee as an adult">Grouped Photo 3</a></p>

<h2>自动播放</h2>

<p><a class="group4" href="../attachment/image/ohoopee1.jpg" title="Me and my grandfather on the Ohoopee.">Grouped Photo 1</a></p>

<p><a class="group4" href="../attachment/image/ohoopee2.jpg" title="On the Ohoopee as a child">Grouped Photo 2</a></p>

<p><a class="group4" href="../attachment/image/ohoopee3.jpg" title="On the Ohoopee as an adult">Grouped Photo 3</a></p>

<h2>Other attachment/image Types</h2>

<p><a class='ajax' href="../attachment/image/ajax.html" title="ajax">外部html文件</a></p>

<p><a class='youtube' href="../attachment/video/testmp4.mp4">youtube</a></p>

<p><a class='vimeo' href="../attachment/video/testmp4.mp4">vimeo</a></p>

<p><a class='iframe' href="../attachment/video/testmp4.mp4">iframe</a></p>

<p><a class='inline' href="#inline_content">inline</a></p>

<h2>使用回调演示</h2>

<p><a class='callbacks' href="../attachment/image/marylou.jpg" title="Marylou on Cumberland Island">Example with alerts</a>. Callbacks and event-hooks allow users to extend functionality without having to rewrite parts
    of the
    plugin.</p>


<h2>Retina Images</h2>

<p><a class="retina" href="../attachment/image/daisy.jpg" title="Retina">Retina</a></p>

<p><a class="non-retina" href="../attachment/image/daisy.jpg" title="Non-Retina">Non-Retina</a></p>

<!-- This contains the hidden attachment/image for inline calls -->
<div style='display:none'>
    <div id='inline_content' style='padding:10px; background:#fff;'>
        <p><strong>This content comes from a hidden element on this page.</strong></p>

        <p>The inline option preserves bound JavaScript events and changes, and it puts the content back where it came from when it is closed.</p>

        <p><a id="click" href="#" style='padding:5px; background:#ccc;'>Click me, it will be preserved!</a></p>

        <p><strong>If you try to open a new Colorbox while it is already open, it will update itself with the new content.</strong></p>

        <p>弹出外部html文件<br/>
            <a class="ajax" href="../attachment/image/ajax.html">Click here to load new content</a></p>
    </div>
</div>
</body>
</html>