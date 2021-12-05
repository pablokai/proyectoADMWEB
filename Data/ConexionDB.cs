using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data
{
    public class ConexionDB
    {

        string cadena = null;
        SqlConnection cnn = null;
        string query = null;

        public void abrirConexion()
        {
            cadena = "Data Source = SQL5063.site4now.net; Initial Catalog = db_a7c11d_sitios; User Id = db_a7c11d_sitios_admin; Password = sqlserver.2021";

            cnn = new SqlConnection(cadena);
            try
            {
                cnn.Open();
            }
            catch (Exception)
            {

                throw new Exception("Error al abrir la conexión con la base de datos");
            }

        }

        public void cerrarConexion()
        {
            cnn.Close();
        }

        public bool loginUsuarios(string id, string password)
        {
            DataTable dt = new DataTable();
            try
            {
                abrirConexion();
                query = "SELECT CASE WHEN EXISTS ( SELECT * FROM USUARIO WHERE IDUSUARIO ='" + id + "' AND CONTRASENA='" + password + "') THEN 'TRUE' ELSE 'FALSE' END";


                SqlDataAdapter da = new SqlDataAdapter(query, cnn);

                da.Fill(dt);

                cnn.Close();

            }
            catch (Exception)
            {
                cerrarConexion();
                throw;
            }
            finally
            {
                cerrarConexion();
            }


            if (dt.Rows[0][0].ToString() == "TRUE")
            {
                return true;
            }
            else
            {
                return false;
            }
        }


        public bool registrarUsuario(string id, string nombre, string primerapellido, string segundoapellido, string fecha, string correo, int telefono, string password)
        {
            DataTable dt = new DataTable();
            try
            {
                abrirConexion();
                query = "INSERT INTO USUARIO ([IDUSUARIO],[NOMBRE],[PRIMER_APELLIDO],[SEGUNDO_APELLIDO],[CORREO],[TELEFONO],[CONTRASENA],[FECHA_NACIMIENTO])  VALUES (@IDUSUARIO, @NOMBRE, @PRIMERAPELLIDO, @SEGUNDOAPELLIDO, @CORREO, @TELEFONO, @CONTRASENA, @FECHA_NACIMIENTO);";


                SqlCommand db = new SqlCommand(query, cnn);

                db.Parameters.AddWithValue("@IDUSUARIO", id);
                db.Parameters.AddWithValue("@NOMBRE", nombre);
                db.Parameters.AddWithValue("@PRIMERAPELLIDO", primerapellido);
                db.Parameters.AddWithValue("@SEGUNDOAPELLIDO", segundoapellido);
                db.Parameters.AddWithValue("@FECHA_NACIMIENTO", fecha);
                db.Parameters.AddWithValue("@CORREO", correo);
                db.Parameters.AddWithValue("@TELEFONO", telefono);
                db.Parameters.AddWithValue("@CONTRASENA", password);

                db.ExecuteNonQuery();

                cnn.Close();

            }
            catch (Exception)
            {
                cerrarConexion();
                return false;
                throw;

            }
            finally
            {
                cerrarConexion();
            }

            return true;

        }

        public void asignarRol(string id, int area, int departamento, int rol)
        {
            try
            {
                abrirConexion();


                switch (rol)
                {
                    case 2:

                        query = "UPDATE USUARIO SET AREA= '" + area + "' ,ROL= '" + rol + "' WHERE IDUSUARIO='" + id + "';";

                        break;
                    case 3:
                        query = "UPDATE USUARIO SET ROL= '" + rol + "' WHERE IDUSUARIO='" + id + "';";

                        break;
                    case 4:
                        query = "UPDATE USUARIO SET AREA= '" + area + "', DEPARTAMENTO='" + departamento + "' , ROL='" + rol + "' WHERE IDUSUARIO='" + id + "';";

                        break;
                    case 5:
                        query = "UPDATE USUARIO SET AREA= '" + area + "', DEPARTAMENTO= '" + departamento + "' ,ROL= '" + rol + "' WHERE IDUSUARIO='" + id + "';";
                        break;
                }


                SqlCommand db = new SqlCommand(query, cnn);
                db.ExecuteNonQuery();
                cnn.Close();


            }
            catch (Exception)
            {
                cerrarConexion();

            }
            finally
            {
                cerrarConexion();
            }


        }


        public void actualizarEstadoSolicitud(int codigo)
        {
            try
            {
                abrirConexion();

                query = "UPDATE [SOLICITUD_ROL] SET  ESTADO  = 1 WHERE CODIGO =" + codigo + " ;";

                SqlCommand db = new SqlCommand(query, cnn);

                db.ExecuteNonQuery();

                cnn.Close();


            }
            catch (Exception)
            {
                cerrarConexion();

            }
            finally
            {
                cerrarConexion();
            }
        }

        public bool cambiarRolDirector(int area)
        {
            try
            {
                abrirConexion();



                query = "UPDATE USUARIO SET ROL=5 WHERE AREA=" + area + " ;";
                SqlCommand db = new SqlCommand(query, cnn);
                db.ExecuteNonQuery();

                cnn.Close();


            }
            catch (Exception)
            {
                cerrarConexion();
                return false;

            }
            finally
            {
                cerrarConexion();
            }

            return true;

        }

        public bool cambiarRolFiscalizador()
        {
            try
            {
                abrirConexion();


                query = "UPDATE USUARIO SET ROL= NULL WHERE ROL= 3;";
                SqlCommand db = new SqlCommand(query, cnn);


                db.ExecuteNonQuery();


                cnn.Close();


            }
            catch (Exception)
            {
                cerrarConexion();
                return false;

            }
            finally
            {
                cerrarConexion();
            }

            return true;

        }
        public bool cambiarRolJefe(int area, int departamento)
        {
            try
            {
                abrirConexion();


                query = "UPDATE USUARIO SET ROL=5 WHERE AREA=" + area + "AND DEPARTAMENTO ='" + departamento + "';";
                SqlCommand db = new SqlCommand(query, cnn);

                db.ExecuteNonQuery();

                cnn.Close();


            }
            catch (Exception)
            {
                cerrarConexion();
                return false;

            }
            finally
            {
                cerrarConexion();
            }

            return true;

        }


        public bool existeDirector(int area)
        {
            DataTable dt = new DataTable();
            try
            {
                abrirConexion();
                query = "  SELECT CASE WHEN EXISTS(SELECT * FROM USUARIO WHERE ROL = 2 AND AREA ='" + area + "' AND DEPARTAMENTO IS NULL) THEN 1 ELSE 0 END;";

                SqlDataAdapter da = new SqlDataAdapter(query, cnn);

                da.Fill(dt);

                cnn.Close();


            }
            catch (Exception)
            {
                cerrarConexion();
                return false;

            }
            finally
            {
                cerrarConexion();
            }

            if (Int32.Parse(dt.Rows[0][0].ToString()) == 1) { return true; }

            return false;

        }

        public bool existeJefe(int area, int departamento)
        {
            DataTable dt = new DataTable();
            try
            {
                abrirConexion();
                query = "  SELECT CASE WHEN EXISTS(SELECT * FROM USUARIO WHERE ROL = 4 AND AREA ='" + area + "' AND DEPARTAMENTO = '" + departamento + "') THEN 1 ELSE 0 END;";
                SqlDataAdapter da = new SqlDataAdapter(query, cnn);

                da.Fill(dt);

                cnn.Close();


            }
            catch (Exception)
            {
                cerrarConexion();
                return false;

            }
            finally
            {
                cerrarConexion();
            }

            if (Int32.Parse(dt.Rows[0][0].ToString()) == 1) { return true; }

            return false;

        }
        public string obtenerRevisionesRol()
        {

            DataTable dt = new DataTable();
            try
            {
                abrirConexion();

                query = "SELECT COUNT(*) FROM [SOLICITUD_ROL] WHERE ESTADO= 0;";

                SqlDataAdapter da = new SqlDataAdapter(query, cnn);

                da.Fill(dt);

                cnn.Close();

            }
            catch (Exception)
            {

                cerrarConexion();
            }
            finally
            {
                cerrarConexion();
            }

            return dt.Rows[0][0].ToString();

        }


        public int obtenerRol(string id)
        {

            DataTable dt = new DataTable();
            try
            {
                abrirConexion();

                query = "SELECT ROL FROM USUARIO WHERE IDUSUARIO='" + id + "';";

                SqlDataAdapter da = new SqlDataAdapter(query, cnn);

                da.Fill(dt);

                cnn.Close();

            }
            catch (Exception)
            {

                cerrarConexion();
            }
            finally
            {
                cerrarConexion();
            }

            if (dt.Rows[0][0] == DBNull.Value)
            {
                return 0;
            }
            else
            {
                return Int32.Parse(dt.Rows[0][0].ToString());
            }
        }


        public int obtenerArea(string id)
        {

            DataTable dt = new DataTable();
            try
            {
                abrirConexion();

                query = "SELECT AREA FROM USUARIO WHERE IDUSUARIO='" + id + "';";

                SqlDataAdapter da = new SqlDataAdapter(query, cnn);

                da.Fill(dt);

                cnn.Close();

            }
            catch (Exception)
            {

                cerrarConexion();
            }
            finally
            {
                cerrarConexion();
            }

            return Int32.Parse(dt.Rows[0][0].ToString());
        }

        public int obtenerDepartamento(string id)
        {

            DataTable dt = new DataTable();
            try
            {
                abrirConexion();

                query = "SELECT DEPARTAMENTO FROM USUARIO WHERE IDUSUARIO='" + id + "';";

                SqlDataAdapter da = new SqlDataAdapter(query, cnn);

                da.Fill(dt);

                cnn.Close();

            }
            catch (Exception)
            {

                cerrarConexion();
            }
            finally
            {
                cerrarConexion();
            }

            return Int32.Parse(dt.Rows[0][0].ToString());
        }


        public DataTable ObtenerAreas()
        {

            DataTable tabla = new DataTable();
            try
            {

                abrirConexion();

                query = "SELECT DESCRIPCION from AREAS";

                SqlDataAdapter da = new SqlDataAdapter(query, cnn);

                da.Fill(tabla);

                cnn.Close();


            }
            catch (Exception ex)
            {
                cerrarConexion();
                throw new Exception("No se pudo agregar los datos, detalles: " + ex.Message);
            }
            finally
            {
                cerrarConexion();
            }

            return tabla;
        }

        public DataTable ObtenerDepartamentos()
        {

            DataTable tabla = new DataTable();
            try
            {

                abrirConexion();

                query = "SELECT DESCRIPCION from DEPARTAMENTOS";

                SqlDataAdapter da = new SqlDataAdapter(query, cnn);

                da.Fill(tabla);

                cnn.Close();


            }
            catch (Exception ex)
            {
                cerrarConexion();
                throw new Exception("No se pudo agregar los datos, detalles: " + ex.Message);
            }
            finally
            {
                cerrarConexion();
            }

            return tabla;
        }

        public bool solicitarRol(string id, int rol, int area, int departamento)
        {
            try
            {

                abrirConexion();

                query = "INSERT INTO SOLICITUD_ROL VALUES (@IDUSUARIO, @ROL, @AREA, @DEPARTAMENTO, @ESTADO);";

                SqlCommand db = new SqlCommand(query, cnn);

                db.Parameters.AddWithValue("@IDUSUARIO", id);
                db.Parameters.AddWithValue("@ROL", rol);
                if (area == 0)
                {
                    db.Parameters.AddWithValue("@AREA", DBNull.Value);
                }
                else
                {
                    db.Parameters.AddWithValue("@AREA", area);
                }

                if (departamento == 0)
                {
                    db.Parameters.AddWithValue("@DEPARTAMENTO", DBNull.Value);
                }
                else
                {
                    db.Parameters.AddWithValue("@DEPARTAMENTO", departamento);
                }

                db.Parameters.AddWithValue("@ESTADO", 0);

                db.ExecuteNonQuery();

                cnn.Close();


            }
            catch (Exception)
            {

                cerrarConexion();
            }
            finally
            {
                cerrarConexion();
            }

            return true;

        }

        public int obtenerAreaDepartamento(int departamento)
        {

            DataTable dt = new DataTable();
            try
            {

                abrirConexion();

                query = "SELECT IDAREA FROM DEPARTAMENTOS WHERE IDDEPARTAMENTO='" + departamento + "';";

                SqlDataAdapter da = new SqlDataAdapter(query, cnn);

                da.Fill(dt);

                cnn.Close();

            }
            catch (Exception)
            {

                cerrarConexion();
            }
            finally
            {
                cerrarConexion();
            }

            return Int32.Parse(dt.Rows[0][0].ToString());
        }


        public DataTable obtenerSolicitudes()
        {

            DataTable tabla = new DataTable();
            try
            {

                abrirConexion();

                query = "SELECT CODIGO, IDUSUARIO, ROL,CASE WHEN AREA IS NULL THEN 'SIN ÁREA' ELSE cast(AREA as varchar) END AS 'AREA',CASE WHEN DEPARTAMENTO IS NULL THEN 'SIN DEPARTAMENTO' ELSE cast(DEPARTAMENTO as varchar) END AS 'DEPARTAMENTO', CASE WHEN ESTADO = 0 THEN 'PENDIENTE' END AS 'ESTADO' from SOLICITUD_ROL WHERE ESTADO = 0 ;";

                SqlDataAdapter da = new SqlDataAdapter(query, cnn);

                da.Fill(tabla);

                cnn.Close();


            }
            catch (Exception ex)
            {
                cerrarConexion();
                throw new Exception("No se pudo agregar los datos, detalles: " + ex.Message);
            }
            finally
            {
                cerrarConexion();
            }

            return tabla;
        }


        public string obtenerNombre(string id)
        {

            DataTable dt = new DataTable();
            try
            {
                abrirConexion();

                query = "SELECT NOMBRE USUARIO FROM USUARIO WHERE IDUSUARIO='" + id + "';";

                SqlDataAdapter da = new SqlDataAdapter(query, cnn);

                da.Fill(dt);

                cnn.Close();

            }
            catch (Exception)
            {

                cerrarConexion();
            }
            finally
            {
                cerrarConexion();
            }

            return (dt.Rows[0][0].ToString());
        }


        public DataTable obtenerEvaluaciones()
        {

            DataTable dt = new DataTable();
            try
            {
                abrirConexion();

                query = "  SELECT r.ID_EVALUACIONES_RESPUESTA as IDEVALUACION, e.DESCRIPCION, e.FECHA, a.DESCRIPCION as AREA , e.IDPERIODO,  d.DESCRIPCION AS DEPARTAMENTO FROM EVALUACIONES e, DEPARTAMENTOS d, AREAS a, EVALUACIONES_RESPUESTAS r where a.IDAREA = e.IDAREA and r.IDDEPARTAMENTO = d.IDDEPARTAMENTO AND ESTADO = 1 AND e.IDEVALUACION = r.IDEVALUACION";

                SqlDataAdapter da = new SqlDataAdapter(query, cnn);

                da.Fill(dt);

                cnn.Close();

            }
            catch (Exception)
            {

                cerrarConexion();
            }
            finally
            {
                cerrarConexion();
            }

            return dt;
        }

        public int obtenerDepartamentoID(int evaluacion)
        {

            DataTable dt = new DataTable();
            try
            {
                abrirConexion();

                query = "  SELECT IDDEPARTAMENTO FROM EVALUACIONES_RESPUESTAS where ID_EVALUACIONES_RESPUESTA= '" + evaluacion + "';";

                SqlDataAdapter da = new SqlDataAdapter(query, cnn);

                da.Fill(dt);

                cnn.Close();

            }
            catch (Exception)
            {

                cerrarConexion();
            }
            finally
            {
                cerrarConexion();
            }

            return Int32.Parse(dt.Rows[0][0].ToString());
        }

        public DataTable obtenerRespuestas(int idevaluacion, int componente, int eje, int departamento, int nivel)
        {

            DataTable dt = new DataTable();
            try
            {
                abrirConexion();

                query = " SELECT e.ID_EVALUACION_EVIDENCIA AS ID, p.DESCRIPCION AS PREGUNTA, CASE WHEN e.DESCRIPCION IS NULL THEN 'Sin respuesta' ELSE e.DESCRIPCION  END AS RESPUESTA , p.OBLIGATORIO AS ESTADO FROM EVALUACIONES_EVIDENCIAS e INNER JOIN EVALUACIONES_PUNTOS p ON p.ID_EVALUACION_PUNTO = e.ID_EVALUACION_PUNTO WHERE e.ESTADO_RESPUESTA = 1 AND e.ESTADO_REVISION = 0 AND e.ID_EVALUACIONES_RESPUESTAS = '" + idevaluacion + "' AND e.IDEJE = '" + eje + "' AND e.IDCOMPONENTE = '" + componente + "' AND e.IDNIVEL = '" + nivel + "'; ";

                SqlDataAdapter da = new SqlDataAdapter(query, cnn);

                da.Fill(dt);

                cnn.Close();

            }
            catch (Exception)
            {

                cerrarConexion();
            }
            finally
            {
                cerrarConexion();
            }

            return dt;
        }


        public void modificarRevision(int idevaluacion, int estado)
        {
            try
            {
                abrirConexion();
                query = "  UPDATE EVALUACIONES_EVIDENCIAS SET ESTADO_REVISION ='" + estado + "'WHERE ID_EVALUACION_EVIDENCIA ='" + idevaluacion + "';";

                SqlCommand bd = new SqlCommand(query, cnn);

                bd.ExecuteNonQuery();

            }
            catch (Exception)
            {

                cerrarConexion();
            }
            finally
            {
                cerrarConexion();
            }
        }
        public string obtenerNombreComponente(int id)
        {

            DataTable dt = new DataTable();
            try
            {
                abrirConexion();

                query = "SELECT DESCRIPCION FROM COMPONENTES where IDCOMPONENTE = '" + id + "';";

                SqlDataAdapter da = new SqlDataAdapter(query, cnn);

                da.Fill(dt);

                cnn.Close();

            }
            catch (Exception)
            {

                cerrarConexion();
            }
            finally
            {
                cerrarConexion();
            }

            return dt.Rows[0][0].ToString();
        }

        public string obtenerNombreEje(int id)
        {

            DataTable dt = new DataTable();
            try
            {
                abrirConexion();

                query = "SELECT DESCRIPCION FROM EJES where IDEJE = '" + id + "';";

                SqlDataAdapter da = new SqlDataAdapter(query, cnn);

                da.Fill(dt);

                cnn.Close();

            }
            catch (Exception)
            {

                cerrarConexion();
            }
            finally
            {
                cerrarConexion();
            }

            return dt.Rows[0][0].ToString();
        }


        public string calcularPorcentaje(int id)
        {

            DataTable dt = new DataTable();
            try
            {
                abrirConexion();

                query = "SELECT COUNT(ESTADO_REVISION) * 100 / (SELECT Count(*) FROM EVALUACIONES_EVIDENCIAS) FROM EVALUACIONES_EVIDENCIAS WHERE ESTADO_REVISION = 1 OR ESTADO_REVISION = 2 AND IDEVALUACION='" + id + "';";

                SqlDataAdapter da = new SqlDataAdapter(query, cnn);

                da.Fill(dt);

                cnn.Close();

            }
            catch (Exception)
            {

                cerrarConexion();
            }
            finally
            {
                cerrarConexion();
            }

            return dt.Rows[0][0].ToString() + "%";
        }

        public string contarRevisadas()
        {

            DataTable dt = new DataTable();
            try
            {
                abrirConexion();

                query = "SELECT COUNT(*) from [EVALUACIONES_RESPUESTAS] WHERE ESTADO = 1";

                SqlDataAdapter da = new SqlDataAdapter(query, cnn);

                da.Fill(dt);

                cnn.Close();

            }
            catch (Exception)
            {

                cerrarConexion();
            }
            finally
            {
                cerrarConexion();
            }

            return dt.Rows[0][0].ToString();
        }

        public int obtenerIDNivel(string nivel, int eje, int componente)
        {

            DataTable dt = new DataTable();
            try
            {
                abrirConexion();

                query = " SELECT n.IDNIVEL FROM NIVELES n INNER JOIN EVALUACIONES_EVIDENCIAS e ON n.IDNIVEL = e.IDNIVEL WHERE n.DESCRIPCION = '" + nivel + "' AND e.IDCOMPONENTE = '" + componente + "'AND e.IDEJE = '" + eje + "';";

                SqlDataAdapter da = new SqlDataAdapter(query, cnn);

                da.Fill(dt);

                cnn.Close();

            }
            catch (Exception)
            {

                cerrarConexion();
            }
            finally
            {
                cerrarConexion();
            }

            return Int32.Parse(dt.Rows[0][0].ToString());
        }

        public bool ModUsr(string IDUSUARIO, string NOMBRE, string PRIMER_APELLIDO, string SEGUNDO_APELLIDO, string CORREO, int TELEFONO, string CONTRASENA, string FECHA_NACIMIENTO)
        {
            DataTable dt = new DataTable();
            try
            {
                abrirConexion();
                query = "update USUARIO set NOMBRE = '" + NOMBRE + "',PRIMER_APELLIDO='" + PRIMER_APELLIDO + "',SEGUNDO_APELLIDO='" + SEGUNDO_APELLIDO + "',CORREO='" + CORREO + "',TELEFONO='" + TELEFONO + "',CONTRASENA='" + CONTRASENA + "',FECHA_NACIMIENTO='" + FECHA_NACIMIENTO + "' where IDUSUARIO = '" + IDUSUARIO + "'";
                SqlDataAdapter da = new SqlDataAdapter(query, cnn);
                da.Fill(dt);
                cnn.Close();
                return true;
            }
            catch (Exception)
            {
                cerrarConexion();
                throw;
            }
            finally
            {
                cerrarConexion();
            }

        }

        public int obtenerIDDepartamento(string nombre)
        {

            DataTable dt = new DataTable();
            try
            {
                abrirConexion();

                query = "SELECT IDDEPARTAMENTO FROM DEPARTAMENTOS where DESCRIPCION = '" + nombre + "';";

                SqlDataAdapter da = new SqlDataAdapter(query, cnn);

                da.Fill(dt);

                cnn.Close();

            }
            catch (Exception)
            {

                cerrarConexion();
            }
            finally
            {
                cerrarConexion();
            }

            return Int32.Parse(dt.Rows[0][0].ToString());
        }

        public int obtenerIDArea(string nombre)
        {

            DataTable dt = new DataTable();
            try
            {
                abrirConexion();

                query = "SELECT IDAREA FROM AREAS where DESCRIPCION = '" + nombre + "';";

                SqlDataAdapter da = new SqlDataAdapter(query, cnn);

                da.Fill(dt);

                cnn.Close();

            }
            catch (Exception)
            {

                cerrarConexion();
            }
            finally
            {
                cerrarConexion();
            }

            return Int32.Parse(dt.Rows[0][0].ToString());
        }

        public string obtenerNombreDep(int id)
        {

            DataTable dt = new DataTable();
            try
            {
                abrirConexion();

                query = "SELECT DESCRIPCION FROM DEPARTAMENTOS where IDDEPARTAMENTO = '" + id + "';";

                SqlDataAdapter da = new SqlDataAdapter(query, cnn);

                da.Fill(dt);

                cnn.Close();

            }
            catch (Exception)
            {

                cerrarConexion();
            }
            finally
            {
                cerrarConexion();
            }

            return dt.Rows[0][0].ToString();
        }

        public string obtenerNombreArea(int id)
        {

            DataTable dt = new DataTable();
            try
            {
                abrirConexion();

                query = "SELECT DESCRIPCION FROM AREAS where IDAREA = '" + id + "';";

                SqlDataAdapter da = new SqlDataAdapter(query, cnn);

                da.Fill(dt);

                cnn.Close();

            }
            catch (Exception)
            {

                cerrarConexion();
            }
            finally
            {
                cerrarConexion();
            }

            return dt.Rows[0][0].ToString();
        }



        public string obtenerCorreoEncargadoDep(int id)
        {

            DataTable dt = new DataTable();
            try
            {
                abrirConexion();

                query = "SELECT CORREO FROM USUARIO where DEPARTAMENTO = '" + id + "';";

                SqlDataAdapter da = new SqlDataAdapter(query, cnn);

                da.Fill(dt);

                cnn.Close();

            }
            catch (Exception)
            {

                cerrarConexion();
            }
            finally
            {
                cerrarConexion();
            }

            return dt.Rows[0][0].ToString();
        }


        public string obtenerCorreoDirector(int id)
        {

            DataTable dt = new DataTable();
            try
            {
                abrirConexion();

                query = "  SELECT CORREO FROM USUARIO where ROL = 2 AND AREA = '" + id + "';";

                SqlDataAdapter da = new SqlDataAdapter(query, cnn);

                da.Fill(dt);

                cnn.Close();

            }
            catch (Exception)
            {

                cerrarConexion();
            }
            finally
            {
                cerrarConexion();
            }

            return dt.Rows[0][0].ToString();
        }
        public string obtenerCorreoPersona(string id)
        {

            DataTable dt = new DataTable();
            try
            {
                abrirConexion();

                query = "SELECT CORREO FROM USUARIO where IDUSUARIO = '" + id + "';";

                SqlDataAdapter da = new SqlDataAdapter(query, cnn);

                da.Fill(dt);

                cnn.Close();

            }
            catch (Exception)
            {

                cerrarConexion();
            }
            finally
            {
                cerrarConexion();
            }

            return dt.Rows[0][0].ToString();
        }

        public string rolNombre(int id)
        {

            DataTable dt = new DataTable();
            try
            {
                abrirConexion();

                query = "SELECT DESCRIPCION FROM ROLES where IDROL = '" + id + "';";

                SqlDataAdapter da = new SqlDataAdapter(query, cnn);

                da.Fill(dt);

                cnn.Close();

            }
            catch (Exception)
            {

                cerrarConexion();
            }
            finally
            {
                cerrarConexion();
            }

            return dt.Rows[0][0].ToString();
        }

        public bool verificarEvaluacionPendiente(int departamento, int id)
        {

            DataTable dt = new DataTable();
            try
            {
                abrirConexion();

                query = "SELECT ESTADO FROM EVALUACIONES_RESPUESTAS WHERE IDDEPARTAMENTO='" + departamento + "' AND ID_EVALUACIONES_RESPUESTA = " + id + ";";

                SqlDataAdapter da = new SqlDataAdapter(query, cnn);

                da.Fill(dt);

                cnn.Close();

            }
            catch (Exception)
            {

                cerrarConexion();
            }
            finally
            {
                cerrarConexion();
            }

            if (Int32.Parse(dt.Rows[0][0].ToString()) == 0)
            {
                return true;
            }

            return false;

        }

        public DataTable obtenerDatosporID(string id)
        {

            DataTable dt = new DataTable();
            try
            {
                abrirConexion();

                query = "SELECT * FROM USUARIO where IDUSUARIO = '" + id + "';";

                SqlDataAdapter da = new SqlDataAdapter(query, cnn);

                da.Fill(dt);

                cnn.Close();

            }
            catch (Exception)
            {

                cerrarConexion();
            }
            finally
            {
                cerrarConexion();
            }

            return dt;
        }

        public int obtenerEvalucionPorDepartamento(int id)
        {

            DataTable dt = new DataTable();
            try
            {
                abrirConexion();

                query = "  SELECT TOP 1 ID_EVALUACIONES_RESPUESTA FROM EVALUACIONES_RESPUESTAS WHERE IDDEPARTAMENTO = " + id + " ORDER BY ID_EVALUACIONES_RESPUESTA DESC ;";

                SqlDataAdapter da = new SqlDataAdapter(query, cnn);

                da.Fill(dt);

                cnn.Close();

            }
            catch (Exception)
            {

                cerrarConexion();
            }
            finally
            {
                cerrarConexion();
            }

            return Int32.Parse(dt.Rows[0][0].ToString());
        }

        public DataTable obtenerPreguntas(int idevaluacion, int eje, int componente, int nivel)
        {

            DataTable dt = new DataTable();
            try
            {
                abrirConexion();

                query = "SELECT e.ID_EVALUACION_EVIDENCIA AS ID, p.DESCRIPCION AS PREGUNTA, CASE WHEN e.DESCRIPCION IS NULL THEN 'Sin responder' END AS RESPUESTA, p.OBLIGATORIO AS ESTADO FROM EVALUACIONES_EVIDENCIAS e INNER JOIN EVALUACIONES_PUNTOS p ON p.ID_EVALUACION_PUNTO = e.ID_EVALUACION_PUNTO WHERE e.ESTADO_RESPUESTA = 0 AND e.ESTADO_REVISION = 0 AND e.ID_EVALUACIONES_RESPUESTAS = '" + idevaluacion + "' AND e.IDEJE = '" + eje + "' AND e.IDCOMPONENTE = '" + componente + "' AND e.IDNIVEL = '" + nivel + "'; ";

                SqlDataAdapter da = new SqlDataAdapter(query, cnn);

                da.Fill(dt);

                cnn.Close();

            }
            catch (Exception)
            {

                cerrarConexion();
            }
            finally
            {
                cerrarConexion();
            }

            return dt;
        }

        public int area_x_depa(int IDDEPARTAMENTO)
        {

            DataTable dt = new DataTable();
            try
            {
                abrirConexion();
                query = "SELECT IDAREA FROM DEPARTAMENTOS WHERE IDDEPARTAMENTO ='" + IDDEPARTAMENTO + "'";

                SqlDataAdapter da = new SqlDataAdapter(query, cnn);
                da.Fill(dt);
                cnn.Close();
            }
            catch (Exception)
            {
                cerrarConexion();
            }
            finally
            {
                cerrarConexion();
            }
            return Int32.Parse(dt.Rows[0][0].ToString());
        }

        public string obtenerNombrePeriodo(int IDDEPARTAMENTO)
        {

            DataTable dt = new DataTable();
            try
            {
                abrirConexion();
                query = "  SELECT p.DESCRIPCION FROM PERIODOS p, EVALUACIONES e WHERE  p.IDPERIODO = e.IDPERIODO AND e.IDEVALUACION IN(SELECT IDEVALUACION FROM  EVALUACIONES_RESPUESTAS WHERE IDDEPARTAMENTO = " + IDDEPARTAMENTO + ")";

                SqlDataAdapter da = new SqlDataAdapter(query, cnn);
                da.Fill(dt);
                cnn.Close();
            }
            catch (Exception)
            {
                cerrarConexion();
            }
            finally
            {
                cerrarConexion();
            }
            return dt.Rows[0][0].ToString();
        }

        public string obtenerFechaPeriodo(int IDDEPARTAMENTO)
        {

            DataTable dt = new DataTable();
            try
            {
                abrirConexion();
                query = "SELECT p.FECHA_FINAL FROM PERIODOS p, EVALUACIONES e WHERE  p.IDPERIODO = e.IDPERIODO AND e.IDEVALUACION  IN(SELECT IDEVALUACION FROM  EVALUACIONES_RESPUESTAS WHERE IDDEPARTAMENTO=" + IDDEPARTAMENTO + ")";

                SqlDataAdapter da = new SqlDataAdapter(query, cnn);
                da.Fill(dt);
                cnn.Close();
            }
            catch (Exception)
            {
                cerrarConexion();
            }
            finally
            {
                cerrarConexion();
            }

            string fecha = dt.Rows[0][0].ToString();


            return fecha.Substring(0, 10);
        }

        public string obtenerRestantes(int idevaluacion, int eje)
        {

            DataTable dt = new DataTable();
            try
            {
                abrirConexion();
                query = "  SELECT COUNT( e.ID_EVALUACION_EVIDENCIA) AS TOTAL FROM EVALUACIONES_EVIDENCIAS e INNER JOIN EVALUACIONES_PUNTOS p ON p.ID_EVALUACION_PUNTO = e.ID_EVALUACION_PUNTO WHERE e.ESTADO_RESPUESTA = 0 AND e.ESTADO_REVISION = 0 AND e.ID_EVALUACIONES_RESPUESTAS = '" + idevaluacion + "' AND e.IDEJE = '" + eje + "' ;";

                SqlDataAdapter da = new SqlDataAdapter(query, cnn);
                da.Fill(dt);
                cnn.Close();
            }
            catch (Exception)
            {
                cerrarConexion();
            }
            finally
            {
                cerrarConexion();
            }

            return dt.Rows[0][0].ToString();

        }

        public void modificarRespuesta(int idevaluacion, string respuesta)
        {
            try
            {
                abrirConexion();
                query = "UPDATE EVALUACIONES_EVIDENCIAS SET ESTADO_RESPUESTA = 1 , DESCRIPCION = '" + respuesta + "' WHERE ID_EVALUACION_EVIDENCIA = " + idevaluacion + ";";

                SqlCommand bd = new SqlCommand(query, cnn);

                bd.ExecuteNonQuery();

            }
            catch (Exception)
            {

                cerrarConexion();
            }
            finally
            {
                cerrarConexion();
            }
        }

        public DataTable VerUSRConfig(string IDUSUARIO)
        {
            DataTable dt = new DataTable();
            try
            {
                abrirConexion();
                query = "select NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,CORREO,TELEFONO,CONTRASENA,FECHA_NACIMIENTO from USUARIO where IDUSUARIO = '" + IDUSUARIO + "'";

                SqlDataAdapter da = new SqlDataAdapter(query, cnn);
                da.Fill(dt);
                cnn.Close();
            }
            catch (Exception)
            {
                cerrarConexion();
            }
            finally
            {
                cerrarConexion();
            }
            return dt;
        }

        public string restantesPorComponente(int idevaluacion, int componente)
        {
            DataTable dt = new DataTable();
            try
            {
                abrirConexion();
                query = "SELECT COUNT( e.ESTADO_RESPUESTA) FROM EVALUACIONES_EVIDENCIAS e WHERE e.ESTADO_RESPUESTA =0 AND ID_EVALUACIONES_RESPUESTAS= " + idevaluacion + "AND IDCOMPONENTE = " + componente + ";";
                ;

                SqlDataAdapter da = new SqlDataAdapter(query, cnn);
                da.Fill(dt);
                cnn.Close();
            }
            catch (Exception)
            {
                cerrarConexion();
            }
            finally
            {
                cerrarConexion();
            }
            return dt.Rows[0][0].ToString();
        }


        public string restantesPorComponenteRevisar(int idevaluacion, int componente)
        {
            DataTable dt = new DataTable();
            try
            {
                abrirConexion();
                query = "SELECT COUNT( e.ESTADO_RESPUESTA) FROM EVALUACIONES_EVIDENCIAS e WHERE e.ESTADO_REVISION =0 AND ID_EVALUACIONES_RESPUESTAS= " + idevaluacion + "AND IDCOMPONENTE = " + componente + ";";
                ;

                SqlDataAdapter da = new SqlDataAdapter(query, cnn);
                da.Fill(dt);
                cnn.Close();
            }
            catch (Exception)
            {
                cerrarConexion();
            }
            finally
            {
                cerrarConexion();
            }
            return dt.Rows[0][0].ToString();
        }

        public int obtenerNumRestantes(int idevaluacion)
        {
            DataTable dt = new DataTable();
            try
            {
                abrirConexion();
                query = "  SELECT COUNT( e.ESTADO_RESPUESTA) FROM EVALUACIONES_EVIDENCIAS e WHERE e.ESTADO_RESPUESTA =0 AND ID_EVALUACIONES_RESPUESTAS=" + idevaluacion + ";";

                SqlDataAdapter da = new SqlDataAdapter(query, cnn);
                da.Fill(dt);
                cnn.Close();
            }
            catch (Exception)
            {
                cerrarConexion();
            }
            finally
            {
                cerrarConexion();
            }
            return Int32.Parse(dt.Rows[0][0].ToString());
        }

        public void enviarIncompleta(int idevaluacion)
        {

            DataTable dt = new DataTable();
            try
            {
                abrirConexion();
                query = "UPDATE EVALUACIONES_EVIDENCIAS SET ESTADO_RESPUESTA = 1 WHERE ID_EVALUACIONES_RESPUESTAS = " + idevaluacion + ";";

                SqlDataAdapter da = new SqlDataAdapter(query, cnn);
                da.Fill(dt);
                cnn.Close();
            }
            catch (Exception)
            {
                cerrarConexion();
            }
            finally
            {
                cerrarConexion();
            }
        }

        public void enviarEvaluacion(int idevaluacion)
        {

            DataTable dt = new DataTable();
            try
            {
                abrirConexion();
                query = "  UPDATE EVALUACIONES_RESPUESTAS SET ESTADO = 1 WHERE ID_EVALUACIONES_RESPUESTA =" + idevaluacion + ";";

                SqlDataAdapter da = new SqlDataAdapter(query, cnn);
                da.Fill(dt);
                cnn.Close();
            }
            catch (Exception)
            {
                cerrarConexion();
            }
            finally
            {
                cerrarConexion();
            }
        }

        public void revisarIncompleta(int idevaluacion)
        {

            DataTable dt = new DataTable();
            try
            {
                abrirConexion();
                query = "UPDATE EVALUACIONES_EVIDENCIAS SET ESTADO_REVISION = 2 WHERE ID_EVALUACIONES_RESPUESTAS = " + idevaluacion + ";";

                SqlDataAdapter da = new SqlDataAdapter(query, cnn);
                da.Fill(dt);
                cnn.Close();
            }
            catch (Exception)
            {
                cerrarConexion();
            }
            finally
            {
                cerrarConexion();
            }
        }

        public void enviarRevision(int idevaluacion)
        {

            DataTable dt = new DataTable();
            try
            {
                abrirConexion();
                query = "UPDATE EVALUACIONES_RESPUESTAS SET ESTADO = 2 WHERE ID_EVALUACIONES_RESPUESTA =" + idevaluacion + ";";

                SqlDataAdapter da = new SqlDataAdapter(query, cnn);
                da.Fill(dt);
                cnn.Close();
            }
            catch (Exception)
            {
                cerrarConexion();
            }
            finally
            {
                cerrarConexion();
            }
        }



        public DataTable obtenerPeriodos()
        {

            DataTable dt = new DataTable();
            try
            {
                abrirConexion();

                query = "SELECT IDPERIODO ,DESCRIPCION ,FECHA_INICIO ,FECHA_FINAL, CASE WHEN ESTADO = 1 THEN 'Activo' ELSE 'Inactivo' END AS ESTADO FROM PERIODOS";

                SqlDataAdapter da = new SqlDataAdapter(query, cnn);

                da.Fill(dt);

                cnn.Close();

            }
            catch (Exception)
            {

                cerrarConexion();
            }
            finally
            {
                cerrarConexion();
            }

            return dt;
        }

        public bool abrirPeriodo(string descripcion, string inicio, string final)
        {
            try
            {

                abrirConexion();

                query = "INSERT INTO PERIODOS VALUES (@DESCRIPCION, @FECHA_INICIO, @FECHA_FINAL, @ESTADO);";

                SqlCommand db = new SqlCommand(query, cnn);

                db.Parameters.AddWithValue("@DESCRIPCION", descripcion);
                db.Parameters.AddWithValue("@FECHA_INICIO", inicio);
                db.Parameters.AddWithValue("@FECHA_FINAL", final);
                db.Parameters.AddWithValue("@ESTADO", 1);

                db.ExecuteNonQuery();

                cnn.Close();


            }
            catch (Exception)
            {

                cerrarConexion();
            }
            finally
            {
                cerrarConexion();
            }

            return true;

        }

        public int obtenerDepartamentosActivos()
        {
            DataTable dt = new DataTable();
            try
            {
                abrirConexion();
                query = "SELECT COUNT(IDDEPARTAMENTO) FROM DEPARTAMENTOS";

                SqlDataAdapter da = new SqlDataAdapter(query, cnn);
                da.Fill(dt);
                cnn.Close();
            }
            catch (Exception)
            {
                cerrarConexion();
            }
            finally
            {
                cerrarConexion();
            }
            return Int32.Parse(dt.Rows[0][0].ToString());
        }

        public DataTable obtenerEvaluacionesDepartamento(int dep)
        {
            DataTable dt = new DataTable();
            try
            {
                abrirConexion();

                query = "SELECT ID_EVALUACIONES_RESPUESTA FROM EVALUACIONES_RESPUESTAS WHERE IDDEPARTAMENTO = " + dep +
                    "AND ESTADO = 2;";

                SqlDataAdapter da = new SqlDataAdapter(query, cnn);

                da.Fill(dt);

                cnn.Close();

            }
            catch (Exception)
            {

                cerrarConexion();
            }
            finally
            {
                cerrarConexion();
            }

            return dt;
        }


        public DataTable mostrarpendeientes7x(int IDCOMPONENTE, int IDEJE, string DESCRIPCION, int IDEVALUACION)
        {
            DataTable dt = new DataTable();
            try
            {
                abrirConexion();

                query = "select p.ID_EVALUACION_PUNTO,p.DESCRIPCION,n.DESCRIPCION as Nivel from EVALUACIONES_PUNTOS p,NIVELES n, EVALUACIONES e where p.IDCOMPONENTE = '" + IDCOMPONENTE + "' and p.IDEJE = '" + IDEJE + "' and n.DESCRIPCION = '" + DESCRIPCION + "' and p.IDNIVEL = n.IDNIVEL and p.IDEVALUACION = e.IDEVALUACION and e.IDEVALUACION = '" + IDEVALUACION + "'";

                SqlDataAdapter da = new SqlDataAdapter(query, cnn);

                da.Fill(dt);
                cnn.Close();

            }
            catch (Exception)
            {

                cerrarConexion();
            }
            finally
            {
                cerrarConexion();
            }
            return dt;
        }

        public string indiceMadurez(int departamento, int evaluacion, int respuesta)
        {
            DataTable dt = new DataTable();
            try
            {
                abrirConexion();
                SqlCommand cmd = new SqlCommand();
                SqlDataAdapter da = new SqlDataAdapter();

                cmd = new SqlCommand("sp_suma_global", cnn);
                cmd.Parameters.Add(new SqlParameter("@iddepartamento", departamento));
                cmd.Parameters.Add(new SqlParameter("@idevaluacion", evaluacion));
                cmd.Parameters.Add(new SqlParameter("@id_eva_res", respuesta));
                cmd.CommandType = CommandType.StoredProcedure;
                da.SelectCommand = cmd;
                da.Fill(dt);

            }
            catch (Exception)
            {
                cerrarConexion();
            }
            finally
            {
                cerrarConexion();
            }

            if (dt.Rows[0][0] == DBNull.Value || dt.Rows[0][0].ToString() == "0")
            {
                return "N/A";
            }

            string num = dt.Rows[0][0].ToString();

            if (num.Substring(0, 3) == "100")
            {
                return dt.Rows[0][0].ToString().Substring(0, 3);
            }

            if (num[1] == '.')
            {
                return num.Substring(0, 1);
            }

            return num.Substring(0, 2);
        }

        public int obtenerIDEvaluacion(int id)
        {
            DataTable dt = new DataTable();
            try
            {
                abrirConexion();
                query = "SELECT IDEVALUACION FROM EVALUACIONES_RESPUESTAS WHERE  ID_EVALUACIONES_RESPUESTA=" + id + ";";

                SqlDataAdapter da = new SqlDataAdapter(query, cnn);
                da.Fill(dt);
                cnn.Close();
            }
            catch (Exception)
            {
                cerrarConexion();
            }
            finally
            {
                cerrarConexion();
            }
            return Int32.Parse(dt.Rows[0][0].ToString());
        }

        public int obtenerUltimoMachote()
        {
            DataTable dt = new DataTable();
            try
            {
                abrirConexion();
                query = "select top 1 IDEVALUACION from EVALUACIONES order by IDEVALUACION desc";

                SqlDataAdapter da = new SqlDataAdapter(query, cnn);
                da.Fill(dt);
                cnn.Close();
            }
            catch (Exception)
            {
                cerrarConexion();
            }
            finally
            {
                cerrarConexion();
            }
            return Int32.Parse(dt.Rows[0][0].ToString());
        }

        public string puntuacionComponente(int departamento, int evaluacion, int respuesta, int componente)
        {
            DataTable dt = new DataTable();
            try
            {
                abrirConexion();
                SqlCommand cmd = new SqlCommand();
                SqlDataAdapter da = new SqlDataAdapter();

                cmd = new SqlCommand("sp_suma_componente", cnn);
                cmd.Parameters.Add(new SqlParameter("@iddepartamento", departamento));
                cmd.Parameters.Add(new SqlParameter("@idevaluacion", evaluacion));
                cmd.Parameters.Add(new SqlParameter("@id_eva_res", respuesta));
                cmd.Parameters.Add(new SqlParameter("@idcomponente", componente));
                cmd.CommandType = CommandType.StoredProcedure;
                da.SelectCommand = cmd;
                da.Fill(dt);

            }
            catch (Exception)
            {
                cerrarConexion();
            }
            finally
            {
                cerrarConexion();
            }

            if (dt.Rows[0][0] == DBNull.Value || dt.Rows[0][0].ToString() == "0")
            {
                return "0";
            }

            string num = dt.Rows[0][0].ToString();

            if (num.Substring(0, 3) == "100")
            {
                return dt.Rows[0][0].ToString().Substring(0, 3);
            }

            if (num[1] == '.')
            {
                return num.Substring(0, 1);
            }

            return num.Substring(0, 2);
        }

        public string puntuacionEje(int departamento, int evaluacion, int respuesta, int componente, int eje)
        {
            DataTable dt = new DataTable();
            try
            {
                abrirConexion();
                SqlCommand cmd = new SqlCommand();
                SqlDataAdapter da = new SqlDataAdapter();

                cmd = new SqlCommand("sp_suma_ejes", cnn);
                cmd.Parameters.Add(new SqlParameter("@iddepartamento", departamento));
                cmd.Parameters.Add(new SqlParameter("@idevaluacion", evaluacion));
                cmd.Parameters.Add(new SqlParameter("@id_eva_res", respuesta));
                cmd.Parameters.Add(new SqlParameter("@idcomponente", componente));
                cmd.Parameters.Add(new SqlParameter("@ideje", eje));
                cmd.CommandType = CommandType.StoredProcedure;
                da.SelectCommand = cmd;
                da.Fill(dt);

            }
            catch (Exception)
            {
                cerrarConexion();
            }
            finally
            {
                cerrarConexion();
            }


            if (dt.Rows[0][0] == DBNull.Value || dt.Rows[0][0].ToString() == "0")
            {
                return "0";
            }

            string num = dt.Rows[0][0].ToString();

            return num.Substring(0, 1);
        }

        //MANTENIMIENTO MACHOTES DE EVALUACIÓN


        public DataTable obtenerDescripcionEvaluaciones()
        {

            DataTable tabla = new DataTable();
            try
            {

                abrirConexion();

                query = "select DESCRIPCION from EVALUACIONES";

                SqlDataAdapter da = new SqlDataAdapter(query, cnn);

                da.Fill(tabla);

                cnn.Close();

            }
            catch (Exception ex)
            {
                cerrarConexion();
                throw new Exception("No se pudo agregar los datos, detalles: " + ex.Message);
            }
            finally
            {
                cerrarConexion();
            }

            return tabla;
        }
        public bool registrarPreguntas(string descripcion, int obligatorio, string descripcionevaluacion, int idnivel, int ideje, int idcomponente)
        {
            DataTable dt = new DataTable();
            try
            {
                abrirConexion();
                query = "EXEC SP_AGREGA_PREGUNTA @DESCRIPCION,@OBLIGATORIO,@DESCRIPCIONEVALUACION,@IDNIVEL,@IDEJE,@IDCOMPONENTE";


                SqlCommand db = new SqlCommand(query, cnn);

                db.Parameters.AddWithValue("@DESCRIPCION", descripcion);
                db.Parameters.AddWithValue("@OBLIGATORIO", obligatorio);
                db.Parameters.AddWithValue("@DESCRIPCIONEVALUACION", descripcionevaluacion);
                db.Parameters.AddWithValue("@IDNIVEL", idnivel);
                db.Parameters.AddWithValue("@IDEJE", ideje);
                db.Parameters.AddWithValue("@IDCOMPONENTE", idcomponente);

                db.ExecuteNonQuery();

                cnn.Close();

            }
            catch (Exception)
            {
                cerrarConexion();
                return false;
                throw;

            }
            finally
            {
                cerrarConexion();
            }

            return true;
        }

        public DataTable obtenerCantidadPreguntas(string evaluacion, int comp, int eje, int nivel)
        {

            DataTable tabla = new DataTable();
            try
            {

                abrirConexion();

                query = "sp_cantidad_preguntas '" + evaluacion + "'," + comp + "," + eje + "," + nivel;

                SqlDataAdapter da = new SqlDataAdapter(query, cnn);

                da.Fill(tabla);

                cnn.Close();

            }
            catch (Exception ex)
            {
                cerrarConexion();
                throw new Exception("No se pudo agregar los datos, detalles: " + ex.Message);
            }
            finally
            {
                cerrarConexion();
            }

            return tabla;
        }

        public DataTable obtenerPreguntas(string evaluacion, int comp, int eje, int nivel)
        {

            DataTable tabla = new DataTable();
            try
            {

                abrirConexion();

                query = "exec SP_VER_PREGUNTA '" + evaluacion + "'," + nivel + "," + eje + "," + comp;

                SqlDataAdapter da = new SqlDataAdapter(query, cnn);

                da.Fill(tabla);

                cnn.Close();

            }
            catch (Exception ex)
            {
                cerrarConexion();
                throw new Exception("No se pudo agregar los datos, detalles: " + ex.Message);
            }
            finally
            {
                cerrarConexion();
            }

            return tabla;
        }

        public bool actualizarPreguntas(string descripcion, int id)
        {
            DataTable dt = new DataTable();
            try
            {
                abrirConexion();
                query = "EXEC sp_actualiza_pregunta @DESCRIPCION,@ID";


                SqlCommand db = new SqlCommand(query, cnn);

                db.Parameters.AddWithValue("@DESCRIPCION", descripcion);
                db.Parameters.AddWithValue("@ID", id);

                db.ExecuteNonQuery();

                cnn.Close();

            }
            catch (Exception)
            {
                cerrarConexion();
                return false;
                throw;

            }
            finally
            {
                cerrarConexion();
            }

            return true;
        }

        public bool registrarEvaluacion(int opcion, string descripcion)
        {
            DataTable dt = new DataTable();
            try
            {
                abrirConexion();
                query = "exec sp_nueva_evaluacion @OPCION,@ODESCRIPCION";


                SqlCommand db = new SqlCommand(query, cnn);

                db.Parameters.AddWithValue("@OPCION", opcion);
                db.Parameters.AddWithValue("@ODESCRIPCION", descripcion);

                db.ExecuteNonQuery();

                cnn.Close();

            }
            catch (Exception)
            {
                cerrarConexion();
                return false;
                throw;

            }
            finally
            {
                cerrarConexion();
            }

            return true;
        }

        public DataTable obtenerPreguntasAsignar(string evaluacion, int comp, int eje, int nivel)
        {

            DataTable tabla = new DataTable();
            try
            {

                abrirConexion();

                query = "SELECT v.ID_EVALUACION_EVIDENCIA, e.DESCRIPCION FROM EVALUACIONES_EVIDENCIAS v, EVALUACIONES_PUNTOS e WHERE v.ID_EVALUACIONES_RESPUESTAS = " + evaluacion + " AND v.IDCOMPONENTE = " + comp + " AND v.IDEJE = " + eje + "AND v.IDNIVEL = " + nivel + " AND v.ID_EVALUACION_PUNTO = e.ID_EVALUACION_PUNTO AND v.ESTADO_RESPUESTA = 0";

                SqlDataAdapter da = new SqlDataAdapter(query, cnn);

                da.Fill(tabla);

                cnn.Close();

            }
            catch (Exception ex)
            {
                cerrarConexion();
                throw new Exception("No se pudo agregar los datos, detalles: " + ex.Message);
            }
            finally
            {
                cerrarConexion();
            }

            return tabla;
        }

        public int obtenerIDNivel(int componente, int eje, string nombre)
        {
            DataTable dt = new DataTable();
            try
            {
                abrirConexion();
                query = "SELECT IDNIVEL FROM NIVELES WHERE IDCOMPONENTE = " + componente + "AND IDEJE = " + eje + "AND DESCRIPCION ='" + nombre + "';";

                SqlDataAdapter da = new SqlDataAdapter(query, cnn);
                da.Fill(dt);
                cnn.Close();
            }
            catch (Exception)
            {
                cerrarConexion();
            }
            finally
            {
                cerrarConexion();
            }
            return Int32.Parse(dt.Rows[0][0].ToString());
        }

        public DataTable obtenerUsuariosPorDep(int dep)
        {

            DataTable tabla = new DataTable();
            try
            {

                abrirConexion();

                query = "SELECT CONCAT( IDUSUARIO,'- ', NOMBRE, ' ',PRIMER_APELLIDO) AS USUARIO FROM USUARIO WHERE DEPARTAMENTO = " + dep + " AND ROL = 5";

                SqlDataAdapter da = new SqlDataAdapter(query, cnn);

                da.Fill(tabla);

                cnn.Close();

            }
            catch (Exception ex)
            {
                cerrarConexion();
                throw new Exception("No se pudo agregar los datos, detalles: " + ex.Message);
            }
            finally
            {
                cerrarConexion();
            }

            return tabla;
        }


        public void asignarNuevaEvidencia(int idpregunta, string encargado)
        {
            try
            {

                abrirConexion();

                query = "INSERT INTO ASIGNACIONES_EVIDENCIAS values(@EVIDENCIA, @ENCARGADO, @ESTADO);";

                SqlCommand db = new SqlCommand(query, cnn);

                db.Parameters.AddWithValue("@EVIDENCIA", idpregunta);
                db.Parameters.AddWithValue("@ENCARGADO", encargado);
                db.Parameters.AddWithValue("@ESTADO", 0);

                db.ExecuteNonQuery();

                cnn.Close();

            }
            catch (Exception)
            {

                cerrarConexion();
            }
            finally
            {
                cerrarConexion();
            }
        }

        public bool validarRepetidas(int idpregunta)
        {
            DataTable dt = new DataTable();
            try
            {

                abrirConexion();

                query = "SELECT COUNT(ID_EVALUACION_EVIDENCIA) FROM ASIGNACIONES_EVIDENCIAS WHERE ID_EVALUACION_EVIDENCIA = "+ idpregunta + ";";

                SqlDataAdapter da = new SqlDataAdapter(query, cnn);

                da.Fill(dt);

                cnn.Close();

            }
            catch (Exception ex)
            {
                cerrarConexion();
                throw new Exception("No se pudo agregar los datos, detalles: " + ex.Message);
            }
            finally
            {
                cerrarConexion();
            }


            if (dt.Rows[0][0] == DBNull.Value || dt.Rows[0][0].ToString() != "0")
            {
                return false;
            }

            return true;

        }

        #region Modulo_Control_Avance
        public DataTable obtenerControlSeguimiento(int id)
        {

            DataTable tabla = new DataTable();
            try
            {

                abrirConexion();

                query = "exec sp_control_seguimiento " + id + " ;";

                SqlDataAdapter da = new SqlDataAdapter(query, cnn);

                da.Fill(tabla);

                cnn.Close();

            }
            catch (Exception ex)
            {
                cerrarConexion();
                throw new Exception("Error al mostrar datos, detalles: " + ex.Message);
            }
            finally
            {
                cerrarConexion();
            }

            return tabla;
        }

        public void actualizaEstado(int id)
        {
            try
            {

                abrirConexion();

                query = "exec sp_actualiza_estado @ID;";

                SqlCommand db = new SqlCommand(query, cnn);

                db.Parameters.AddWithValue("@ID", id);

                db.ExecuteNonQuery();

                cnn.Close();

            }
            catch (Exception)
            {

                cerrarConexion();
            }
            finally
            {
                cerrarConexion();
            }
        }
        #endregion
    }
}
