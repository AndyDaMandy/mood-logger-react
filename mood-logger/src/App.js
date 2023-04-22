import './App.css';
import axios from "axios";
import 'bootstrap/dist/css/bootstrap.min.css';
import Moods from './components/Moods';
import Mood from './components/Mood';
import Navbar from './components/Navbar';
import { useEffect, useState } from 'react';
import {
  createBrowserRouter,
  RouterProvider,
} from "react-router-dom";



//const API_URL = "https://wispy-smoke-4005.fly.dev/api/v1/moods";
const API_URL = "http://localhost:3000/api/v1/moods"

function getAPIData() {
  return axios.get(API_URL).then((response) => response.data)
}

const router = createBrowserRouter([
  {
    path: "/",
    element: <div>Hello world!</div>,
  },
]);

function App() {
  const [moods, setMoods] = useState([]);

  useEffect(() => {
    let mounted = true;
    getAPIData().then((items) => {
      if (mounted) {
        setMoods(items)
      }
    });
     return () => (mounted = false);
  }, []);

  return (
    <><link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
      integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
      crossorigin="anonymous" />
      <script src="https://cdn.jsdelivr.net/npm/react/umd/react.production.min.js" crossorigin></script>
      <script src="https://cdn.jsdelivr.net/npm/react-dom/umd/react-dom.production.min.js" crossorigin></script>
      <script src="https://cdn.jsdelivr.net/npm/react-bootstrap@next/dist/react-bootstrap.min.js" crossorigin></script>
      <script>var Alert = ReactBootstrap.Alert;</script>
      
      <div className="App">
        <Navbar />
        <Moods moods={moods} />
      </div></>
  );
}

export default App;
