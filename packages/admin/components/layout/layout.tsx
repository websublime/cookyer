import React, { FunctionComponent } from 'react';
import Box, { BoxProps } from '@material-ui/core/Box';

const UILayout: FunctionComponent<BoxProps> = (props: BoxProps) => {
  return <Box {...props}></Box>;
};

export default UILayout;
