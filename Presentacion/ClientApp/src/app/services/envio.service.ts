import { Injectable } from '@angular/core';
import { BehaviorSubject, Observable } from 'rxjs';
import { Servicio } from '../LogisticaDelSinu/Models/servicio';
import { Movilidad } from '../LogisticaDelSinu/Models/movilidad';

@Injectable({
  providedIn: 'root'
})
export class EnvioService {
  
  
  public Servicio: Observable<Servicio>;
  private sevicioBehavior: BehaviorSubject<Servicio>;
  public Movilidad: Observable<Movilidad>;
  private movilidadBehavior: BehaviorSubject<Movilidad>;
  constructor() {
    this.sevicioBehavior = new BehaviorSubject<Servicio>(new Servicio);
    this.Servicio = this.sevicioBehavior.asObservable();
    this.movilidadBehavior = new BehaviorSubject<Movilidad>(new Movilidad);
    this.Movilidad = this.movilidadBehavior.asObservable();
   }

  public EnviarServicio(servicio: Servicio) {
    this.sevicioBehavior.next(servicio);
    this.Servicio = this.sevicioBehavior.asObservable();
  }

  public EnviarMovilidad(movilidad:Movilidad){
    this.movilidadBehavior.next(movilidad);
    this.Movilidad = this.movilidadBehavior.asObservable();
  }
  
}
