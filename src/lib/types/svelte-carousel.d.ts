declare module 'svelte-carousel' {
  import { SvelteComponentTyped } from 'svelte';

  export interface CarouselProps {
    arrows?: boolean;
    infinite?: boolean;
    initialPageIndex?: number;
    duration?: number;
    autoplay?: boolean;
    autoplayDuration?: number;
    autoplayDirection?: 'next' | 'prev';
    pauseOnFocus?: boolean;
    autoplayProgressVisible?: boolean;
    dots?: boolean;
    timingFunction?: string;
    swiping?: boolean;
    particlesToShow?: number;
    particlesToScroll?: number;
  }

  export interface CarouselEvents {
    pageChange: (event: Event) => void;
  }

  export default class Carousel extends SvelteComponentTyped {
    $$prop_def: CarouselProps;
    $$events_def: CarouselEvents;
  }
}
