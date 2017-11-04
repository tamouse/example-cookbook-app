import React from 'react';
import './index.css';
import {Grid, Row, Col} from 'react-bootstrap'

class App extends React.Component {
  render() {
    return (
      <div className="App">
        <Grid fluid={true}>
          <Row>
            <Col xs={12}>
              Hello, world
            </Col>
          </Row>
        </Grid>
      </div>
    );
  }
}

export default App;
