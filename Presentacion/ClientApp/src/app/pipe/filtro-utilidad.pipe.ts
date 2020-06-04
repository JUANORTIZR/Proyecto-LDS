import { Pipe, PipeTransform } from '@angular/core';
import { Utilidad } from '../LogisticaDelSinu/Models/utilidad';

@Pipe({
  name: 'filtroUtilidad'
})
export class FiltroUtilidadPipe implements PipeTransform {

  transform(utilidad: Utilidad[], searchText:string): any{
    if(searchText == null) return utilidad;
    return utilidad.filter(u=>(u.idPago.toLowerCase().indexOf(searchText.toLowerCase()) !== -1))
  }

}
