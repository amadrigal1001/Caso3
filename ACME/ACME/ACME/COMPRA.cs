//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ACME
{
    using System;
    using System.Collections.Generic;
    
    public partial class COMPRA
    {
        public int ID_COMPRA { get; set; }
        public int ID_PRODUCTO { get; set; }
        public int CANTIDAD { get; set; }
        public int PRECIO_TOTAL { get; set; }
        public System.DateTime FECHA_COMPRA { get; set; }
        public Nullable<int> DESCUENTO { get; set; }
        public Nullable<int> COSTO_TOTAL_ENVIO { get; set; }
        public string CARRIER { get; set; }
    }
}
