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
package controlador;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.JOptionPane;
import modelo.Articulo;
import modelo.Operaciones;
import vistas.Vista;

public class ControladorArticulo implements ActionListener
{
    private Vista vista;
    private Articulo articulo;
    private Operaciones ops;

    public ControladorArticulo(Vista vista, Articulo articulo, Operaciones ops) 
    {
        this.vista = vista;
        this.articulo = articulo;
        this.ops = ops;
        //Se agregan las acciones para cada botón
        vista.agregarB.addActionListener(this);
        vista.modificarB.addActionListener(this);
        vista.eliminarB.addActionListener(this);
        vista.mostrarB.addActionListener(this);
    }
    //Se inicializa la ventana
    public void iniciar()
    {
        vista.setTitle("Articulos");
        vista.setLocationRelativeTo(null);
    }
    
    //Se eobrecarga el método para poder asignar una acción según el botón
    @Override
    public void actionPerformed(ActionEvent ae)
    {
        if(ae.getSource() == vista.agregarB)//Botón para insertar
        {
            articulo.setSku(Integer.parseInt(vista.sku.getText()));
            articulo.setNombre(vista.nombre.getText());
            articulo.setPrecio(Integer.parseInt(vista.precio.getText()));
            articulo.setArea(Integer.parseInt(vista.area.getText()));
            articulo.setCantidad(Integer.parseInt(vista.cantidad.getText()));
            
            if(ops.add(articulo))
                JOptionPane.showMessageDialog(null, "Se ha insertado el articulo exitosamente");
            else
                JOptionPane.showMessageDialog(null, "Algo salio mal...");
        }
        
        if(ae.getSource() == vista.modificarB)//Botón para modificar
        {
            articulo.setSku(Integer.parseInt(vista.sku.getText()));
            articulo.setNombre(vista.nombre.getText());
            articulo.setPrecio(Integer.parseInt(vista.precio.getText()));
            articulo.setArea(Integer.parseInt(vista.area.getText()));
            articulo.setCantidad(Integer.parseInt(vista.cantidad.getText()));
            
            if(ops.update(articulo))
                JOptionPane.showMessageDialog(null, "Se ha actualizado el articulo exitosamente");
            else
                JOptionPane.showMessageDialog(null, "Algo salio mal...");
        }
        
        if(ae.getSource() == vista.eliminarB)//Botón para eliminar
        {
            articulo.setSku(Integer.parseInt(vista.sku.getText()));
            
            if(ops.delete(articulo))
                JOptionPane.showMessageDialog(null, "Se ha eliminado de manera exitosa");
            else
                JOptionPane.showMessageDialog(null, "Algo salio mal...");
        }
        
        if(ae.getSource() == vista.mostrarB)//Botón para mostrar|No funciona
        {
            JOptionPane.showMessageDialog(null, "No disponible por el momento :c");
        }
    }
}
