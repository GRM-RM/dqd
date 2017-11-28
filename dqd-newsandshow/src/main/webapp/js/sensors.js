(function (para) {
  var p = para.sdk_url,
    n = para.name,
    w = window,
    d = document,
    s = 'script',
    x = null,
    y = null;
  w['sensorsDataAnalytic201505'] = n;
  w[n] = w[n] || function (a) {
    return function () {
      (w[n]._q = w[n]._q || []).push([a, arguments]);
    }
  };
  var ifs = ['track', 'quick', 'register', 'registerPage', 'registerOnce',
    'clearAllRegister', 'trackSignup', 'trackAbtest', 'setProfile',
    'setOnceProfile', 'appendProfile', 'incrementProfile', 'deleteProfile',
    'unsetProfile', 'identify', 'login', 'logout', 'trackLink',
    'clearAllRegister'
  ];
  for (var i = 0; i < ifs.length; i++) {
    w[n][ifs[i]] = w[n].call(null, ifs[i]);
  }
  if (!w[n]._t) {
    x = d.createElement(s), y = d.getElementsByTagName(s)[0];
    x.async = 1;
    x.src = p;
    y.parentNode.insertBefore(x, y);
    w[n].para = para;
  }
})({
  sdk_url: "https://static.sensorsdata.cn/sdk/1.7.1.1/sensorsdata.min.js",
  name: 'sa',
  web_url: 'https://sensors-web.dongqiudi.com/?project=' + getproject(location.hostname),
  heatmap: {
    isTrackLink: true,
  },
  server_url: 'https://sensors-log.dongqiudi.com/sa?project=' + getproject(location.hostname),
});

function getproject(hostname) {
  if (hostname == 'dongqiudi.com' || hostname == 'www.dongqiudi.com') {
    return 'dongqiudi'
  } else {
    return 'default'
  }
}
sa.quick('autoTrack');