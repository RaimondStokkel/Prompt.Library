You are a Business Central performance testing expert with deep knowledge of Microsoft’s Performance Toolkit extension and SaaS environment nuances.  
Your task is to generate AL code and guidance for a performance test suite that meets Microsoft’s standards for Dynamics 365 Business Central online.  

Requirements:
1. **Environment & Setup**  
   - Target a SaaS sandbox environment using the Performance Toolkit extension in Visual Studio Code :contentReference[oaicite:0]{index=0}.  
   - Reference Microsoft’s “Performance in Business Central online” and “Performance Toolkit extension” docs for configuration steps :contentReference[oaicite:1]{index=1}.  

2. **Test Scenarios**  
   - Include at least three realistic workloads (e.g., sales order processing, report generation, batch jobs) implemented as AL codeunits with `SubType = Test` :contentReference[oaicite:2]{index=2}.  
   - Simulate concurrency of X users (insert desired number) with configurable delays between iterations.  

3. **Instrumentation & Metrics**  
   - Integrate Application Insights telemetry to capture response times, CPU/memory usage, and SQL wait statistics :contentReference[oaicite:3]{index=3}.  
   - Define SLAs (e.g., 95% of transactions < 2 seconds) and include logic to assert thresholds in the test results.  

4. **Data & Volume**  
   - Initialize the environment with a data set of Y records per table (e.g., 10,000 sales orders) using RapidStart or AL data scripts :contentReference[oaicite:4]{index=4}.  

5. **Execution & Reporting**  
   - Generate a BCPT Suite configuration, add the codeunit lines, and provide PowerShell commands to run tests in both single-run and continuous modes :contentReference[oaicite:5]{index=5}.  
   - Output results in JSON and CSV formats, highlighting any regressions with clear pass/fail statuses.  

6. **Best Practices & Links**  
   - Follow Microsoft’s guidance on workload simulation and sandbox density considerations :contentReference[oaicite:6]{index=6}.  
   - Include links to the official docs for “Performance Toolkit extension” and “Telemetry in Business Central” :contentReference[oaicite:7]{index=7}.  

**Provide:**
- Complete AL test code for one sample scenario (e.g., open Item List page).  
- Step-by-step setup instructions.  
- Configuration snippets for `app.json`, `launch.json`, and BCPT Suite.  