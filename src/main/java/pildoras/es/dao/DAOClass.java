package pildoras.es.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import pildoras.es.controlador.entity.Runner;

import java.util.List;

@Repository                     // para que Spring reconosca esto como en BEAM
public class DAOClass implements DAO{

    @Autowired  // esta anotacion es para hacer la inyeccion de dependencias
    private SessionFactory sessionFactory; // de acuerdo a como esta nombrado en el archivo XML


/*****************************************************************************/

    @Override
    @Transactional
    public List<Runner> getRunnerList() {

        // obtener la sesion

        Session mySession = sessionFactory.getCurrentSession();

        // crear la consulta (qwery) para obtener la info de la bbdd

        Query myQwery = mySession.createQuery("from Runner", Runner.class);

        //ejecutar la consulta y devolver resultados

        List<Runner> runnerList = myQwery.getResultList();

        return runnerList;
    }

/*****************************************************************************/

    @Override
    @Transactional
    public void insertOneRunner(Runner theRunner) {

        // obtener la sesion

        Session mySession = sessionFactory.getCurrentSession();

        // insertar el  maldito runner

        // mySession.save(theRunner); este metodo solo inserta, pero tambien debe poder ACtualizar, por eso usamos el
        // siguiente:

        mySession.saveOrUpdate(theRunner);

    }

/*****************************************************************************/


    @Override
    @Transactional
    public Runner getOneRunner(int id) {

        // obtener la sesion

        Session mySession = sessionFactory.getCurrentSession();

        Runner oneRunner = mySession.get(Runner.class, id);

        return oneRunner;
    }

/*****************************************************************************/

    @Override
    @Transactional
    public void deleteRunner(int id) {

        // obtener la sesion

        Session mySession = sessionFactory.getCurrentSession();

        // borrar el runenr de la BBDD cuyo id sea el que le paso

        Query myQuery = mySession.createQuery("delete from Runner where id=: idRunner");

        myQuery.setParameter("idRunner", id);

        myQuery.executeUpdate();


    }

/*****************************************************************************/

    @Override
    @Transactional
    public Runner getRunnerByDorsal(int dorsalToSearch) {

        // obtener la sesion
        String number = String.valueOf(dorsalToSearch);

        String consulta = "SELECT runner FROM Runner runner WHERE dorsal="+dorsalToSearch;

        System.out.println("Dorsal a buscar: "  + number);

        Session mySession = sessionFactory.getCurrentSession();

        Runner runner = (Runner) mySession.createQuery(consulta).uniqueResult();
        System.out.println("Runner con dorsal =" + runner.getNombre());



        return runner;
    }

/*****************************************************************************/
/*
//      Query myQuery = mySession.createQuery("Select runner from Runner runner");
//
//      List <Runner> runnerList = myQuery.list();
//
//      for (Runner oneRunner : runnerList)
//         System.out.println(oneRunner.getNombre());
//      return null;
*/

/*
        EJ2: aca de los corredores, retornamos una lista con los ID-Nombre y la imprimimos

        Query myQuery = mySession.createQuery("SELECT runner.id,runner.nombre FROM Runner runner");
        List<Object[]> listDatos = myQuery.list();
        for (Object[] datos : listDatos)
            System.out.println(datos[0] + "--" + datos[1]);
 */

/*****************************************************************************/

/*****************************************************************************/

/*****************************************************************************/

/*****************************************************************************/


}
