declare module 'react-expand-collapse' {
  import * as React from 'react';

  export interface ExpandCollapseProps {
    previewHeight: string;
    expandText: any;
    collapseText: any;
    ellipsis: boolean;
  }

  export default class ExpandCollapse extends React.PureComponent<ExpandCollapseProps, any> {}
}
