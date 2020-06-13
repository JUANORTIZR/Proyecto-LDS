import { Pipe, PipeTransform } from '@angular/core';
import { Servicio } from '../LogisticaDelSinu/Models/servicio';

@Pipe({
  name: 'filtroServicio'
})
export class FiltroServicioPipe implements PipeTransform {

  transform(servicio: Servicio[], searchText:string): any {
    if(searchText == null) return servicio;
     return servicio.filter(s=>(s.idServicio.toLowerCase().indexOf(searchText.toLowerCase()) !== -1)||(s.tipoServicio.toLowerCase().indexOf(searchText.toLowerCase()) !== -1)|| (s.idCliente.toLowerCase().indexOf(searchText.toLowerCase()) !== -1))
  }

}
