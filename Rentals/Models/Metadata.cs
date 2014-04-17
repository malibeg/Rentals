using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Web.WebPages;

namespace Rentals.Models
{
    public class ItemMetadata
    {

        [Timestamp]
        protected virtual byte[] LastUpdate { get; set; }

        [DataType(DataType.Date)]
        public DateTime PurchuseDate { get; set; }
    }

    public class RowVersionMetadata
    {
        [Timestamp]
        protected virtual byte[] LastUpdate { get; set; }
    }
}