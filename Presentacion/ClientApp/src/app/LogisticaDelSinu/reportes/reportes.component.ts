import { Component, OnInit } from '@angular/core';
import * as Chart from 'chart.js';
import { Servicio } from '../Models/servicio';
import { ServicioService } from 'src/app/services/servicio.service';
import { MovilidadService } from 'src/app/services/movilidad.service';
import { Movilidad } from '../Models/movilidad';


@Component({
  selector: 'app-reportes',
  templateUrl: './reportes.component.html',
  styleUrls: ['./reportes.component.css']
})
export class ReportesComponent implements OnInit {
  canvas: any;
  ctx: any;
  serviciosAuxm: Movilidad[];
  serviciosAux: Servicio[];
  constructor(private servicioService: ServicioService, private movilidadService: MovilidadService) { }

  ngOnInit(): void {
    this.grafica();
    this.actualizarListaSignal();
  }


  randomColor(lista: any) {
    return lista[Math.floor(Math.random() * lista.length)]
  }

  private actualizarListaSignal(){
    this.servicioService.signalRecived.subscribe((servicio: Servicio) => {
      this.grafica();
    });
    this.movilidadService.signalRecived.subscribe((movilidad: Movilidad) => {
      this.grafica();
    });
  
  }

  grafica() {
    var color = [];
    var r = new Array("00", "33", "66", "99", "CC", "FF");
    var g = new Array("00", "33", "66", "99", "CC", "FF");
    var b = new Array("00", "33", "66", "99", "CC", "FF");

    for (var i = 0; i < r.length; i++) {
      for (var j = 0; j < g.length; j++) {
        for (var k = 0; k < b.length; k++) {
          var nuevoc = "#" + r[i] + g[j] + b[k];
          color.push(nuevoc);
        }
      }
    }
    this.servicioService.gets().subscribe(s => {
      console.log(s);
      if (s != null) {
        this.canvas = document.getElementById('myChart');
        this.ctx = this.canvas.getContext('2d');
        var listaLabels = [];
        var listaDatos = [];
        var listaColors = [];
        this.serviciosAux = [];
        for (let index = 0; index < s.length; index++) {
          var respuesta = this.serviciosAux.find(p => p.tipoServicio == s[index].tipoServicio);
          if (respuesta != null) {
            var numero = this.serviciosAux.findIndex(p => p.tipoServicio == s[index].tipoServicio);
            listaDatos[numero] += 1;
          } else {
            listaLabels.push(s[index].tipoServicio);
            listaDatos.push(1);
            this.serviciosAux.push(s[index]);
            listaColors.push(this.randomColor(color));
          }
        }
        this.movilidadService.gets().subscribe(m => {
          var posicion;
          for (let index = 0; index < m.length; index++) {
            if (index == 0) {
              listaLabels.push("Movilidad");
              listaDatos.push(1);
              listaColors.push(this.randomColor(color));

            } else {
              posicion = listaLabels.findIndex(p => p == "Movilidad");
              listaDatos[posicion] += 1;
            }


          }
        });
        const myChart = new Chart(this.ctx, {
          type: 'pie',
          data: {
            labels: listaLabels,
            datasets: [{
              label: 'Total cases.',
              data: listaDatos,
              backgroundColor: listaColors,
              borderWidth: 1
            }]
          },
          options: {
            legend: {
              display: true
            },
            responsive: true
          }
        });
      }
    });

  }




}
