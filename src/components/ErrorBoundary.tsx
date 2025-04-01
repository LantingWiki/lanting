import React from 'react';

class ErrorBoundary extends React.Component {
  state = { hasError: false };

  static getDerivedStateFromError() {
    return { hasError: true };
  }

  componentDidCatch(error, info) {
    console.error('组件错误:', error, info);
  }

  render() {
    if (this.state.hasError) {
      return <div>出错了，请刷新页面。</div>;
    }
    return this.props.children;
  }
}

export default ErrorBoundary;
