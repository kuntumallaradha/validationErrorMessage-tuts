
package SauceLabValidateErrorMessage;

import java.util.ArrayList;


import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

public class validationErrorMessage {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		WebDriver driver= new FirefoxDriver();//firefox login page
		
		
		driver.get("https://www.saucedemo.com/");
		driver.findElement(By.id("user-name")).sendKeys("");
		driver.findElement(By.id("password")).sendKeys("");
		driver.findElement(By.id("login-button")).click();
		
		String Actual = driver.findElement(By.xpath("//h3[@data-test='error']")).getText();
		
		System.out.println(Actual);
		
		ArrayList<String>Expected = new ArrayList<String>();
		
		Expected.add("Epic sadface: Username is required");
		Expected.add("Epic sadface: Password is required");
		Expected.add("Epic sadface: Username and password do not match any user in this service");
		
		for(String s:Expected)
		{
		if(s.equals(Actual))
		
		System.out.println("verifying the actual and expected results..");
		
		}
		//driver.quit();

	}

}
