import React from "react"
import ReactDOM from "react-dom"
import "./index.css"
import App from "./components/App"
import data from "./data/dummy-data.json"

console.log(data)

ReactDOM.render(<App />, document.getElementById("root"))
