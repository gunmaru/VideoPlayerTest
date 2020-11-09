using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ShowPlayer : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        hSeq.Value = Request["id"];

        LoadData(hSeq.Value);
        
    }

    private void LoadData(string seq)
    {
        //movie.Text = "<iframe id=\"player1\"  src=\"https://player.vimeo.com/video/" + seq + "\"" + " style=\"position:absolute;top:0;left:0; width=\"800px\" height=\"554\" frameborder=\"0\" webkitallowfullscreen mozallowfullscreen allowfullscreen ></iframe>";
        movie.Text = "<iframe id=\"player1\"  src=\"https://player.vimeo.com/video/" + seq + "\"" + " style=\"position:absolute;top:700;left:0; width=\"100%\" height=\"554\" frameborder=\"0\"  mozallowfullscreen allowfullscreen ></iframe>";


       

        Console.Write(movie);

    }

}