module.exports = {
  extends: [require.resolve('@umijs/fabric/dist/eslint')],
  globals: {
    page: true,
    REACT_APP_ENV: true,
  },
  "rules": {
    "prefer-destructuring": ["error", {"object": true, "array": false}],
    "no-param-reassign": 0
  }
};
