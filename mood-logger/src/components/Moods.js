import React from 'react'

function Moods(props) {
  return (
    <div>
    <h1>Api moods!</h1>
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

export default Moods