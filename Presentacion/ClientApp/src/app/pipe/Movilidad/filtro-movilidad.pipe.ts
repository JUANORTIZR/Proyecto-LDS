import { Pipe, PipeTransform } from '@angular/core';
import { Movilidad } from 'src/app/LogisticaDelSinu/Models/movilidad';

@Pipe({
  name: 'filtroMovilidad'
})
export class FiltroMovilidadPipe implements PipeTransform {

  transform(movilidad: Movilidad[], searchText:string): any {
    if(searchText == null) return movilidad;
    return movilidad.filter(m => (m.idMovilidad.toLocaleLowerCase().indexOf(searchText.toLocaleLowerCase())!== -1) ||
    (m.nombreCliente.toLowerCase().indexOf(searchText.toLowerCase()) !== -1)||
    m.estado.toLowerCase().indexOf(searchText.toLowerCase()) !== -1)
  }

}
