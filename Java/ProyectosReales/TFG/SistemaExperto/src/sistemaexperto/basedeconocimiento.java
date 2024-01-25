package sistemaexperto;
import Rule.*;

/**
 *
 * @author Familia campos
 */
public class basedeconocimiento {
    BooleanRuleBase Reglas = new BooleanRuleBase("reglas");
    RuleVariable Edad,presbicia,Anomalia,astigmatismo,ojosresecos;
    RuleVariable prepresbicia,sintomaspre,aparicionpre,lente1,lente2;
    String resultado;
    
    public void Conocimiento(){
        presbicia = new RuleVariable(Reglas,"");
        prepresbicia = new RuleVariable(Reglas,"");
        astigmatismo = new RuleVariable(Reglas,"");
        ojosresecos = new RuleVariable(Reglas,"");
        lente1 = new RuleVariable(Reglas,"");
        
        Condition igual = new Condition("=");
 
        Rule regla1 = new Rule(Reglas,"regla1", 
                new Clause[]{
                    new Clause(presbicia,igual,"si"),
                    new Clause(astigmatismo,igual,"si"),
                    new Clause(ojosresecos,igual,"no")},
                        new Clause(lente1,igual,"tiene que usar lentes bifocales de gas permeable")
                );
        Rule regla2 = new Rule(Reglas,"regla2", 
                new Clause[]{
                    new Clause(presbicia,igual,"si"),
                    new Clause(astigmatismo,igual,"no"),
                    new Clause(ojosresecos,igual,"no")},
                        new Clause(lente1,igual,"tiene que usar lentes bifocales suaves")
                );
         Rule regla3 = new Rule(Reglas,"regla3", 
                new Clause[]{
                    new Clause(presbicia,igual,"si"),
                    new Clause(astigmatismo,igual,"si"),
                    new Clause(ojosresecos,igual,"si")},
                        new Clause(lente1,igual,"No puede usar lentes de contanto")
                );
         Rule regla4 = new Rule(Reglas,"regla4", 
                new Clause[]{
                    new Clause(presbicia,igual,"si"),
                    new Clause(astigmatismo,igual,"no"),
                    new Clause(ojosresecos,igual,"si")},
                        new Clause(lente1,igual,"No puede usar lentes de contanto")
                );
        Rule regla5 = new Rule(Reglas,"regla5", 
                new Clause[]{
                    new Clause(prepresbicia,igual,"si"),
                    new Clause(astigmatismo,igual,"si"),
                    new Clause(ojosresecos,igual,"no")},
                        new Clause(lente1,igual,"tiene que usar lentes bifocales de gas permeable")
                );
        Rule regla6 = new Rule(Reglas,"regla6", 
                new Clause[]{
                    new Clause(prepresbicia,igual,"si"),
                    new Clause(astigmatismo,igual,"no"),
                    new Clause(ojosresecos,igual,"no")},
                        new Clause(lente1,igual,"tiene que usar lentes bifocales suaves")
                );
         Rule regla7 = new Rule(Reglas,"regla7", 
                new Clause[]{
                    new Clause(prepresbicia,igual,"si"),
                    new Clause(astigmatismo,igual,"si"),
                    new Clause(ojosresecos,igual,"si")},
                        new Clause(lente1,igual,"No puede usar lentes de contanto")
                );
        Rule regla8 = new Rule(Reglas,"regla8", 
                new Clause[]{
                    new Clause(prepresbicia,igual,"si"),
                    new Clause(astigmatismo,igual,"no"),
                    new Clause(ojosresecos,igual,"si")},
                        new Clause(lente1,igual,"No puede usar lentes de contanto")
                );
         Rule regla9 = new Rule(Reglas,"regla7", 
                new Clause[]{
                    new Clause(prepresbicia,igual,"no"),
                    new Clause(astigmatismo,igual,"si"),
                    new Clause(ojosresecos,igual,"no")},
                        new Clause(lente1,igual,"tiene que usar lentes de gas permeable")
                );
        Rule regla10 = new Rule(Reglas,"regla8", 
                new Clause[]{
                    new Clause(prepresbicia,igual,"no"),
                    new Clause(astigmatismo,igual,"no"),
                    new Clause(ojosresecos,igual,"no")},
                        new Clause(lente1,igual,"tiene que usar lentes suaves")
                );
        Rule regla11 = new Rule(Reglas,"regla11", 
                new Clause[]{
                    new Clause(prepresbicia,igual,"no"),
                    new Clause(astigmatismo,igual,"si"),
                    new Clause(ojosresecos,igual,"si")},
                        new Clause(lente1,igual,"No puede usar lentes de contanto")
                );
        Rule regla12 = new Rule(Reglas,"regla12", 
                new Clause[]{
                    new Clause(prepresbicia,igual,"no"),
                    new Clause(astigmatismo,igual,"no"),
                    new Clause(ojosresecos,igual,"si")},
                        new Clause(lente1,igual,"No puede usar lentes de contanto")
                );
    }
     public String Obtenertipolente1 (String pre, String astig, String ojos){
        Conocimiento();
        presbicia.setValue(pre);
        astigmatismo.setValue(astig);
        ojosresecos.setValue(ojos);
        Reglas.forwardChain();
        resultado = lente1.getValue();
        return resultado;
    }
       public String Obtenertipolente2 (String pre, String astig, String ojos){
        Conocimiento();
        prepresbicia.setValue(pre);
        astigmatismo.setValue(astig);
        ojosresecos.setValue(ojos);
        Reglas.forwardChain();
        resultado = lente1.getValue();
        return resultado;
    }    
}