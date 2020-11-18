import React from 'react';
import { PageLoading } from '@ant-design/pro-layout';
import { connect, ConnectProps } from 'umi';
import { ConnectState } from '@/models/connect';

interface LoadingLayoutProps extends ConnectProps {
  loading?: boolean;
}

interface LoadingLayoutState {
  isReady: boolean;
}

class LoadingLayout extends React.Component<LoadingLayoutProps, LoadingLayoutState> {
  state: LoadingLayoutState = {
    isReady: false,
  };

  componentDidMount() {
    this.setState({
      isReady: true,
    });
  }

  render() {
    const { isReady } = this.state;
    const { children, loading } = this.props;

    if (loading || !isReady) {
      return <PageLoading />;
    }
    return children;
  }
}

export default connect(({ loading }: ConnectState) => ({
  loading: loading.models.user,
}))(LoadingLayout);
