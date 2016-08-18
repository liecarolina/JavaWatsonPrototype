//package com.ibm.watson.developer_cloud.text_to_speech.v1;
package com.ibm.cloudoe.samples;


import java.io.InputStream;
import java.io.OutputStream;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ibm.watson.developer_cloud.language_translation.v2.LanguageTranslation;
import com.ibm.watson.developer_cloud.language_translation.v2.model.Language;
import com.ibm.watson.developer_cloud.language_translation.v2.model.TranslationResult;
import com.ibm.watson.developer_cloud.text_to_speech.v1.TextToSpeech;
import com.ibm.watson.developer_cloud.text_to_speech.v1.model.AudioFormat;
import com.ibm.watson.developer_cloud.text_to_speech.v1.model.Voice;
import com.ibm.watson.developer_cloud.text_to_speech.v1.util.WaveUtils;

import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;


/**
 * Servlet implementation class DispatchServlet
 */
@WebServlet({  "/home", "/Sources", "/australia"})
public class DispatchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final WebsiteTitle myapp = new WebsiteTitle();
	
	private static Logger logger = Logger.getLogger(DispatchServlet.class.getName());

//    /**
//     * Default constructor. 
//     */
//    public DispatchServlet() {
//        // TODO Auto-generated constructor stub
//    	
//   
//    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String path = req.getRequestURI().substring(req.getContextPath().length());
		 
		
		System.out.println(path);
		req.setAttribute("myapp", myapp);
		// TODO Auto-generated method stub

        
        if (req.getParameter("text") == null || req.getParameter("voice") == null) {
        	req.getRequestDispatcher(path + ".jsp").forward(req, resp);
        	
       
        		
		} else {
			boolean download = "true".equalsIgnoreCase(req.getParameter("download"));
			boolean translate ="true".equalsIgnoreCase(req.getParameter ("TButton"));
			boolean check = "true".equalsIgnoreCase(req.getParameter("check"));

			InputStream in = null;
			OutputStream out = null;	
			try {
		         TextToSpeech textService = new TextToSpeech();
		         String voice = req.getParameter("voice");
		         String text = req.getParameter("text");
//		         String text1 = req.getParameter("text1");

		         LanguageTranslation translateService = new LanguageTranslation();
			     String language = req.getParameter("language");
			     TranslationResult translationResult = translateService.translate(text, Language.ENGLISH, Language.valueOf(language)).execute();
			    String translation= translationResult.getFirstTranslation();
			    	
			    			         

//		         if(check==true){
		         if(req.getParameter("check")!=null){	 
		        	 
		        	 if(Language.valueOf(language)==Language.SPANISH)
		        		 in = textService.synthesize(translation, new Voice("es-ES_EnriqueVoice", null, null),  AudioFormat.OGG).execute();
		        	 else
		        		 in = textService.synthesize(translation, new Voice("fr-FR_ReneeVoice", null, null),  AudioFormat.OGG).execute();
		        	 
		        	 
		         }else{
	        		 in = textService.synthesize(text, new Voice(voice, null, null),  AudioFormat.OGG).execute();

		         }
		        
		         if (download) {
		             resp.setHeader("content-disposition",
		                            "attachment; filename=transcript.ogg");
		         }
		         
		 		
		         
		         out = resp.getOutputStream();
		         byte[] buffer = new byte[2048];
		         int read;
		         while ((read = in.read(buffer)) != -1) {
		             out.write(buffer, 0, read);
		         }
			} catch (Exception e) {
//				 Log something and return an error message
				logger.log(Level.SEVERE, "got error: " + e.getMessage(), e);
				resp.sendError(HttpServletResponse.SC_BAD_REQUEST, e.getMessage());
			} finally {
			    close(in);
			    close(out);
			}
			
			


		}
        
        
	}

	
	private void close(Closeable closeable) {
	    if (closeable != null) {
	        try {
	            closeable.close();
	        } catch (IOException e) {
	            // ignore
	        }
	    }	      	   
	}

	

}
