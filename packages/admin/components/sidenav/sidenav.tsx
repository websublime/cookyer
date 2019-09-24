import React, { FunctionComponent } from 'react';
import Box from '@material-ui/core/Box';
import List from '@material-ui/core/List';
import ListItem from '@material-ui/core/ListItem';
import ListItemIcon from '@material-ui/core/ListItemIcon';
import ListItemText from '@material-ui/core/ListItemText';
import Language from '@material-ui/icons/Language';
import Dehaze from '@material-ui/icons/Dehaze';
import GroupWork from '@material-ui/icons/GroupWork';
import Apps from '@material-ui/icons/Apps';
import Category from '@material-ui/icons/Category';
import BubbleChart from '@material-ui/icons/BubbleChart';
import TableChart from '@material-ui/icons/TableChart';
import Assignment from '@material-ui/icons/Assignment';
import LineStyle from '@material-ui/icons/LineStyle';
import Divider from '@material-ui/core/Divider';

const SideNav: FunctionComponent<any> = (_props?: any) => {
  return (
    <Box display="flex" flexDirection="column" my={2}>
      <List component="nav" aria-label="main navigator">
        <ListItem button>
          <ListItemIcon>
            <Language />
          </ListItemIcon>
          <ListItemText primary="Languages" />
        </ListItem>
        <ListItem button>
          <ListItemIcon>
            <Dehaze />
          </ListItemIcon>
          <ListItemText primary="Units" />
        </ListItem>
        <ListItem button>
          <ListItemIcon>
            <GroupWork />
          </ListItemIcon>
          <ListItemText primary="Groups" />
        </ListItem>
      </List>
      <Divider />
      <List component="nav" aria-label="secondary navigator">
        <ListItem button>
          <ListItemIcon>
            <Apps />
          </ListItemIcon>
          <ListItemText primary="Products" />
        </ListItem>
        <ListItem button>
          <ListItemIcon>
            <Category />
          </ListItemIcon>
          <ListItemText primary="Families" />
        </ListItem>
        <ListItem button>
          <ListItemIcon>
            <BubbleChart />
          </ListItemIcon>
          <ListItemText primary="Components" />
        </ListItem>
        <ListItem button>
          <ListItemIcon>
            <TableChart />
          </ListItemIcon>
          <ListItemText primary="Table" />
        </ListItem>
      </List>
      <Divider />
      <List component="nav" aria-label="third navigator">
        <ListItem button>
          <ListItemIcon>
            <Assignment />
          </ListItemIcon>
          <ListItemText primary="Receipts" />
        </ListItem>
        <ListItem button>
          <ListItemIcon>
            <LineStyle />
          </ListItemIcon>
          <ListItemText primary="Types" />
        </ListItem>
      </List>
    </Box>
  );
};

export default SideNav;
