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

        mySession.save(theRunner);

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

/*****************************************************************************/

/*****************************************************************************/

/*****************************************************************************/

/*****************************************************************************/

}
