<script lang="ts">
  import { page } from '$app/stores';
</script>

<header class="header">
  <p class="header__logo">Shindra's oven</p>
  <nav class="header__nav">
    <a href="#home">Home</a>
    <a href="#our-catalog">Our catalog</a>
    <a href="#reviews">Reviews</a>
    <a href="{$page.url.pathname}#contact-us">Contact us</a>
  </nav>
</header>
