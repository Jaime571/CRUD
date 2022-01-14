package crud;

import controlador.ControladorArticulo;
import modelo.Articulo;
import modelo.Operaciones;
import vistas.Vista;

public class CRUD 
{
    public static void main(String[] args)
    {
        /*-----------Notas acerca del programa-------------*/
        /*Para agregar un nuevo producto se deben de llenar todos los campos.
          Para modificar un producto también se deben de llenar todos los campos.
          Para eliminar un producto solo se debe de poner el SKU.
        */
        /*Los datos que aceptan los campos son:
            SKU: int
            Nombr: string
            Precio: int
            Area: int
            Cantidad: int*/
        //Se crean los objetos necesarios para pasarlos como parámetros al controlador
        Vista art = new Vista();
        Articulo articulo = new Articulo();
        Operaciones ops = new Operaciones();
        ControladorArticulo controlador = new ControladorArticulo(art, articulo, ops);
        
        controlador.iniciar();//Se inicia todo el programa
        art.setVisible(true);
    }
    
}
