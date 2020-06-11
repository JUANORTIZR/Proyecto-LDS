import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { UsuarioServicioConsultaComponent } from './usuario-servicio-consulta.component';

describe('UsuarioServicioConsultaComponent', () => {
  let component: UsuarioServicioConsultaComponent;
  let fixture: ComponentFixture<UsuarioServicioConsultaComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ UsuarioServicioConsultaComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(UsuarioServicioConsultaComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
