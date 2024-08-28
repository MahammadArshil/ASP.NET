namespace Program_39.Models
{
    public class ErrorViewModel
    {
        public string? RequestId { get; set; }

        public bool ShowRequestId => !string.IsNullOrEmpty(RequestId);

        public int Id { get; set; }
        public string Name { get; set; }
    }
}
