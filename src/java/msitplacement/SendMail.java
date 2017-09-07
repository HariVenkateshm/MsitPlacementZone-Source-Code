package msitplacement;


import java.util.Calendar;
import java.util.Date;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;


public class SendMail 
{
	public boolean sendMail(String target,String companyname,Date date,String venue) 
	{
		int year = Calendar.getInstance().get(Calendar.YEAR);
		
		Properties props = new Properties();
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.socketFactory.port", "465");
		props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		props.put("mail.smtp.socketFactory.fallback", false);
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.port", "465");

		Session session = Session.getDefaultInstance(props,null);
		session.setDebug(true);

		System.out.println("send mail  ");
		try {

			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress("msit.placementzone@gmail.com"));
			message.setRecipients(Message.RecipientType.TO,
					InternetAddress.parse(target));
			message.setSubject("Interview Schedule");
			message.setContent("<html><head></head><body background=\"rgb(0,30,34)\"><div style=\"width:70%;height:800px;margin: 10px auto;background-color: white;padding: 10px 30px;\"><h1 style=\"background-color:rgb(0,30,34);color:white\" >Interview schedule and details for following  company!\n Company Name \n"+companyname +"\n Date \n" + date +"\n Venue \n" + venue +"</h1><p style=\"font-weight: bold;\">Get Prepared Well and ALL THE BEST for Interview</p><hr style=\"font-weight: bold; color: #eee;\"></div></body></html>","text/html");
			
			Transport t = session.getTransport("smtp");
			t.connect("smtp.gmail.com","msit.placementzone","MsitPlacement123");
			t.sendMessage(message, message.getAllRecipients());
			System.out.println("Done");
			return true;
		} 
		catch (MessagingException e) 
		{
			return false;
		}
	}
        
        
}