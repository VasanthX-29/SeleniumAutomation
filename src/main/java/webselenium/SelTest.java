package webselenium;

import java.util.Scanner;
import java.util.concurrent.TimeUnit;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

public class SelTest {
public static void main(String[] args) throws InterruptedException {
		
		System.setProperty("webdriver.chrome.driver","D:\\SeleniumJars\\chromedriver.exe");
		//create an obj to the driver -obj to the browser
		WebDriver wd=new ChromeDriver();//wd is the controller obj to web browser
		//maxmize the screen
		wd.manage().window().maximize();
		//web url 
		wd.get("http://localhost:8080/SeleniumPracticeProject/index.jsp");
		
		wd.manage().timeouts().implicitlyWait(5000,TimeUnit.MILLISECONDS);
		
		
			
	    register(wd);
	}

  public static void register(WebDriver wd) throws InterruptedException
  {
	  Scanner sc=new Scanner(System.in);
		
		System.out.println("Enter the employee name");
		String name=sc.next();
		
		System.out.println("Enter the employee email");
		String email=sc.next();
		
		System.out.println("Enter the employee password");
		String pwd=sc.next();
		
		System.out.println("Enter the employee confirm password");
		String cpwd=sc.next();
		
		wd.findElement(By.name("empname")).sendKeys(name);
		wd.findElement(By.name("empemail")).sendKeys(email);
		wd.findElement(By.name("emppwd")).sendKeys(pwd);
		wd.findElement(By.name("empcpwd")).sendKeys(cpwd);
		
		Thread.sleep(8000);
		
		wd.findElement(By.name("submit")).submit();
		
		
		
		String actualres=wd.findElement(By.name("h1")).getText();
		
		Thread.sleep(3000);
		
		String expres="Registration Successfull !";
		
		String expfailres="Registration Failed";
		
		if(actualres.equals(expres))
		{
			System.out.println("Registration Automation Passed | Registration status : Success ");
			wd.findElement(By.linkText("Go to login page")).click();
			System.out.println("\n");
			login(wd);
		}
		else
		{
			System.out.println("Registration Automation Passed | Registration status : Fail ");
			wd.findElement(By.linkText("Click here to try again")).click();
			register(wd);
		}
		
		
		
		
  }
  
  public static void login(WebDriver wd) throws InterruptedException
  {
	  Scanner sc=new Scanner(System.in);
	  System.out.println("Login Credentials");
		
		System.out.println("Enter the employee email");
		String loginemail=sc.next();
		
		System.out.println("Enter the employee password");
		String loginpwd=sc.next();
		
		wd.findElement(By.name("loginemail")).sendKeys(loginemail);
		wd.findElement(By.name("loginpwd")).sendKeys(loginpwd);
		
		Thread.sleep(8000);
		
		wd.findElement(By.name("login")).submit();
		
	
		
        String actualwelcomemsg=wd.findElement(By.name("h1")).getText();
		
		String expwelcomemsg="Welcome to the Employee Dashboard";
		
		
		
		
		if(actualwelcomemsg.equals(expwelcomemsg))
		{
			System.out.println("Login Automation Success | Login Status : Success");
		}
		else
		{
		
			System.out.println("Login Automation Success | Login Status : Fail ");
			
			wd.findElement(By.linkText("Click here to try again")).click();
			login(wd);
			
		}
	
		
		
  }

}
