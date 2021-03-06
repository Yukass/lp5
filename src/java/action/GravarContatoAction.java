/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package action;

import DAO.ContatoDAO;
import controller.Action;
import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Contato;

/**
 *
 * @author Aluno
 */
public class GravarContatoAction implements Action{
    public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException{
        String nome = request.getParameter("textNome");
        String email = request.getParameter("textEmail");
        if (nome.equals("") || email.equals("")) {
            response.sendRedirect("index.jsp");
        }else{
            Contato contato = new Contato(nome,email);
            try{
                ContatoDAO.getInstance().save(contato);
                response.sendRedirect("contatoSucesso.jsp");
            }catch (ClassNotFoundException ex){
                ex.printStackTrace();
            }catch (SQLException ex){
                response.sendRedirect("contatoErro.jsp");
                ex.printStackTrace();
            }
        }
    }
}
