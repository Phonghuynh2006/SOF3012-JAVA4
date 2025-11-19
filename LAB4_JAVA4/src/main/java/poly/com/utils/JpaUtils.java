package poly.com.utils;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
public class JpaUtils {
    private static EntityManagerFactory emf;
    static {
        emf = Persistence.createEntityManagerFactory("PolyOE"); 
    }
    public static EntityManager getEntityManager() {
        return emf.createEntityManager();
    }
    public static void shutdown() {
        if (emf != null && emf.isOpen()) {
            emf.close();
        }
    }

}
