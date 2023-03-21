<script lang="ts">
  // types
  // svelte
  // sveltekit
  // 3rd party
  // project
  // components
  import Seo from '$components/Seo.svelte';
  import Hero from '$components/Hero.svelte';
  import Catalog from '$components/Catalog.svelte';
  import AboutUs from '$components/AboutUs.svelte';
  // icons
  // props
  // state
  // reactive statements
  // event handlers
  // lifecycle
</script>

<Seo />

<main>
  <Hero />
  <Catalog />
  <AboutUs />

  <section>
    <h2>Reviews</h2>
  </section>

  <section>
    <table>
      <h2 id="contact-us">Contact us</h2>
      <tbody>
        <tr>
          <td>Phone (Airtel)</td>
          <td><a href="tel:0702557298" target="_blank">0702557298</a></td>
        </tr>
        <tr>
          <td>Phone (MTN)</td>
          <td><a href="tel:0782346200" target="_blank">0782346200</a></td>
        </tr>
        <tr>
          <td>Twitter</td>
          <td>
            <a href="https://twitter.com/shindradavid" target="_blank">@shindras-oven</a>
          </td>
        </tr>
        <tr>
          <td>WhatsApp</td>
          <td><a href="https://wa.me" target="_blank">0702557298</a></td>
        </tr>
        <tr>
          <td>Address</td>
          <td>Nsambya, Gogonya road</td>
        </tr>
      </tbody>
    </table>
  </section>
</main>

<style lang="scss"></style>
