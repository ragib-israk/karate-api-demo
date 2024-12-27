# README: Karate API Testing with httpbin.org

This document explains how to use the Karate API framework to test the endpoints of [httpbin.org](https://httpbin.org/), a simple HTTP request and response service. It also includes instructions on how to generate and view test reports.

## What is httpbin.org?

httpbin.org is an open-source service that allows you to test HTTP requests and responses. It provides a variety of endpoints for testing different HTTP scenarios such as:
- HTTP methods (GET, POST, PUT, DELETE, etc.)
- Status codes
- Request and response inspection
- Redirects
- Dynamic data
- Cookies, and more.

## Prerequisites

1. Install Java JDK 8 or higher.
2. Install Maven for managing dependencies.
3. Set up a Karate project in your development environment.

## Setting Up the Project

### 1. Add Dependencies

Include the following dependencies in your `pom.xml` file:
```xml
<dependency>
    <groupId>com.intuit.karate</groupId>
    <artifactId>karate-apache</artifactId>
    <version>1.4.0</version>
</dependency>
<dependency>
    <groupId>com.intuit.karate</groupId>
    <artifactId>karate-junit5</artifactId>
    <version>1.4.0</version>
</dependency>
```

### 2. Create Feature File

Write a feature file (`httpbin.feature`) with scenarios to test the endpoints. For example:

```gherkin
Feature: Testing httpbin.org API

  Scenario: Test GET request
      Given url 'https://httpbin.org/get'
      When method GET
      Then status 200

```

### 3. Run Tests

Use Maven to execute your feature file:
```bash
mvn test -Dkarate.options="classpath:httpbin.feature"
```

## Generating Reports

Karate automatically generates test reports after execution. Here’s how you can access them:

### Default Report
1. Locate the generated report in the `target/cucumber-html-reports/` directory.
2. Open the `index.html` file in your browser to view the detailed report.

   ```

This will launch an interactive report in your default browser.

## Summary

This README provided a brief overview of:
- Setting up Karate to test `httpbin.org` endpoints.
- Writing test scenarios using Gherkin syntax.
- Running the tests and generating reports.

By following these steps, you can effectively test APIs using the Karate framework and monitor the results with detailed reports.

