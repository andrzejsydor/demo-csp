import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { CspDenyComponent } from './csp-deny.component';

describe('CspDenyComponent', () => {
  let component: CspDenyComponent;
  let fixture: ComponentFixture<CspDenyComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ CspDenyComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(CspDenyComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
