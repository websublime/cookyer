import React from 'react';
import Spa from '@material-ui/icons/Spa';

import Box from '@material-ui/core/Box';
import Typography from '@material-ui/core/Typography';
import UILayout from '../components/layout/layout';
import SideNav from '../components/sidenav/sidenav';

function Home() {
  return (
    <React.Fragment>
      <UILayout
        display="flex"
        width={60}
        bgcolor="primary.main"
        alignItems="center"
        color="primary.contrastText"
        flexDirection="column"
      >
        <Box flexGrow={1}></Box>
        <Box>
          <Spa fontSize="large"></Spa>
        </Box>
      </UILayout>
      <UILayout
        display="flex"
        width={250}
        flexGrow={0}
        flexShrink={0}
        flexDirection="column"
        bgcolor="primary.contrastText"
        color="secondary.contrastText"
      >
        <Box display="flex" justifyContent="center" my={2}>
          <Typography variant="h4" gutterBottom>
            Cookyer
          </Typography>
        </Box>
        <SideNav />
      </UILayout>
      <UILayout display="flex" bgcolor="secondary.main" flexGrow={1} flexShrink={0}></UILayout>
    </React.Fragment>
  );
}

export default Home;
