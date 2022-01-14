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
package vistas;

import javax.swing.GroupLayout;
import javax.swing.JFrame;
import javax.swing.JButton;
import javax.swing.JLabel;
import javax.swing.JTable;
import javax.swing.JTextField;

public class Vista extends JFrame
{
    public JButton agregarB, eliminarB, modificarB, mostrarB;
    public JLabel skuE, nombreE, precioE, areaE, cantidadE; 
    public JTextField sku, nombre, precio, area, cantidad;
    public JTable data;
    
    public Vista()//Es un elemento heredado
    {
        super("Articulos");//Al ser heredado, se manda llamar el constructor de la clase base
        incializar();
    }

    private void incializar() 
    {
        setDefaultCloseOperation(EXIT_ON_CLOSE);//Se define qué pasa cuando se da clic a la x de la ventana.
        setSize(500, 500);
        setLocationRelativeTo(null);
        //Se inicializan los botones
        agregarB = new JButton("Agregar");
        eliminarB = new JButton("Eliminar");
        modificarB = new JButton("Modificar");
        mostrarB = new JButton("Mostrar");
        //Se inicializan las etiquetas
        skuE = new JLabel("SKU: ");
        nombreE = new JLabel("Nombre: ");
        precioE = new JLabel("Precio: ");
        areaE = new JLabel("Area: ");
        cantidadE = new JLabel("Cantidad: ");
        //Se inicializan los campos de texto
        sku = new JTextField();
        nombre = new JTextField("");
        precio = new JTextField();
        area = new JTextField();
        cantidad = new JTextField();
        
        data = new JTable();
        
        GroupLayout gp;
        gp = new GroupLayout(this.getContentPane());//Se obtienen las características del área de trabajo
        
        gp.setAutoCreateContainerGaps(true);//Configuramos automáticamente los Gaps del formulario
        gp.setAutoCreateGaps(true);//Configuramos automáticamente los Gaps entre componentes
        
        //Definimos la perspectiva horizontal PH
        gp.setHorizontalGroup
        (
               gp.createParallelGroup()
                    .addGroup
                    (
                        gp.createSequentialGroup()
                            .addComponent(skuE)
                            .addComponent(sku)
                    )
                    .addGroup
                    (
                        gp.createSequentialGroup()
                            .addComponent(nombreE)
                            .addComponent(nombre)
                    )
                    .addGroup
                    (
                        gp.createSequentialGroup()
                            .addComponent(precioE)
                            .addComponent(precio)
                    )
                    .addGroup
                    (
                        gp.createSequentialGroup()
                            .addComponent(areaE)
                            .addComponent(area)
                    )
                    .addGroup
                    (
                        gp.createSequentialGroup()
                            .addComponent(cantidadE)
                            .addComponent(cantidad)
                    )
                    .addGroup
                    (
                        gp.createSequentialGroup()
                            .addComponent(agregarB)
                            .addComponent(eliminarB)
                            .addComponent(modificarB)
                            .addComponent(mostrarB)
                    )
                
        );
        
        //Se define la perspectiva vertical
        gp.setVerticalGroup
        (
            gp.createSequentialGroup()
                .addGroup
                (
                    gp.createParallelGroup()
                        .addComponent(skuE)
                        .addComponent(sku)
                )
                .addGroup
                (
                    gp.createParallelGroup()
                        .addComponent(nombreE)
                        .addComponent(nombre)
                )
                .addGroup
                (
                    gp.createParallelGroup()
                        .addComponent(precioE)
                        .addComponent(precio)
                )
                .addGroup
                (
                    gp.createParallelGroup()
                        .addComponent(areaE)
                        .addComponent(area)
                )
                .addGroup
                (
                    gp.createParallelGroup()
                        .addComponent(cantidadE)
                        .addComponent(cantidad)
                )
                .addGroup
                (
                    gp.createParallelGroup()
                        .addComponent(agregarB)
                        .addComponent(eliminarB)
                        .addComponent(modificarB)
                        .addComponent(mostrarB)
                )
        );
        
        setLayout(gp);
        this.pack();
    }  
}
