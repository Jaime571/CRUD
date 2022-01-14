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

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Operaciones extends ConexionBd
{
    public Operaciones ()
    {
        super();
    }
    
    public boolean add(Articulo a)//Método para agregar un artículo
    {
        PreparedStatement sql;//Nos permite ejecutar la sentencia
        int resultados = 0;
        try 
        {
            sql = getConn().prepareStatement("INSERT INTO producto(sku, nombre, precio, area, cantidad) VALUES (?, ?, ?, ?, ?)");
            
            //Pasamos los valores obtenidos de la consulta al objeto
            sql.setInt(1, a.getSku());
            sql.setString(2, a.getNombre());
            sql.setInt(3, a.getPrecio());
            sql.setInt(4, a.getArea());
            sql.setInt(5, a.getCantidad());
            
            resultados = sql.executeUpdate();
            
            if(resultados > 0)
                return true;
            else
                return false;
        } 
        catch (SQLException ex) 
        {
            System.err.println("Error aqui c");
            return false;
        }
    }
    
    public boolean update(Articulo a)//Método para actualizar
    {
        PreparedStatement sql;//Nos permite ejecutar la sentencia
        int resultados = 0;
        try 
        {
            sql = getConn().prepareStatement("UPDATE producto SET nombre=?, precio=?, area=?, cantidad=? WHERE sku=?");
            
            
            sql.setString(1, a.getNombre());
            sql.setInt(2, a.getPrecio());
            sql.setInt(3, a.getArea());
            sql.setInt(4, a.getCantidad());
            sql.setInt(5, a.getSku());
            
            resultados = sql.executeUpdate();
            
            if(resultados > 0)
                return true;
            else
                return false;
        } 
        catch (SQLException ex) 
        {
            System.err.println("Error aqui c");
            return false;
        }
    }
    
    public boolean delete(Articulo a)//Método para borrar
    {
        PreparedStatement sql;//Nos permite ejecutar la sentencia
        int resultados = 0;
        try 
        {
            sql = getConn().prepareStatement("DELETE FROM producto WHERE sku=?");
            
            sql.setInt(1, a.getSku());
            
            resultados = sql.executeUpdate();
            
            if(resultados > 0)
                return true;
            else
                return false;
        } 
        catch (SQLException ex) 
        {
            System.err.println("Error aqui c");
            return false;
        }
    }
    
    public boolean select(Articulo a)//Método para mostrar|No funciona
    {
        PreparedStatement sql;//Nos permite ejecutar la sentencia
        int resultados = 0;
        
        try 
        {
            sql = getConn().prepareStatement("SELECT * FROM producto");
            resultados = sql.executeUpdate();
            
            if(resultados > 0)
                return true;
            else
                return false;
        } 
        catch (SQLException ex) 
        {
            System.err.println("Error aqui c");
            return false;
        }
    }
}
