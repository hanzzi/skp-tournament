using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;

namespace SkpEsport
{
    public class Teams
    {
        public string TeamName { get; set; }
        public List<string> GamesList = new List<string>();

        public List<string> TeamMembers;


        public Teams(string tName, List<string> games)
        {
            TeamName = tName;
            if (games != null)
            {
                foreach (var game in games)
                {
                    GamesList.Add(game);
                }
            }

        }

        public Teams()
        {
            
        }



        public void GetTeam()
        {
            
        }

        public void CreateTeam()
        {
            DbConnection dbcon = new DbConnection();

        }

        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();

            foreach (var game in GamesList)
            {
                if (GamesList == null)
                {
                    sb.Append("Nothing");
                }
                else
                {
                    sb.Append(game);
                }
            }

            return sb.ToString();
        }
    }
}