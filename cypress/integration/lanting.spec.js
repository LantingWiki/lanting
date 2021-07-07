describe('/lanting', () => {
  it('successfully loads', () => {
    cy.visit('http://localhost:8000/lanting');
    

    // TODO: 列表展开测试
    cy.get('.ant-card:nth-child(1) h2').click();
    for (let i = 1; i < 7; i++) {
      cy.get(`.ant-card:nth-child(${i}) h2`).click();
    }
    cy.get('.ant-card:nth-child(1) h2').click();
    for (let i = 1; i < 7; i++) {
      cy.get(`.ant-card:nth-child(${i}) h2`).click();
    }

    // TODO:分页器
    cy.visit('http://localhost:8000/lanting');
    cy.url().should('contains', 'http://localhost:8000/lanting');
    cy.get(
      '#root > div > section > div > main > div > div.ant-pro-grid-content > div > div > div > div:nth-child(2) > div > div > div > div.ant-collapse-content.ant-collapse-content-active > div > div > div.ant-list-pagination > ul > li.ant-pagination-next > button',
    ).click();


  });
});
