using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace IsabellaBirdBlog.Models
{
    public class Experience
    {
        [Key]
        public int ExperienceId { get; set; }
        public string ExperienceName { get; set; }
        public string ExperienceDesc { get; set; }
        public virtual Location Location { get; set; }
        public virtual ICollection<Person> Persons { get; set; }
    }
}
