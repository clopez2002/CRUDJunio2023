package pildoras.es.controlador;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pildoras.es.controlador.entity.Runner;
import pildoras.es.dao.DAO;
import pildoras.es.dao.DAOClass;

import java.util.List;

@org.springframework.stereotype.Controller
@RequestMapping("/runners")
public class Controller {

    @Autowired
    private DAO daoClient;

/*****************************************************************************/

    @RequestMapping("/runnerslist")
    public String runnerListMethod (Model theModel){

        // obtener los runners desde el DAO

        List<Runner> runnerList = daoClient.getRunnerList();

        // agregar los runners al modelo

        theModel.addAttribute("runnerAttribute", runnerList);

        return "runner_list_jspFile";
    }

/*****************************************************************************/

    @RequestMapping("/addRunnerURL")
    public String addRunnerToList (Model theModel){

        // Bind de datos de los runners

        Runner oneRunner = new Runner();

        theModel.addAttribute("runnerAttribute", oneRunner);

        return "addRunnerFile";

    }

/*****************************************************************************/

    @PostMapping("/insertRunnerURL")
    public String insertRunnerMethod (@ModelAttribute("runnerAttribute") Runner theRunner) {

        // insertar runner en la BBDD

        daoClient.insertOneRunner (theRunner);

        return "redirect:/runners/runnerslist";
    }

/*****************************************************************************/

/*****************************************************************************/

/*****************************************************************************/

}
