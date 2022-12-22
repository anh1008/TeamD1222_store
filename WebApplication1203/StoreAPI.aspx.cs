using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1203
{
    public partial class StoreAPI : System.Web.UI.Page
    {
            protected void Page_Load(object sender, EventArgs e)
            {
                string content = GetJsonContent("https://cloud.culture.tw/frontsite/trans/emapOpenDataAction.do?method=exportEmapJson&typeId=M");
                //message.InnerHtml = content;
                /*
                var objResponse1 = 
                JsonConvert.DeserializeObject<List<RetrieveMultipleResponse>>(JsonStr);*/

                List<Bookstore> store =
                JsonConvert.DeserializeObject<List<Bookstore>>(content);
                
                message.InnerHtml += "<CAPTION><h1>合作店家表單</h1></ CAPTION > ";
                message.InnerHtml += "<h4>The data source is the API developed by our company, if there is any change, it will be updated as soon as possible</h4>";
                message.InnerHtml += "<table><TR><TH>所在城市</TH><TH>書店店名</TH><TH>營業時間</TH><TH>店面地址</TH><TH>連絡電話</ TH ></ TR > ";
                //message.InnerHtml += "</table>";

                //message.InnerHtml = store;

            /*
            API store =
            JsonConvert.DeserializeObject<API>(content);
            message.InnerHtml += "<CAPTION><h1>合作店家表單</h1></ CAPTION > ";
            message.InnerHtml += "<table><TR><TH>所在城市</TH><TH>書店店名</TH><TH>連絡電話</ TH ></ TR > ";*/
            int i = 0;
          
            foreach (var item in store)
            {
                if (item.name.Length> 0)
                {
                    message.InnerHtml += "<tr>" + "<td>" + item.cityName + "</td>"
                    + "<td>" + item.name + "</td>" + "<td>" + item.openTime + "</td>" + "<td>" + item.address + "</td>" + "<td>" + item.phone + "</td></tr>";
                    i++;
                }
            }
            message.InnerHtml += "</table>";

        }
            private static string GetJsonContent(string Url)
            {
                string targetURI = Url;
                var request = System.Net.WebRequest.Create(targetURI);
                request.ContentType = "application/json; charset=utf-8";
                var response = request.GetResponse();
                string text;
                using (var sr = new StreamReader(response.GetResponseStream()))
                {
                    text = sr.ReadToEnd();
                }
                return text;
            }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Search/search_1.aspx");
        }
    }

}