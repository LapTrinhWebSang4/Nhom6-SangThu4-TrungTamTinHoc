package DAO;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.Properties;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.Authenticator;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

public class SendEmail {
	public static boolean sendMail(String to, String subject, String text,String usermail,String password) {
		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");
		Session session = Session.getInstance(props,
				new javax.mail.Authenticator() {
			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(usermail, password);
			}
		});
		try {
			Message message = new MimeMessage(session);
			message.setHeader("Content-Type", "text/plain; charset=UTF-8");
			message.setFrom(new InternetAddress("lkient2111@gmail.com.com"));
			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
			message.setSubject(subject);
			message.setText(text);
			Transport.send(message);
		} catch (MessagingException e) {
			return false;
		}
		return true;
	}
	public static void sendMailToMany(String subject, String text,String useremail,String password,List<String> addresses) {
		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");
		Session session = Session.getInstance(props,
				new javax.mail.Authenticator() {
			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(useremail, password);
			}
		});
		try {
			Message message = new MimeMessage(session);
			message.setHeader("Content-Type", "text/plain; charset=UTF-8");
			message.setFrom(new InternetAddress(useremail));
			InternetAddress[] address = new InternetAddress[addresses.size()];
			for (int i = 0; i < addresses.size(); i++) {
				address[i] = new InternetAddress(addresses.get(i));
			}
			message.setRecipients(Message.RecipientType.TO, address);
			message.setSubject(subject);
			message.setText(text);
			Transport.send(message);
		} catch (MessagingException e) {

		}

	}
	public static void sendEmailWithAttachment(
			final String userName, final String password,List<String> addresses,
			String subject, String message, File file)
					throws AddressException, MessagingException {
		// sets SMTP server properties
		Properties properties = new Properties();
		properties.put("mail.smtp.auth", "true");
		properties.put("mail.smtp.starttls.enable", "true");
		properties.put("mail.smtp.host", "smtp.gmail.com");
		properties.put("mail.smtp.port", "587");
		properties.put("mail.user", userName);
		properties.put("mail.password", password);
		// creates a new session with an authenticator
		Authenticator auth = new Authenticator() {
			public PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(userName, password);
			}
		};
		Session session = Session.getInstance(properties, auth);

		// creates a new e-mail message
		Message msg = new MimeMessage(session);
		msg.setFrom(new InternetAddress(userName));
		InternetAddress[] address = new InternetAddress[addresses.size()];
		for (int i = 0; i < addresses.size(); i++) {
			address[i] = new InternetAddress(addresses.get(i));
		}
		msg.setRecipients(Message.RecipientType.TO, address);
		msg.setSubject(subject);
		msg.setSentDate(new Date());

		BodyPart messageBodyPart = new MimeBodyPart();

		messageBodyPart.setText(message);

		// creates multi-part
		Multipart multipart = new MimeMultipart();
		multipart.addBodyPart(messageBodyPart);

		System.out.println("khai bao multipart");
		messageBodyPart = new MimeBodyPart();
		String filename = file.getAbsolutePath();
		DataSource source = new FileDataSource(filename);
		messageBodyPart.setDataHandler(new DataHandler(source));
		messageBodyPart.setFileName(filename);
		multipart.addBodyPart(messageBodyPart);

		// adds attachments
		if (file != null) {
			MimeBodyPart attachPart = new MimeBodyPart();

			try {
				attachPart.attachFile(file);
			} catch (IOException ex) {
				ex.printStackTrace();
			}

			multipart.addBodyPart(attachPart);
		}

		// sets the multi-part as e-mail's content
		msg.setContent(multipart);

		// sends the e-mail
		Transport.send(msg);
	}

}
