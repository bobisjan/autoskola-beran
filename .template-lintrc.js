'use strict';

module.exports = {
  extends: [
    'recommended',
    'stylistic',
    'ember-template-lint-plugin-prettier:recommended',
  ],
  plugins: ['ember-template-lint-plugin-prettier'],
  rules: {
    'no-redundant-role': false,
  },
  overrides: [
    {
      files: ['**/*.{gjs,gts}'],
      rules: {
        prettier: false,
      },
    },
  ],
};
