package utils;

import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 * Created by vijayn on 8/5/2017.
 */
public class SendEmail {
    public static void sendEmail(String host, String from, String pass, String to[],String sub,String msg) throws MessagingException {

        /*String host = "smtp.gmail.com";
        String from = "rtsskmit@gmail.com";
        String pass = "rtssmini";*/
        Properties props = System.getProperties();
        props.put("mail.smtp.starttls.enable", "true"); // added this line
        props.put("mail.smtp.host", host);
        props.put("mail.smtp.user", from);
        props.put("mail.smtp.password", pass);
        props.put("mail.smtp.port", "587");
        props.put("mail.smtp.auth", "true");

        //String[] to = {"chakradharreddy985@gmail.com"}; // added this line

        Session session = Session.getDefaultInstance(props, null);
        MimeMessage message = new MimeMessage(session);
        message.setFrom(new InternetAddress(from));

        InternetAddress[] toAddress = new InternetAddress[to.length];

        // To get the array of addresses
        for (int i = 0; i < to.length; i++) { // changed from a while loop
            toAddress[i] = new InternetAddress(to[i]);
        }
        System.out.println(Message.RecipientType.TO);

        for (int i = 0; i < toAddress.length; i++) { // changed from a while loop
            message.addRecipient(Message.RecipientType.TO, toAddress[i]);
        }
        message.setSubject(sub);
        message.setText(msg);

        Transport transport = session.getTransport("smtp");
        transport.connect(host, from, pass);
        transport.sendMessage(message, message.getAllRecipients());
        transport.close();
    }
    // public static void main(String a[])
    // {
    //  try {
    //   mailsend("1023", "starstaff4@gmail.com");
    // } catch (MessagingException ex) {
    // Logger.getLogger(mail.class.getName()).log(Level.SEVERE, null, ex);
    // }
    //}
}
