import './App.css';
import axios from "axios";
import Moods from './components/Moods';
import { useEffect, useState } from 'react';

const API_URL = "http://localhost:3000/api/v1/moods";

function getAPIData() {
  return axios.get(API_URL).then((response) => response.data)
}

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
    <div className="App">
     <Moods moods={moods} />
    </div>
  );
}

export default App;
