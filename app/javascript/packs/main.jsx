import React, { Component } from 'react';
import ReactDOM from 'react-dom'
import Navbar from './navbar'
import Header from './header'
import TableSelector from './tableSelector'
import PropertyTable from './propertyTable'
import Footer from './footer';

class Main extends Component{
    render(){
        return(
            React.createElement(
                "div",
                null,
                <Navbar/>,
                <Header/>,
                <TableSelector/>,
                <PropertyTable/>,
                <Footer/>
            )
        )
    }
}


ReactDOM.render(
    <Main/>,
  document.body
);