import React from 'react'

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