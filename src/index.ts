import './style.css';
import * as d3 from 'd3';
import competencies from './competencies.csv';

type Competency = {
  name: string,
  description: string,
  score: number,
  level: string,
  anchorLevel: string
};

d3.csv(competencies).then((data: d3.DSVRowArray<string>): object => {
    let competencies : Competency[] = data.map(d => ({ name: d.Core_Competencies, description: d["Competency Description"], score: parseInt(d.Score), level: d["Proficiency_level"], anchorLevel: d.Anchor_value }));
    let body = d3.select('#competencies');
    let competencyNames = competencies.map(c => c.name);
    let uniqueCompetencies = new Set(competencyNames);

    let competency = body.selectAll(".competencies")
        .data(uniqueCompetencies)
        .enter()
          .append("div")
          .attr("class", "competencies")

    competency
      .append("label")
      .text(c => c)

    competency
      .append("input")
      .attr("type", "range")
      .attr("min", 0)
      .attr("max", 10);

    return {};
})
