import * as d3 from 'd3'

function component() {
    const element = document.createElement('div');

    return element;
}

function form(){
    /*const form = document.createElement('form');
    var fields = [ 
        {name: 'Numeracy', type: 'slider', display: 'Numeracy'},
        {name: 'Engagement', type: 'slider', display: 'Digital engagement'},
        {name: 'Teamwork', type: 'slider', display: 'Teamwork'},
        {name: 'Writing', type: 'slider', display: 'Writing'},
        {name: 'Reading', type: 'slider', display: 'Reading'},
        {name: 'Learning', type: 'slider', display: 'Learning'},
        {name: 'Problem', type: 'slider', display: 'Problem solving'},
        {name: 'communication', type: 'slider', display: 'Oral communication'},
        {name: 'communication', type: 'slider', display: 'Oral communication'},
        {name: 'organising', type: 'slider', display: 'Planning and organising'},
        {name: 'innovation', type: 'slider', display: 'Initiative and innovation'},
    ];

    for (let f in fields){
        var label = document.createElement('label');
        var input = document.createElement('input');
        label.innerHTML = fields[f].display;
        input.type = fields[f].type;
        input.name = fields[f].name;
        form.appendChild(label);
        form.appendChild(input);
        form.appendChild(document.createElement('br'));
    };

    return form*/
    d3.csv('core.csv', function(data : d3.DSVRowString <string>, index: number, collums: string[]): object{
        let body = d3.select('body');
        
        let competency = data.map(function(a){
            return a.Core_Competencies;
        })

        let unique_competency = new Set(competency);

        return void
    })
}


document.body.appendChild(component ());
//document.body.appendChild( form ());