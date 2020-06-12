import { Pipe, PipeTransform } from '@angular/core';
import { Servicio } from '../LogisticaDelSinu/Models/servicio';

@Pipe({
  name: 'filtroServicioo'
})
export class FiltroServiciooPipe implements PipeTransform {

  transform(servicio: Servicio[],searchText:string): any  {
    if(searchText == null) return servicio;
    return servicio.filter(s => (s.idServicio.toLowerCase().indexOf(searchText.toLowerCase())!= -1)||
      (s.tipoServicio.toLowerCase().indexOf(searchText.toLowerCase())!= -1))
  }

}
