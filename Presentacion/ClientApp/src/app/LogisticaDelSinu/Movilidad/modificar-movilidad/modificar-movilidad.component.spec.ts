import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ModificarMovilidadComponent } from './modificar-movilidad.component';

describe('ModificarMovilidadComponent', () => {
  let component: ModificarMovilidadComponent;
  let fixture: ComponentFixture<ModificarMovilidadComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ModificarMovilidadComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ModificarMovilidadComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
