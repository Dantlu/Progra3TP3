using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP3Progra3
{
    public partial class ejercicio1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btnInicio_Click(object sender, EventArgs e)
        {
            Response.Redirect("Inicio.aspx");
        }

        protected void btnGuardarUsuario_Click(object sender, EventArgs e)
        {
        }

        protected void btnLocalidad_Click(object sender, EventArgs e)
        {
            // Verificar si la validación es exitosa
            if (Page.IsValid)
            {
                // Acciones a realizar si la validación es exitosa
                // Por ejemplo, redireccionar a otra página, guardar datos, etc.
                txtNombreLocalidad.Text = "";
            }
            else
            {
                // Acciones a realizar si la validación falla
                // Por ejemplo, mostrar un mensaje de error adicional
            }

        }
    }
}