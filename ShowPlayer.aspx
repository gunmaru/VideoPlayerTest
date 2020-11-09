<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShowPlayer.aspx.cs" Inherits="ShowPlayer" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <link rel="stylesheet" type="text/css" href="/path/to/modal-video.min.css">
                <script type="text/javascript" src="http://code.jquery.com/jquery-2.2.4.min.js"></script>


        <script src="https://f.vimeocdn.com/js/froogaloop2.min.js"></script>

<%--        <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
--%>

        <script src="https://player.vimeo.com/api/player.js"></script>
        <script type="text/javascript">

            window.addEventListener("beforeunload", function (e) {
                //e.preventDefault();
                //e.returnValue = '';

                Close_Event();

                var confirmationMessage = "Are you sure you want to leave this page without placing the order ?";
                (e || window.event).returnValue = confirmationMessage;
                return confirmationMessage;

            });
            

//            var iframe = document.querySelector('iframe');
//            var player = new Vimeo.Player(iframe);
//            
//            player.on('play', function () {
//                         console.log('played the video!');
//                        });

//            player.getVideoTitle().then(function (title) {
//                console.log('title:', title);
            //            });

            //$(window).unload(function () { alert("Bye now!"); });


//            $(document).ready(function () {
//                $(window).bind("beforeunload", function () {
//                    return confirm("Do you really want to close?");
//                });
//            });


            $(function () {
                var iframe = $('#player1')[0];
                var player = new Vimeo.Player(iframe);
                var status = $('.status');
                var uiui = $('.uiui');

                $("#img1").on("unload", function (e) {
                    alert('unload');
                });


                player.on('pause', function () {
                    //status.text('paused');
                    //uiui.text($('#curr').text);
                    player.on('timeupdate', function (data) {
                        $('#hViewtime').val(data.seconds);
                    });
                    uiui.text($('#hViewtime').val());
                    Ended_Alert();
                });

                player.on('ended', function () {
                    status.text('ended');
                    //uiui.text($('.curr').text);
                    Ended_Alert();

                });

                player.on('timeupdate', function (data) {
                    status.text(data.seconds);
                    //$('#curr') = data.seconds;

                });

                $('button').on('click', function () {
                    var method = $(this).text().toLowerCase();
                    player[method]();
                });


                player.unload(
                    
                );




                function Ended_Alert() {
                    var time = $('#hViewtime').val()
                   // alert("종료되었습니다." + time);
                }

            });


           
</script>
<%--<script type="text/javascript">
    $(window).bind('unload', function () {
        $.ajax({
            type: "get",
            async: false,
            url: "URL CONTROLLER/FUNCTION"
        });
    });
</script>--%>

<script type="text/javascript">
//    $(document).ready(function () {

//        //        $(window).on('beforeunload', function () {
//        //            alert('hai');
//        //        });

//        $("#img1").on("unload", function (e) {
//            alert('unload');
//        });
//    });


//    $("#img1").on('beforeunload', function (e) {
//                alert('hai');
//            });


//    function Close_Event() {
//        opener.document.location.reload();
//    }



//    $(window).bind("beforeunload", function (e) {

//        return "창을 닫으실래요?";

//    });

//    $(window).unload(function () {
//        return "Handler for .unload() called.";
//    });


//  window.onbeforeunload= ()=>{
//    while(true){
//        alert("aaa!!!");
//    }

//    return null;
//  }
//
//    window.onbeforeunload = function (e) {
//        e = e || window.event;

//        return '페이지를 닫습니다.';
    //    };

//    $(window).on('beforeunload', function () { 
//        return "can you feel my heartbeat?"
//    });
//    window.addEventListener('beforeunload', function (ev) {
//        return ev.returnValue = 'My reason';
//    })

//    window.onbeforeunload = function () {
//        alert("dddddfkdl;fajdskl");
//    };

//    function unloadPage() {
//        alert("unload event detected!");
//    
//    }

//    window.onunload = unloadPage;

//    window.onbeforeunload = function () {
//        return "저장되지 않은 변경사항이 있습니다. 정말 페이지를 떠나실 건 가요?";
//    };

//    function end() {

//        alert("ddd");
//    }

//    var iframe = $('#player1')[0];
//    iframe.onended = function () {
//        alert("The video")
//        end();
//    };

//    $(window).on("beforeunload", callback);

//    function callback() {
//        console.log("beforeunload callback !");
//        //do something
//        return "changes will be lost!";
//    }

</script>

<script type="text/javascript">
//    function myFunction() {
//        return "Write something clever here...";
//    }

//    addEventListener('beforeunload', function (ev) {
//        return ev.returnValue = 'My reason';
    //    })
    window.onbeforeunload = function (event) {
        event.returnValue = "Write something clever here..";
    };
  


</script>

    <script  language="javascript">
        function Exit() {
            if (self.screenTop > 9000) {
                alert('닫힘');
            }
            else {
                if (document.readyState == "complete") {
                    alert('새로고팀');
                }
                else if (document.readyState == "loading") {
                alert('이동');
                }
            }
        }
    </script>

<script language="javascript" event="onunload" for="widos">
    Exit();
</script>

<script
  src="https://code.jquery.com/jquery-3.5.1.min.js"
  integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
  crossorigin="anonymous"></script>



</head>
<%--<body  onunload="Close_Event();" >
--%>
<body onbeforeunload="return myFunction()">
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td>
                    <asp:Literal  ID="movie" runat="server"/>
                </td>
            </tr>
            <tr>
                <td>
                <div>
  <button>Play</button>
  <button>Pause</button>
  <p>Status: <span class="status">&hellip;</span></p>
    <p>ci: <span class="uiui">&hellip;</span></p>

</div>
                </td>
            </tr>

            <tr>
            <td><img src="img/Lec1.JPG" id="img1"  />
            </td>
            </tr>
        </table>
    
    </div>
    <asp:HiddenField ID="hSeq" runat="server" EnableViewState="false" />
    <asp:HiddenField ID="hViewtime" runat="server" EnableViewState="false" />
    </form>
  
</body>
</html>
