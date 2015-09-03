using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Security.Cryptography;
using System.Text.RegularExpressions;
using System.Net;
using System.Net.Mail;
using System.IO;
using System.Text;
using Entities;

public class function
{
    public static string email;
    public static string hoten;
    public static string sdt;
    public static string diachi;
    public static decimal diemtichluy;

    public static int chaygiohang = 0;

    public static string Mahoa(string chuoi)
    {
        UTF32Encoding u = new UTF32Encoding();
        byte[] b = u.GetBytes(chuoi);
        MD5 s = new MD5CryptoServiceProvider();
        byte[] kq = s.ComputeHash(b);
        return Convert.ToBase64String(kq);
    }

    public static void SendMail(Thanhvien tv)
    {
        MailMessage mail = new MailMessage();
        mail.To.Add(tv.Email);
        mail.From = new MailAddress("mens.formen@gmail.com");
        mail.Subject = "Kích hoạt tài khoản của bạn tại Men's Shop";
        mail.Body = "Mã kích hoạt của bạn là : http://mens.somee.com/kich-hoat.aspx?key=" + HttpContext.Current.Server.UrlEncode(tv.Makichhoat);
        mail.IsBodyHtml = true;

        SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
        client.EnableSsl = true;
        NetworkCredential credent = new NetworkCredential("mens.formen@gmail.com", "/?id=g00gle.");
        client.UseDefaultCredentials = true;
        client.Credentials = credent;

        try
        {
            client.Send(mail);
        }
        catch (Exception)
        {
            throw;
        }
    }

    public static void SendMail_2(string to, string content)
    {
        MailMessage mail = new MailMessage();
        mail.To.Add(to);
        mail.From = new MailAddress("mens.formen@gmail.com");
        mail.Subject = "Cấp lại mật khẩu người dùng tại Men's Shop";
        mail.Body = "Mật khẩu mới của bạn là: " + content;
        mail.IsBodyHtml = true;

        SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
        client.EnableSsl = true;
        NetworkCredential credent = new NetworkCredential("mens.formen@gmail.com", "/?id=g00gle.");
        client.UseDefaultCredentials = true;
        client.Credentials = credent;

        try
        {
            client.Send(mail);
        }
        catch (Exception)
        {
            throw;
        }
    }
}