using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP3Progra3
{
    public partial class ejercicio1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            lblErrorLocalidad.Visible = false;
            txtContrasenia.Attributes["type"] = "password";
            txtReContrasenia.Attributes["type"] = "password";
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
                string nuevaLocalidad = txtNombreLocalidad.Text.Trim();
                if (!DropdownListLocalidades.Items.Cast<ListItem>().Any(item => 
                item.Text.Equals(nuevaLocalidad, StringComparison.OrdinalIgnoreCase))){
                    // La localidad no existe, agregarla al DropDownList
                    DropdownListLocalidades.Items.Add(nuevaLocalidad); // Guardar la localidad en el dropdownlist
                    txtNombreLocalidad.Text = ""; // Limpiar el campo de texto
                }
                else
                {
                    // La localidad ya existe, mostrar un mensaje de error
                    // ClientScript.RegisterStartupScript(GetType(), "alert", "alert('La localidad ingresada ya existe.');", true);
                    lblErrorLocalidad.Visible = true;
                    txtNombreLocalidad.Text = ""; // Limpiar el campo de texto
                }
            }
            else
            {
                // Acciones a realizar si la validación falla
                // Por ejemplo, mostrar un mensaje de error adicional
            }

        }

        protected void cvCp_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if(args.Value.Length==4)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }

        protected void cvCP_ServerValidate1(object source, ServerValidateEventArgs args)
        {
            if (args.Value.Length == 4)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }

        protected void cvCorreo_ServerValidate(object source, ServerValidateEventArgs args)
        {

         
                if (args.Value.Length == 4)
                {
                    args.IsValid = true;
                }
                else
                {
                    args.IsValid = false;
                }
            
        }
    }
}