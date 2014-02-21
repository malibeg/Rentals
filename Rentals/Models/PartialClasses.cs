using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace Rentals.Models
{
    public class PartialClasses
    {
        [MetadataType(typeof(ItemMetadata))]
        public partial class Item
        {
            [DataType(DataType.Date)]
            public  DateTime PurchuseDate { get; set; }
        }

        public class MyConfig : DbConfiguration
        {
            public MyConfig()
            {
                //AddInterceptor(new NLogCommandInterceptor());
            }
        }
    }
}