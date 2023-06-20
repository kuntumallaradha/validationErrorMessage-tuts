[33mcommit e162e2abc9cc73a1534f30824aaac13c0178d636[m[33m ([m[1;36mHEAD -> [m[1;32mcopy1[m[33m, [m[1;31morigin/master[m[33m, [m[1;32mmaster[m[33m)[m
Author: kuntumallaradha <radhakuntumalla14@gmail.com>
Date:   Mon Jun 19 17:16:42 2023 -0400

    Commititing code and validateErrorMessage

[1mdiff --git a/validationErrorMessage.java b/validationErrorMessage.java[m
[1mnew file mode 100644[m
[1mindex 0000000..eaaf416[m
[1m--- /dev/null[m
[1m+++ b/validationErrorMessage.java[m
[36m@@ -0,0 +1,44 @@[m
[32m+[m
[32m+[m[32mpackage SauceLabValidateErrorMessage;[m
[32m+[m
[32m+[m[32mimport java.util.ArrayList;[m
[32m+[m
[32m+[m
[32m+[m[32mimport org.openqa.selenium.By;[m
[32m+[m[32mimport org.openqa.selenium.WebDriver;[m
[32m+[m[32mimport org.openqa.selenium.firefox.FirefoxDriver;[m
[32m+[m
[32m+[m[32mpublic class validationErrorMessage {[m
[32m+[m
[32m+[m	[32mpublic static void main(String[] args) {[m
[32m+[m		[32m// TODO Auto-generated method stub[m
[32m+[m		[32mWebDriver driver= new FirefoxDriver();//firefox login page[m
[32m+[m[41m		[m
[32m+[m[41m		[m
[32m+[m		[32mdriver.get("https://www.saucedemo.com/");[m
[32m+[m		[32mdriver.findElement(By.id("user-name")).sendKeys("");[m
[32m+[m		[32mdriver.findElement(By.id("password")).sendKeys("");[m
[32m+[m		[32mdriver.findElement(By.id("login-button")).click();[m
[32m+[m[41m		[m
[32m+[m		[32mString Actual = driver.findElement(By.xpath("//h3[@data-test='error']")).getText();[m
[32m+[m[41m		[m
[32m+[m		[32mSystem.out.println(Actual);[m
[32m+[m[41m		[m
[32m+[m		[32mArrayList<String>Expected = new ArrayList<String>();[m
[32m+[m[41m		[m
[32m+[m		[32mExpected.add("Epic sadface: Username is required");[m
[32m+[m		[32mExpected.add("Epic sadface: Password is required");[m
[32m+[m		[32mExpected.add("Epic sadface: Username and password do not match any user in this service");[m
[32m+[m[41m		[m
[32m+[m		[32mfor(String s:Expected)[m
[32m+[m		[32m{[m
[32m+[m		[32mif(s.equals(Actual))[m
[32m+[m[41m		[m
[32m+[m		[32mSystem.out.println("verifying the actual and expected results..");[m
[32m+[m[41m		[m
[32m+[m		[32m}[m
[32m+[m		[32m//driver.quit();[m
[32m+[m
[32m+[m	[32m}[m
[32m+[m
[32m+[m[32m}[m
