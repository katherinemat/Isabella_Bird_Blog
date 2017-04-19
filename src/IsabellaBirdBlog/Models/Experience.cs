﻿using System;
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

        [Required]
        public string ExperienceName { get; set; }

        [Required]
        public string ExperienceDesc { get; set; }

        public virtual Location Location { get; set; }

        public virtual ICollection<PersonExperience> PersonsExperiences { get; set; }
    }
}
