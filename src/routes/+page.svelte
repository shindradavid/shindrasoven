<script lang="ts">
  import { Tab, TabGroup, TabList, TabPanel, TabPanels } from '@rgossiaux/svelte-headlessui';

</script>

<main>
  <h1>Shindra's oven.</h1>
  <p>Baked to perfection, just for you.</p>
  <a href="#contact-us">Contact us</a>

  <section>
    <h2>Our catalog</h2>

    <TabGroup>
      <TabList>
        <Tab class={({selected}) => "tab-selected" : "tab-unselected"}>Cakes</Tab>
        <Tab class={({selected}) => "tab-selected" : "tab-unselected"}>Cup cakes</Tab>
        <Tab class={({selected}) => "tab-selected" : "tab-unselected"}>Cookies</Tab>
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
    <div>
      <h2>Our contacts</h2>
      <p>Phone (Airtel)</p>
      <p>Phone (MTN)</p>
      <p>WhatsApp</p>
      <p>Email</p>
    </div>
  </section>
</main>

<style lang="scss"></style>