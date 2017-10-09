using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SkpEsport
{
    public class Teams
    {
        public string TeamName { get; set; }
        public List<string> GamesList { get; set; }

        public List<string> TeamMembers;


        public Teams(string tName, List<string> games)
        {
            TeamName = tName;
            if (games.Count != 0)
            {
                foreach (var game in games)
                {
                    GamesList.Add(game);
                }
            }

        }



        public void GetTeam()
        {
            
        }

        public void CreateTeam()
        {
            DbConnection dbcon = new DbConnection();



        }
    }
}