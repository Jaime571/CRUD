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
package modelo;

public class Articulo //Se definen los atributos de la clase
{
    private int sku;
    private String nombre;
    private int precio;
    private int area;
    private int cantidad;
    
    public Articulo()//Se inicializan
    {
        sku = 0;
        nombre = "";
        precio = 0;
        area = 0;
        cantidad = 0;
    }
    
    //Se definen los Getters y Setters
    public int getSku() {
        return sku;
    }

    public void setSku(int sku) {
        this.sku = sku;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getPrecio() {
        return precio;
    }

    public void setPrecio(int precio) {
        this.precio = precio;
    }

    public int getArea() {
        return area;
    }

    public void setArea(int area) {
        this.area = area;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }
    
}
