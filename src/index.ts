import './style.css';
import * as d3 from 'd3';
import competenciesFile from './competencies.csv';

type ScoreDescription = {
  level: string,
  anchorLevel: string
}

type Competency = {
  name: string,
  description: string,
  value: number,
  scores: Map<number, ScoreDescription>
};

d3.csv(competenciesFile).then((data: d3.DSVRowArray<string>): object => {
    let competencies : Map<string, Competency> = new Map();
    data.forEach((c: d3.DSVRowString) => {
      if(competencies.has(c.Core_Competencies)){
        let current = competencies.get(c.Core_Competencies);
        current.scores.set(parseInt(c.Score), { level: c.Proficiency_level, anchorLevel: c.Anchor_value });
        competencies.set(c.Core_Competencies, current);
      }
      else{
        let competency : Competency = {
          name: c.Core_Competencies,
          value: 5,
          description: c["Competency Description"],
          scores: new Map([[parseInt(c.Score), {
            level: c["Proficiency_level"],
            anchorLevel: c.Anchor_value
          }]])
        };
        competencies.set(c.Core_Competencies, competency);
      }
    });
    let body = d3.select('#competencies');

    /* Create competency sliders */
    let competency = body.selectAll(".competencies")
        .data(competencies.values())
        .enter()
          .append("div")
          .attr("class", "competencies")

    competency
      .append("label")
      .text((c: Competency) => c.name)

    competency
      .append("p")
      .text(c => c.description)

    /* Competency descriptions */
    function changeInput(_ : InputEvent, c: Competency){
      let newValue = parseInt(this.value);
      let competency = competencies.get(c.name);
      competency.value = newValue;
      competencies.set(c.name, competency);

      d3.selectAll(".comp-level")
        .data(competencies.values())
        .text(c => c.scores.get(c.value).level)

      d3.selectAll(".comp-anchor")
        .data(competencies.values())
        .text(c => c.scores.get(c.value).anchorLevel)
    }

    competency
      .append("input")
      .attr("type", "range")
      .attr("min", 1)
      .attr("max", 10)
      .attr("value", c => c.value)
      .on("input", changeInput);
      
    competency
      .append("p")
      .attr("class", "comp-level")
      .text(c => c.scores.get(c.value).level)

    competency
      .append("p")
      .attr("class", "comp-anchor")
      .text(c => c.scores.get(c.value).anchorLevel)

    return {};
})
