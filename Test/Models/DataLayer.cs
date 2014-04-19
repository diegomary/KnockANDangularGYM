using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace Test.Models
{
       public class DataLayer : DbContext
        {
            public DataLayer()
                : base()
            {

            }
            public DbSet<Flower> AllFlowers { get; set; }
            public DbSet<King> AllKings { get; set; }
        }

 
}