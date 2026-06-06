package listeners;

import org.testng.*;

import com.aventstack.extentreports.*;
import base.DriverFactory;
import utilities.ScreenshotUtil;

public class TestListener implements ITestListener {

	private static ExtentReports extent = ExtentManager.getReport();

	private ExtentTest test;

	@Override
	public void onTestStart(ITestResult result) {

		System.out.println("Started : " + result.getParameters()[1].toString());

		test = extent.createTest(result.getParameters()[1].toString());
	}

	@Override
	public void onTestSuccess(ITestResult result) {

		System.out.println("PASS Listener Triggered");

		String path = ScreenshotUtil.captureScreenshot(DriverFactory.getDriver(), result.getName());

		test.pass("Test Passed");

		if (!path.isEmpty()) {

			try {
				test.addScreenCaptureFromPath(path);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		DriverFactory.quitDriver();
	}

	@Override
	public void onTestFailure(ITestResult result) {

		System.out.println("FAIL Listener Triggered");

		String path = ScreenshotUtil.captureScreenshot(DriverFactory.getDriver(), result.getName());

		test.fail(result.getThrowable());

		if (!path.isEmpty()) {

			try {
				test.addScreenCaptureFromPath(path);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		DriverFactory.quitDriver();
	}

	@Override
	public void onTestSkipped(ITestResult result) {

		System.out.println("SKIP Listener Triggered");

		test.skip("Test Skipped");

		DriverFactory.quitDriver();
	}

	@Override
	public void onFinish(ITestContext context) {

		extent.flush();

		System.out.println("Extent Report Generated Successfully");
	}
}