import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { UsuarioMovilidadConsultaComponent } from './usuario-movilidad-consulta.component';

describe('UsuarioMovilidadConsultaComponent', () => {
  let component: UsuarioMovilidadConsultaComponent;
  let fixture: ComponentFixture<UsuarioMovilidadConsultaComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ UsuarioMovilidadConsultaComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(UsuarioMovilidadConsultaComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
