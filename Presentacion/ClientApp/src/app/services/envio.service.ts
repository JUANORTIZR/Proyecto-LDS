import { Injectable } from '@angular/core';
import { BehaviorSubject, Observable } from 'rxjs';
import { Servicio } from '../LogisticaDelSinu/Models/servicio';

@Injectable({
  providedIn: 'root'
})
export class EnvioService {
  
  
  public Servicio: Observable<Servicio>;
  private sevicioBehavior: BehaviorSubject<Servicio>;
  constructor() {
    this.sevicioBehavior = new BehaviorSubject<Servicio>(new Servicio);
    this.Servicio = this.sevicioBehavior.asObservable();
   }

  public EnviarServicio(servicio: Servicio) {
    this.sevicioBehavior.next(servicio);
    this.Servicio = this.sevicioBehavior.asObservable();
  }

  
}
