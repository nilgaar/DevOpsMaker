package org.example;

import com.microsoft.playwright.*;

public class App {
    public static void main(String[] args) {
        try (Playwright playwright = Playwright.create()) {
            Browser browser = playwright.firefox().launch();
            Page page = browser.newPage();
            page.navigate("http://pops.cafe");
            System.out.println(page.title());
        }
    }
}