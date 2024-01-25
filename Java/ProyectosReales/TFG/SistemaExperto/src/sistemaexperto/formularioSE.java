package sistemaexperto;
import java.awt.event.KeyEvent;
import java.io.File;
import java.io.FileOutputStream;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JFileChooser;
import javax.swing.JOptionPane;
import javax.swing.JFrame;
import static javax.swing.JOptionPane.YES_NO_OPTION;
public class formularioSE extends JFrame {
    JFileChooser seleccionar = new JFileChooser();
    File archivo;
    FileOutputStream salida;
    String persona,n,a,lente;
    String anomalia="",tieneprebicia="",Astigmatismo="",preprebicia="";
    String tipolente="",prolagrimas="";
    public formularioSE() {
        initComponents();
        setTitle("Sistema Experto para la prescripción de lentes de contacto");
        setResizable(false);
        this.setLocationRelativeTo(null);
        texto.setEditable(false);       
    }
    public String GuardarArchivo (File Archivo,String Documento){
        String mensaje=null;
       try {
         salida = new FileOutputStream (Archivo);
         byte[] bytxt=Documento.getBytes();
         salida.write(bytxt);
         mensaje="";
       } catch(Exception e){
       }
       return mensaje;
    }
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        jPanel2 = new javax.swing.JPanel();
        Prescribir = new javax.swing.JButton();
        jScrollPane1 = new javax.swing.JScrollPane();
        texto = new javax.swing.JTextArea();
        jLabel3 = new javax.swing.JLabel();
        jLabel7 = new javax.swing.JLabel();
        jLabel8 = new javax.swing.JLabel();
        jButton2 = new javax.swing.JButton();
        name = new javax.swing.JTextField();
        jLabel5 = new javax.swing.JLabel();
        Edad = new javax.swing.JTextField();
        apellido = new javax.swing.JTextField();
        guardar = new javax.swing.JButton();
        jButton1 = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setFocusable(false);

