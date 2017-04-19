using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace IsabellaBirdBlog.Models
{
    public class Location
    {
        [Key]
        public int LocationId { get; set; }
        public string LocationName { get; set; }
        public string GeoClass { get; set; }
        public virtual ICollection<Experience> Experiences { get; set; }
        public virtual ICollection<Person> Persons { get; set; }
    }
}
