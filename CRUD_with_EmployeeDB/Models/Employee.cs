using System.ComponentModel.DataAnnotations;
using Microsoft.EntityFrameworkCore;

namespace Program_41.Models
{
    public class Employee
    {
        [Key]
        public int Id { get; set; }
        [Required]
        [Display(Name = "Employee Name")]
        public required string Name { get; set; }
        public required string Designation { get; set; }
        [DataType(DataType.MultilineText)]
        public required string Address { get; set; }
        public DateTime? RecordCreatedOn { get; set; }
    }
}
