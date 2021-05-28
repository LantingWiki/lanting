module.exports = {
  extends: [require.resolve('@umijs/fabric/dist/eslint')],
  globals: {
    page: true,
    REACT_APP_ENV: true,
  },
  rules: {
    'prefer-destructuring': ['error', { object: true, array: false }],
    'no-param-reassign': 0,
    'max-classes-per-file': 0,
    'no-plusplus': 0,
    'no-unused-vars': ['warn', { 'varsIgnorePattern': '^_' }]
  },
};
