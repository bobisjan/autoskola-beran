'use strict';

const EmberApp = require('ember-cli/lib/broccoli/ember-app');
const { Webpack } = require('@embroider/webpack');
const { compatBuild } = require('@embroider/compat');
const { prerender } = require('prember');

module.exports = function (defaults) {
  const app = new EmberApp(defaults, {
    prember: {
      urls: ['/'],
    },

    babel: {
      sourceMaps: 'inline',
    },
  });

  return prerender(
    app,
    compatBuild(app, Webpack, {
      staticEmberSource: true,
      staticAddonTestSupportTrees: true,
      staticAddonTrees: true,
      staticInvokables: true,
      packagerOptions: {
        webpackConfig: {
          devtool: 'source-map',
          module: {
            rules: [
              {
                test: /\.(jpg)$/i,
                type: 'asset',
                generator: {
                  publicPath: '/assets/',
                  outputPath: 'assets/',
                },
              },
            ],
          },
        },
      },
    }),
  );
};
