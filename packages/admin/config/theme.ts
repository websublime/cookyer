import { createMuiTheme } from '@material-ui/core/styles';

const theme = createMuiTheme({
  palette: {
    primary: {
      light: '#c95cff',
      main: '#9122ff',
      dark: '#5700ca',
      contrastText: '#FFFFFF',
    },
    secondary: {
      light: '#ffffff',
      main: '#f6fafd',
      dark: '#bdbfbf',
      contrastText: '#303440',
    },
  },
});

export default theme;
