import './style.css';
import * as d3 from 'd3';
import competenciesFile from './competencies.csv';
import jobsFile from './jobs.csv';
import projectsFile from './projects.csv';
import projectTasksFile from './projects-tasks.csv';
import competenciesJobFile from './competencies-jobs.csv';
import tasksFile from './tasks.csv';
async function main(){

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

  let competencies : Map<string, Competency> = new Map();
  let data = await d3.csv(competenciesFile);
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
        .attr("class", "competency")

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
    updateProjects();
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


  /* Past Jobs */
  type Job = {
    code: string,
    title: string,
    description: string
  };

  function getSelectValues(select : HTMLSelectElement):string[] {
    let result = [];
    let options = select && select.options;
    let opt;

    for (var i=0, iLen=options.length; i < iLen; i++) {
      opt = options[i];

      if(opt.selected) {
        result.push(opt.value || opt.text);
      }
    }
    return result;
  }

  let selectedJobs : Job[] = [];
  let jobsData = await d3.csv(jobsFile);
  let jobs : Job[] = jobsData.map((d: d3.DSVRowString) => ({code: d.ANZSCO_Code, title: d.ANZSCO_Title, description: d.ANZSCO_Desc }));
  function setJobs(_: InputEvent){
    let selection = getSelectValues(this);
    selectedJobs = jobs.filter(j => selection.includes(j.title));
    updateProjects();
  }

  let multiselect = d3.select("#jobs")
    .append("select")
    .attr("multiple", true)
    .on('input', setJobs);

  multiselect.selectAll(".pastJobs")
    .data(jobs)
    .enter()
    .append("option")
      .attr("value", j => j.title)
      .text(j => j.title)


  type Task = {
    name: string,
    duration: number
  }

  type Project = {
    id: string,
    name: string,
    description: string,
    utility: number
    tasks: Task[]
  } 

  let competenciesJobData = await d3.csv(competenciesJobFile);
  let tasksData = await d3.csv(tasksFile);

  function sortProjects(projects : Project[], competencies : IterableIterator<Competency>, jobs : Job[]): Project[]{
    return projects;
  }

  /* Update the projects*/
  function updateProjects(){
    let sorted = sortProjects(projects, competencies.values(), selectedJobs);

    let projectsDiv = d3.select("#projects");
    projectsDiv.selectAll(".project")
      .data(sorted)
      .enter()
      .append("div")
        .attr("class", "project")
        .text(p => p.name)

  }

  let projectsData = await d3.csv(projectsFile);
  let projectTasksData = await d3.csv(projectTasksFile);
  let projectTaskMap : Map<string, Task[]> = new Map();
  projectTasksData.forEach(task => {
    if(projectTaskMap.has(task["Project ID"])){
      let tasks = projectTaskMap.get(task["Project ID"]);
      tasks.push({
        name: task["Task"],
        duration: parseFloat(task["Time"])
      })
      projectTaskMap.set(task["Project ID"], tasks);
    }
    else {
      projectTaskMap.set(task["Project ID"], [{
        name: task["Task"],
        duration: parseFloat(task["Time"])
      }]);
    }
  });

  let projects : Project[] = projectsData.map(d => (
    { id: d["Project ID"],
      name: d["Project name"],
      description: d["Description"],
      utility: parseInt(d["Utility"]),
      tasks: projectTaskMap.get(d["Project ID"])
    }))

  let projectsDiv = d3.select("#projects");
  projectsDiv.selectAll(".project")
    .data(projects)
    .enter()
    .append("div")
      .attr("class", "project")
      .text(p => p.name)

}
main();
