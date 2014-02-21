using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Rentals.Models
{
    public class ItemMetadata
    {

        [Timestamp]
        public byte[] LastUpdate { get; set; }
    }
}