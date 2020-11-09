<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <link rel="stylesheet" type="text/css" href="/path/to/modal-video.min.css">
    <script src="http://code.jquery.com/jquery-2.2.4.min.js"></script>

      
        <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://player.vimeo.com/api/player.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {

            $(window).on('beforeunload', function () {
                alert('hai');
            });

        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table width="100%">
           <tr>
            <td width="1200px" align="center">
               <table>
                   <tr>
                    <td width="370px">
                    <img src="img/Lec1.JPG" alt="" href="#" onclick="var win = window.open('http://localhost:7560/ShowPlayer.aspx?id=457558347','_blank','width=800px,height=800,toolbar=no,scrolling=auto,scrollbars=yes');win.focus();"  />
                    
                    </td>
                    <td width="370px">
                     <img src="img/Lec2.JPG" alt="" />

                
                    </td>
                    <td width="370px">
                     <img src="img/Lec3.JPG" alt="" />
                    </td>

                   </tr>



               </table>
            </td>
           </tr>
        
        </table>
    
    </div>
    </form>
</body>
</html>
