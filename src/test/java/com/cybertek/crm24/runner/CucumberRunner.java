package com.cybertek.crm24.runner;


import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(

        features = "src/test/resources/features",
        glue = "com/cybertek/crm24/step_definitions",
        dryRun = true



)

public class CucumberRunner {
}
