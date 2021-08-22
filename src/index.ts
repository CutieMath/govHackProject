import './style.css';
import * as d3 from 'd3';
import competenciesFile from './competencies.csv';
import jobsFile from './jobs.csv';
import projectsFile from './projects.csv';
import projectTasksFile from './projects-tasks.csv';
//import competenciesJobFile from './competencies-jobs.csv';
//import tasksFile from './tasks.csv';

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

  let selectedJobs : Job[] = [];
  let jobsData = await d3.csv(jobsFile);
  let jobs : Job[] = jobsData.map((d: d3.DSVRowString) => ({code: d.ANZSCO_Code, title: d.ANZSCO_Title, description: d.ANZSCO_Desc }));

  function removeJob(_ : MouseEvent, job : Job){
    selectedJobs = selectedJobs.filter(j => j.code != job.code);
    updateJobs()
  }

  function addJob(_: InputEvent, job : Job){
    selectedJobs.push(job);
    updateJobs()

    updateProjects();
  }

  function updateJobs(){
    let jobSelection = jobSelections
      .selectAll(".job-selection")
      .data(selectedJobs);
    console.log(selectedJobs);
    jobSelection.exit().remove();
    
    jobSelection.enter()
      .append("div")
        .attr("class", "job-selection")
        .on('click', removeJob)
        .text(j => j.title)
  }

  let multiselectContainer = d3.select("#jobs")
    .append("div")
    .attr("class", "multiselect-container")

  let jobSelections = multiselectContainer.append("div")
    .attr("class","selections")
  
  jobSelections.selectAll("job-selection")
    .data(selectedJobs)
    .enter()
    .append("div")
      .attr("class", "job-selection")
      .on('click', removeJob)
      .text(j => j.title)

  function filterJobs(){
    let query = this.value; 
    let filteredJobs = jobs.filter(j => j.title.includes(query));
    
    let multiselectOptions = multiselect.selectAll(".multiselect-option")
        .data(filteredJobs);

    multiselectOptions.exit().remove();

    multiselectOptions.enter()
      .append("option")
        .attr("class", "multiselect-option")
        .attr("value", j => j.title)
        .text(j => j.title)
    multiselectOptions.text(j => j.title)
  }

  multiselectContainer.append("input")
    .attr("class","filter")
    .on("input", filterJobs)

  let multiselect = d3.select("#jobs")
    .append("div")
      .attr("class", "multiselect")
      .append("select")
        .attr("class", "multiple-select-job")
        .attr("multiple", true)

  multiselect.selectAll(".multiselect-option")
    .data(jobs)
    .enter()
    .append("option")
      .on("click", addJob)
      .attr("class", "multiselect-option")
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

  //let competenciesJobData = await d3.csv(competenciesJobFile);
  //let tasksData = await d3.csv(tasksFile);
  /*type SpecialistTask = {
    jobTitle: string,
    taskName: sring,

  };*/

  function sortProjects(projects : Project[], _competencies : IterableIterator<Competency>, _jobs : Job[]): Project[]{

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