        jPanel1.setBackground(new java.awt.Color(0, 51, 255));
        jPanel1.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED, java.awt.Color.white, java.awt.Color.gray));

        jLabel1.setFont(new java.awt.Font("Arial", 0, 24)); // NOI18N
        jLabel1.setForeground(new java.awt.Color(255, 255, 51));
        jLabel1.setText(" Sistema Experto optométrico para");

        jLabel2.setFont(new java.awt.Font("Arial", 0, 18)); // NOI18N
        jLabel2.setForeground(new java.awt.Color(255, 255, 0));
        jLabel2.setText("Prescripcion de lentes de contacto");

        jLabel4.setIcon(new javax.swing.ImageIcon(getClass().getResource("/img/optica-vision-center-logo-D9A581990C-seeklogo.com.gif"))); // NOI18N

        jLabel6.setFont(new java.awt.Font("Arial", 0, 12)); // NOI18N
        jLabel6.setForeground(new java.awt.Color(255, 255, 0));
        jLabel6.setText("Responda todas las siguentes preguntas");

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
            .addGroup(javax.swing.GroupLayout.Alignment.LEADING, jPanel1Layout.createSequentialGroup()
                .addGap(84, 84, 84)
                .addComponent(jLabel4, javax.swing.GroupLayout.PREFERRED_SIZE, 88, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(97, 97, 97)
                        .addComponent(jLabel6)
                        .addContainerGap())
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 73, Short.MAX_VALUE)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                                .addComponent(jLabel2, javax.swing.GroupLayout.PREFERRED_SIZE, 288, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addGap(66, 66, 66))
                            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                                .addComponent(jLabel1)
                                .addGap(28, 28, 28))))))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(21, 21, 21)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(jLabel4, javax.swing.GroupLayout.PREFERRED_SIZE, 113, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addComponent(jLabel1)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(jLabel2)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jLabel6, javax.swing.GroupLayout.PREFERRED_SIZE, 18, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap(23, Short.MAX_VALUE))
        );

        jPanel2.setBackground(new java.awt.Color(51, 204, 255));
        jPanel2.setBorder(javax.swing.BorderFactory.createEtchedBorder(javax.swing.border.EtchedBorder.RAISED, java.awt.Color.white, java.awt.Color.gray));

        Prescribir.setBackground(new java.awt.Color(0, 204, 204));
        Prescribir.setFont(new java.awt.Font("Arial", 1, 12)); // NOI18N
        Prescribir.setText("Prescribir");
        Prescribir.setToolTipText("Clic para comenzar el examen");
        Prescribir.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                PrescribirActionPerformed(evt);
            }
        });

        texto.setColumns(20);
        texto.setFont(new java.awt.Font("Arial", 0, 12)); // NOI18N
        texto.setRows(5);
        jScrollPane1.setViewportView(texto);

        jLabel3.setFont(new java.awt.Font("Arial", 0, 12)); // NOI18N
        jLabel3.setText("Nombres:");

        jLabel7.setFont(new java.awt.Font("Arial", 0, 12)); // NOI18N
        jLabel7.setText("Apellidos:");

        jLabel8.setFont(new java.awt.Font("Arial", 0, 12)); // NOI18N
        jLabel8.setText("Edad:");

        jButton2.setBackground(new java.awt.Color(0, 204, 204));
        jButton2.setFont(new java.awt.Font("Arial", 1, 12)); // NOI18N
        jButton2.setText("Volver");
        jButton2.setToolTipText("Clic para salir");
        jButton2.setFocusable(false);
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });

        name.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                nameActionPerformed(evt);
            }
        });
        name.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyTyped(java.awt.event.KeyEvent evt) {
                nameKeyTyped(evt);
            }
        });

        jLabel5.setFont(new java.awt.Font("Arial", 0, 12)); // NOI18N
        jLabel5.setText("Rellene todos los campos");

        Edad.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                EdadActionPerformed(evt);
            }
        });
        Edad.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyTyped(java.awt.event.KeyEvent evt) {
                EdadKeyTyped(evt);
            }
        });

        apellido.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                apellidoActionPerformed(evt);
            }
        });
        apellido.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyTyped(java.awt.event.KeyEvent evt) {
                apellidoKeyTyped(evt);
            }
        });

        guardar.setBackground(new java.awt.Color(0, 204, 204));
        guardar.setFont(new java.awt.Font("Arial", 1, 12)); // NOI18N
        guardar.setText("Guardar datos");
        guardar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                guardarActionPerformed(evt);
            }
        });

        jButton1.setBackground(new java.awt.Color(0, 204, 204));
        jButton1.setFont(new java.awt.Font("Arial", 1, 12)); // NOI18N
        jButton1.setText("Guardar Prescripcion");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGap(55, 55, 55)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel5)
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                .addComponent(jLabel7, javax.swing.GroupLayout.PREFERRED_SIZE, 55, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addComponent(jLabel8, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 47, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addComponent(jLabel3))
                        .addGap(18, 18, 18)
                        .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addComponent(name)
                            .addComponent(Edad)
                            .addComponent(apellido, javax.swing.GroupLayout.DEFAULT_SIZE, 129, Short.MAX_VALUE)))
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addGap(8, 8, 8)
                        .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(jPanel2Layout.createSequentialGroup()
                                .addComponent(Prescribir)
                                .addGap(8, 8, 8)
                                .addComponent(guardar))
                            .addGroup(jPanel2Layout.createSequentialGroup()
                                .addGap(2, 2, 2)
                                .addComponent(jButton2)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                .addComponent(jButton1)))))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 301, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel2Layout.createSequentialGroup()
                        .addComponent(jLabel5)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel3)
                            .addComponent(name, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(21, 21, 21)
                        .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel7)
                            .addComponent(apellido, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(23, 23, 23)
                        .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel8)
                            .addComponent(Edad, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(18, 18, 18)
                        .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(Prescribir)
                            .addComponent(guardar))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jButton2)
                            .addComponent(jButton1))
                        .addGap(17, 17, 17))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel2Layout.createSequentialGroup()
                        .addComponent(jScrollPane1)
                        .addContainerGap())))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
            .addComponent(jPanel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jPanel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void PrescribirActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_PrescribirActionPerformed
        String c3 = Edad.getText();
        n = name.getText();
        a = apellido.getText();
        try{
        if (n.equals("") || a.equals("") || (c3.equals(""))) { 
            javax.swing.JOptionPane.showMessageDialog(this,"Debe llenar todos los campos","AVISO!",javax.swing.JOptionPane.INFORMATION_MESSAGE);
        }else{                                        
            pescribir();
        }  
        }catch(Exception e){
             JOptionPane.showMessageDialog(this,"No hay datos cargados");
        }         
    }//GEN-LAST:event_PrescribirActionPerformed

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
        dispose();
    }//GEN-LAST:event_jButton2ActionPerformed

    private void nameKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_nameKeyTyped
        char c =evt.getKeyChar();
        if((c<'a'|| c>'z') && (c<'A'|| c>'Z') && (c<' '|| c>' '))evt.consume();
    }//GEN-LAST:event_nameKeyTyped

    private void EdadKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_EdadKeyTyped
        char c =evt.getKeyChar();
        if((c<'0'|| c>'9'))evt.consume();
    }//GEN-LAST:event_EdadKeyTyped

    private void apellidoKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_apellidoKeyTyped
        char c =evt.getKeyChar();
        if((c<'a'|| c>'z') && (c<'A'|| c>'Z') && (c<' '|| c>' '))evt.consume();
    }//GEN-LAST:event_apellidoKeyTyped

    private void guardarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_guardarActionPerformed
        String Texto;
        Conectar C = new Conectar();
        Connection con = C.getConnection();
        String c3,sql;
        n = name.getText();
        a = apellido.getText();
        c3 = Edad.getText();
        if (n.equals("") || a.equals("") || (c3.equals("")) || (lente.equals(""))) { 
            javax.swing.JOptionPane.showMessageDialog(this,"Debe llenar todos los campos o no hay prescripcion\n","AVISO!",javax.swing.JOptionPane.INFORMATION_MESSAGE);
        }else{
            sql="INSERT INTO usuarios (id,Nombre,Apellido,Edad,tipo_lente)" + "VALUES(0,?,?,?,?)";
            try {
                PreparedStatement psd = con.prepareStatement(sql);
                psd.setString(1,n);
                psd.setString(2,a);              
                int c=Integer.parseInt(c3);    
                psd.setInt(3,c);              
                psd.setString(4,lente);
                int i=psd.executeUpdate();
                if(i>0){
                    JOptionPane.showMessageDialog(null, "Datos guardados correctamente");
                }
                else{
                    JOptionPane.showMessageDialog(null, "Datos no guardados");
                }
            } catch (SQLException ex) {
                Logger.getLogger(formularioSE.class.getName()).log(Level.SEVERE, null, ex);
            }
        }    
    }//GEN-LAST:event_guardarActionPerformed

    private void nameActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_nameActionPerformed
        String c;
        evt.setSource((char) KeyEvent.VK_CLEAR);
        c=name.getText();
        if((c.equals("puta")) || (c.equals("mamahuevo")) || (c.equals("hijo de puta"))||(c.equals("pendejo"))){
            JOptionPane.showMessageDialog(this,"Tu mama","Me estas insultando",JOptionPane.ERROR_MESSAGE);
        }
        apellido.requestFocus();
    }//GEN-LAST:event_nameActionPerformed

    private void apellidoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_apellidoActionPerformed
        String c;
        evt.setSource((char) KeyEvent.VK_CLEAR);
        c=name.getText();
        if((c.equals("puta")) || (c.equals("mamahuevo")) || (c.equals("hijo de puta"))||(c.equals("pendejo"))){
            JOptionPane.showMessageDialog(this,"Tu mama","Me estas insultando",JOptionPane.ERROR_MESSAGE);
        }
        Edad.requestFocus();
    }//GEN-LAST:event_apellidoActionPerformed

    private void EdadActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_EdadActionPerformed
        String c;
        int edad;
        evt.setSource((char) KeyEvent.VK_CLEAR);
        c = Edad.getText();
        edad=Integer.parseInt(c);
        if(edad>100){
            JOptionPane.showMessageDialog(this,"No es posible tener esa edad","Error",JOptionPane.ERROR_MESSAGE); 
        }else if(edad<=0){
            JOptionPane.showMessageDialog(this,"No se aceptan bebes de meses","Error",JOptionPane.ERROR_MESSAGE); 
        }
        Prescribir.requestFocus();
    }//GEN-LAST:event_EdadActionPerformed

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        String c =texto.getText();
        if(c.equals("")){
            JOptionPane.showMessageDialog(null,"No existe prescripcion");
        }else{
          if(seleccionar.showDialog(null,"Guardar")==JFileChooser.APPROVE_OPTION){
          archivo=seleccionar.getSelectedFile();
          if(archivo.getName().endsWith("txt")){
             String documento = texto.getText();
             String mensaje = GuardarArchivo(archivo,documento);
             if(mensaje!=null){
               JOptionPane.showMessageDialog(null,mensaje);  
             }else{
                JOptionPane.showMessageDialog(null,"el Archivo es de otro formato");
             }
          }else{
              JOptionPane.showMessageDialog(null,"Guardar documento");
          }
        }
        }    
    }//GEN-LAST:event_jButton1ActionPerformed

    
    private void pescribir(){
      basedeconocimiento b = new basedeconocimiento();
      int p1,p2,p3,e,p4;
      
      String edad= Edad.getText();
      pregunta1 p =new pregunta1();
      e=Integer.parseInt(edad);
      FuzzyEdadMiopia E = new FuzzyEdadMiopia(e);
      FuzzyHipermetropia E1 = new FuzzyHipermetropia(e);
      p1=p.respuesta();
      p2 = JOptionPane.showConfirmDialog(rootPane, "¿Tiene Astigmatismo?", null, YES_NO_OPTION);
      pregunta2 pr=new pregunta2();
      p3= pr.respuesta();
      if (p1==0){
          anomalia="Miopia";
          tieneprebicia= E.obtenerpresbicia();
          
      }else {
          anomalia="Hipermetropia";
          tieneprebicia= E1.obtenerpresbicia();
      }
      if(p2==0){
          Astigmatismo="si";
      }else{
          Astigmatismo="no";
      }
      if(p3==0){
          prolagrimas="no";
      }else{
          prolagrimas="si";
      }
      if (tieneprebicia.equals("no")){
          p4 = JOptionPane.showConfirmDialog(rootPane, "¿el paciente presenta sintomas de prebicia?", null, YES_NO_OPTION);
          if (p4==0){
          preprebicia="si";
          }else{
             preprebicia="no"; 
          }
          lente=b.Obtenertipolente2(preprebicia, Astigmatismo, prolagrimas);
      }else{
          lente=b.Obtenertipolente1(tieneprebicia,Astigmatismo, prolagrimas);
      }
       String dg = "----------------------------------------------------\n"
                     + "-  Sistema Experto Obstalmologico                   \n"
                     + "-  Hola Sr(a) "+n+" "+a+"                           \n"
                     + "----------------------------------------------------\n"
                     + "-  Anomalia: "+ anomalia +"                         \n"
                     + "-  ¿tiene astigmatismo?: "+ Astigmatismo +"         \n"
                     + "----------------------------------------------------\n"
                     + "-         Prescripcion                              \n"
                     + "----------------------------------------------------\n"
                     + "- Usted "+  lente     +"                            \n"
                     + "----------------------------------------------------";         
           texto.setText(dg);
    }
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JTextField Edad;
    private javax.swing.JButton Prescribir;
    private javax.swing.JTextField apellido;
    private javax.swing.JButton guardar;
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTextField name;
    private javax.swing.JTextArea texto;
    // End of variables declaration//GEN-END:variables

}
