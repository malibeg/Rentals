using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.WebPages;

namespace Rentals.Models
{

    [MetadataType(typeof(ItemMetadata))]
    public partial class Item
    {
        public virtual string Version
        {
            get { return LastUpdate == null ? null : Convert.ToBase64String(LastUpdate); }
            set { LastUpdate = value.IsEmpty() ? null : Convert.FromBase64String(value); }
        }

    }

    [MetadataType(typeof(RowVersionMetadata))]
    public partial class ItemCategory
    {
        public virtual string Version
        {
            get { return LastUpdate == null ? null : Convert.ToBase64String(LastUpdate); }
            set { LastUpdate = value.IsEmpty() ? null : Convert.FromBase64String(value); }
        }

    }


    [MetadataType(typeof(RowVersionMetadata))]
    public partial class Category
    {
        public virtual string Version
        {
            get { return LastUpdate == null ? null : Convert.ToBase64String(LastUpdate); }
            set { LastUpdate = value.IsEmpty() ? null : Convert.FromBase64String(value); }
        }
    }

    public class MyConfig : DbConfiguration
    {
        public MyConfig()
        {
            //AddInterceptor(new NLogCommandInterceptor());
        }
    }
}