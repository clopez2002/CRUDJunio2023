package pildoras.es.controlador;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/runners")
public class Controlador {

    @RequestMapping("/runnerslist")
    public String runnerListMethod (){

        return "runner_list_jspFile";
    }

}
