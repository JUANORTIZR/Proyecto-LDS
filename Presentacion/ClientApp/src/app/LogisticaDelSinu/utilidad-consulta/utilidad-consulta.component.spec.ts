import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { UtilidadConsultaComponent } from './utilidad-consulta.component';

describe('UtilidadConsultaComponent', () => {
  let component: UtilidadConsultaComponent;
  let fixture: ComponentFixture<UtilidadConsultaComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ UtilidadConsultaComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(UtilidadConsultaComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
