import React from 'react'
import axios from "axios";



import { useEffect, useState } from 'react';
//const API_URL = "https://wispy-smoke-4005.fly.dev/api/v1/moods";
const API_URL = "http://localhost:3000/api/v1/moods"

function Mood(props) {
  return (
    <div>
    <h1>Ceck out this mood!</h1>
    {props.moods.map((mood) => {
      return (
        <div key={mood.id}>
          <h2>{mood.vibe}</h2>
          <p>{mood.note}</p>
        </div>
    );
    })}
   </div>
  )
}

export default Mood