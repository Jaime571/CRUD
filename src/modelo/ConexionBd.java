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

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexionBd 
{
    public Connection conexion;
    
    public ConexionBd()
    {
        try 
        {
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection("jdbc:mysql://localhost/bd_practica", "root", "");
        } 
        catch (ClassNotFoundException ex) 
        {
            System.err.println("Error aqui a");
        } 
        catch (SQLException ex) 
        {
            System.err.println("Error aqui b");
        }
    }
    
    protected final Connection getConn()
    {
        return conexion;
    }
}
