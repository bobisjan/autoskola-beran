'use strict';

const EmberApp = require('ember-cli/lib/broccoli/ember-app');
const { Webpack } = require('@embroider/webpack');
const { compatBuild } = require('@embroider/compat');
const { prerender } = require('prember');

module.exports = function (defaults) {
  let app = new EmberApp(defaults, {
    prember: {
      urls: ['/'],
    },
  });

  return prerender(
    app,
    compatBuild(app, Webpack, {
      staticAddonTestSupportTrees: true,
      staticAddonTrees: true,
      staticHelpers: true,
      staticModifiers: true,
      staticComponents: true,
    })
  );
};
