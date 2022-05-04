function fn() {
    const config = { // base config JSON
        'employeeAppUrlBase': 'http://localhost:8080',
        'herokuAppTestPagesUrl': 'https://testpages.herokuapp.com/styled'
    };

    if (karate.env === 'CI') {
        karate.configure('driverTarget', {
            docker: 'justinribeiro/chrome-headless',
            secComp: 'src/test/java/chrome.json'
        });
    }

    // don't waste time waiting for a connection or if servers don't respond within 5 seconds
    karate.configure('connectTimeout', 5000);
    karate.configure('readTimeout', 5000);
    return config;
}
