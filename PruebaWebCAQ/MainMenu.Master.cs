using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using PruebaWebCAQ.Business;
using PruebaWebCAQ.Domain;

namespace PruebaWebCAQ
{
    public partial class MainMenu : System.Web.UI.MasterPage
    {
        Groupbusiness group = new Groupbusiness();
        private List<Group> list;
        public string groupName;

        protected void Page_Load(object sender, EventArgs e)
        {
            loadSeventh();
            loadEight();
            loadNinth();
            loadTenth();
            loadEleventh();
            
        }

        private void loadSeventh()
        {
            list = group.getGroupsByLevelService(7);
            List<string> sublist = new List<string>();
            foreach (var element in list)
                sublist.Add(element.GroupName);
            listViewforSeventh.DataSource = sublist;
            listViewforSeventh.DataBind();
        }

        private void loadEight()
        {
            list = group.getGroupsByLevelService(8);
            List<string> sublist = new List<string>();
            foreach (var element in list)
                sublist.Add(element.GroupName);
            listViewforEight.DataSource = sublist;
            listViewforEight.DataBind();
        }

        private void loadNinth()
        {
            list = group.getGroupsByLevelService(9);
            List<string> sublist = new List<string>();
            foreach (var element in list)
                sublist.Add(element.GroupName);
            listViewforNinth.DataSource = sublist;
            listViewforNinth.DataBind();
        }

        private void loadTenth()
        {
            list = group.getGroupsByLevelService(10);
            List<string> sublist = new List<string>();
            foreach (var element in list)
                sublist.Add(element.GroupName);
            listViewforTenth.DataSource = sublist;
            listViewforTenth.DataBind();
        }

        private void loadEleventh()
        {
            list = group.getGroupsByLevelService(11);
            List<string> sublist = new List<string>();
            foreach (var element in list)
                sublist.Add(element.GroupName);
            listViewforEleventh.DataSource = sublist;
            listViewforEleventh.DataBind();
        }

        protected void linkForEleven_ServerClick(object sender, EventArgs e)
        {
            ListViewDataItem item = (ListViewDataItem)listViewforEleventh.Items;
            groupName = listViewforEleventh.DataKeys[item.DataItemIndex].Value.ToString();
        }
    }
}