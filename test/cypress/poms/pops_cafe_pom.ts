export default class PopsCagePage {
  get title() {
    return cy.title();
  }

  assertTitle(title: string) {
    this.title.should("eq", title);
  }

  visit() {
    cy.visit("/");
  }
}
