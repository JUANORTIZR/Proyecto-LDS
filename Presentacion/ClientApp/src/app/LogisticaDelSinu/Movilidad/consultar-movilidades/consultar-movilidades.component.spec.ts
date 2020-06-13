import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ConsultarMovilidadesComponent } from './consultar-movilidades.component';

describe('ConsultarMovilidadesComponent', () => {
  let component: ConsultarMovilidadesComponent;
  let fixture: ComponentFixture<ConsultarMovilidadesComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ConsultarMovilidadesComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ConsultarMovilidadesComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
