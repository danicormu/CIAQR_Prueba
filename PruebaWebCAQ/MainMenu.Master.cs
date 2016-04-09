using System;
using System.Collections.Generic;
using System.Linq;
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
        private int i = 0;
        private int j = 0;
        private int c = 0;
        private int a = 0;
        private int b = 0;

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
            seventhRepeater.DataSource = sublist;
            seventhRepeater.DataBind();
        }

        private void loadEight()
        {
            list = group.getGroupsByLevelService(8);
            List<string> sublist = new List<string>();
            foreach (var element in list)
                sublist.Add(element.GroupName);
            eightRepeater.DataSource = sublist;
            eightRepeater.DataBind();
        }

        private void loadNinth()
        {
            list = group.getGroupsByLevelService(9);
            List<string> sublist = new List<string>();
            foreach (var element in list)
                sublist.Add(element.GroupName);
            ninthRepeater.DataSource = sublist;
            ninthRepeater.DataBind();
        }

        private void loadTenth()
        {
            list = group.getGroupsByLevelService(10);
            List<string> sublist = new List<string>();
            foreach (var element in list)
                sublist.Add(element.GroupName);
            tenthRepeater.DataSource = sublist;
            tenthRepeater.DataBind();
        }

        private void loadEleventh()
        {
            list = group.getGroupsByLevelService(11);
            List<string> sublist = new List<string>();
            foreach (var element in list)
                sublist.Add(element.GroupName);
            eleventhRepeater.DataSource = sublist;
            eleventhRepeater.DataBind();
        }

        protected void eleventhRepeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName.Equals("select"))
            {
                LinkButton button = (LinkButton)e.Item.FindControl("groupLabel");
                groupName = button.Text;
                Response.Redirect("ViewSchedule.aspx?value=" + groupName);
            }
        }

        protected void eleventhRepeater_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                LinkButton button = (LinkButton)e.Item.FindControl("groupLabel");
                button.Text = list.ElementAt(i).GroupName;
                i++;
            }
        }

        protected void tenthRepeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName.Equals("select"))
            {
                LinkButton button = (LinkButton)e.Item.FindControl("groupLabel");
                groupName = button.Text;
                Response.Redirect("ViewSchedule.aspx?value="+groupName);
            }
        }

        protected void tenthRepeater_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                LinkButton button = (LinkButton)e.Item.FindControl("groupLabel");
                button.Text = list.ElementAt(j).GroupName;
                j++;
            }
        }

        protected void ninthRepeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName.Equals("select"))
            {
                LinkButton button = (LinkButton)e.Item.FindControl("groupLabel");
                groupName = button.Text;
                Response.Redirect("ViewSchedule.aspx?value=" + groupName);
            }
        }

        protected void ninthRepeater_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                LinkButton button = (LinkButton)e.Item.FindControl("groupLabel");
                button.Text = list.ElementAt(c).GroupName;
                c++;
            }
        }

        protected void eightRepeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName.Equals("select"))
            {
                LinkButton button = (LinkButton)e.Item.FindControl("groupLabel");
                groupName = button.Text;
                Response.Redirect("ViewSchedule.aspx?value=" + groupName);
            }
        }

        protected void eightRepeater_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                LinkButton button = (LinkButton)e.Item.FindControl("groupLabel");
                button.Text = list.ElementAt(a).GroupName;
                a++;
            }
        }

        protected void seventhRepeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName.Equals("select"))
            {
                LinkButton button = (LinkButton)e.Item.FindControl("groupLabel");
                groupName = button.Text;
                Response.Redirect("ViewSchedule.aspx?value=" + groupName);
            }
        }

        protected void seventhRepeater_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                LinkButton button = (LinkButton)e.Item.FindControl("groupLabel");
                button.Text = list.ElementAt(b).GroupName;
                b++;
            }
        }
    }
}