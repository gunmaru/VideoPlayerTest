<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShowPlayer2.aspx.cs" Inherits="ShowPlayer2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>modal</title>

    <style>
.modal_wrap{
        display: none;
        width: 800px;
        height: 500px;
        position: absolute;
        top:50%;
        left: 50%;
        margin: -250px 0 0 -250px;
        background:#eee;
        z-index: 2;
    }
    .black_bg{
        display: none;
        position: absolute;
        content: "";
        width: 100%;
        height: 100%;
        background-color:rgba(0, 0,0, 0.5);
        top:0;
        left: 0;
        z-index: 1;
    }
    .modal_close{
        width: 26px;
        height: 26px;
        position: absolute;
        top: -30px;
        right: 0;
    }
    .modal_close> a{
        display: block;
        width: 100%;
        height: 100%;
        background:url(https://img.icons8.com/metro/26/000000/close-window.png);
        text-indent: -9999px;
    }


</style>

<script type="text/javascript">
  <link rel="stylesheet" type="text/css" href="/path/to/modal-video.min.css">
                <script type="text/javascript" src="http://code.jquery.com/jquery-2.2.4.min.js"></script>


        <script src="https://f.vimeocdn.com/js/froogaloop2.min.js"></script>

<%--        <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
--%>

        <script src="https://player.vimeo.com/api/player.js"></script>

</script>
<script>
    window.onload = function () {

        function onClick() {
            document.querySelector('.modal_wrap').style.display = 'block';
            document.querySelector('.black_bg').style.display = 'block';
        }
        function offClick() {
            document.querySelector('.modal_wrap').style.display = 'none';
            document.querySelector('.black_bg').style.display = 'none';
        }

        document.getElementById('modal_btn').addEventListener('click', onClick);
        document.querySelector('.modal_close').addEventListener('click', offClick);

    };
    457558347


</script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="root">
         <img src="img/Lec1.JPG" id="modal_btn" alt="" href="#"  />
        <div class="black_bg"></div>
        <div class="modal_wrap">
        <div class="modal_close"><a href="#">close</a></div>
        <div>
           <iframe id="player1"  src="https://player.vimeo.com/video/457558347"  ></iframe>
       </div>
        <div>



    </div>
    </form>
</body>
</html>
