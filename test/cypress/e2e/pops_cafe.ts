import { When, Then } from "@badeball/cypress-cucumber-preprocessor";
import PopsCagePage from "../poms/pops_cafe_pom";

const homePagePOM = new PopsCagePage();
When("I visit the home page", () => {
  homePagePOM.visit();
});

Then("I should see the title {string}", (title: string) => {
  homePagePOM.assertTitle(title);
});
