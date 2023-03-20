<script lang="ts">
  import { Tab, TabGroup, TabList, TabPanel, TabPanels } from '@rgossiaux/svelte-headlessui';
</script>

<section>
  <h2>Our catalog</h2>

  <TabGroup>
    <TabList>
      <Tab class={({ selected }) => (selected ? 'tab-selected' : 'tab-unselected')}>Birthday cakes</Tab>
      <Tab class={({ selected }) => (selected ? 'tab-selected' : 'tab-unselected')}>Wedding cakes</Tab>
      <Tab class={({ selected }) => (selected ? 'tab-selected' : 'tab-unselected')}>Cookies</Tab>
      <Tab class={({ selected }) => (selected ? 'tab-selected' : 'tab-unselected')}>Pizzas</Tab>
    </TabList>
    <TabPanels>
      <TabPanel>Content 1</TabPanel>
      <TabPanel>Content 2</TabPanel>
      <TabPanel>Content 3</TabPanel>
      <TabPanel>Content 4</TabPanel>
    </TabPanels>
  </TabGroup>
</section>