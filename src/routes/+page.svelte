<script lang="ts">
  import { Tab, TabGroup, TabList, TabPanel, TabPanels } from '@rgossiaux/svelte-headlessui';

  import Seo from '$components/Seo.svelte';
  import Footer from '$components/Footer.svelte';
  import Header from '$components/Header.svelte';
  import Hero from '$components/Hero.svelte';
</script>

<Seo />

<Header />

<main>
  <Hero />
  <section>
    <h2>Our catalog</h2>

    <TabGroup>
      <TabList>
        <Tab class={({ selected }) => (selected ? 'tab-selected' : 'tab-unselected')}>Cakes</Tab>
        <Tab class={({ selected }) => (selected ? 'tab-selected' : 'tab-unselected')}>Cup cakes</Tab
        >
        <Tab class={({ selected }) => (selected ? 'tab-selected' : 'tab-unselected')}>Cookies</Tab>
      </TabList>
      <TabPanels>
        <TabPanel>Content 1</TabPanel>
        <TabPanel>Content 2</TabPanel>
        <TabPanel>Content 3</TabPanel>
      </TabPanels>
    </TabGroup>
  </section>

  <section>
    <h2>About us</h2>
  </section>

  <section>
    <h2>Reviews</h2>
  </section>

  <section>
    <div>
      <h2>Our contacts</h2>
      <p>Phone (Airtel)</p>
      <p>Phone (MTN)</p>
      <p>WhatsApp</p>
      <p>Email</p>
    </div>
  </section>
</main>

<Footer />

<style lang="scss"></style>
