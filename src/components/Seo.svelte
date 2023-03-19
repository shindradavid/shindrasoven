<script lang="ts">
  import { page } from '$app/stores';
  // props
  const description =
    'Shindra Tours offers a range of tours and activities that allow you to experience the beauty of Uganda. Book a trip today and create unforgettable memories.';
  export let imageURL = '/images/default-seo-image.png';
  export let imageAlt = 'Shindra tours';
  // state
  const title = "Shindra's oven";
  const siteUrl = 'https://shindrasoven.vercel.app';
  const siteName = "Shindra's oven";
</script>

<svelte:head>
  <title>{title}</title>
  <meta name="description" content={description} />
  <meta name="image" content={new URL(imageURL, siteUrl).toString()} />
  <link rel="canonical" href={new URL($page.url.pathname, siteUrl).toString()} />
  <!-- twitter card -->
  <meta property="twitter:url" content={new URL($page.url.pathname, siteUrl).toString()} />
  <meta name="twitter:card" content="summary_large_image" />
  <meta name="twitter:site" content="@shindradavid" />
  <meta name="twitter:creator" content="@shindradavid" />
  <meta name="twitter:title" content={title} />
  <meta name="twitter:description" content={description} />
  <meta name="twitter:image" content={new URL(imageURL, siteUrl).toString()} />
  <meta name="twitter:image:alt" content={imageAlt} />
  <!-- open graph tags -->
  <meta property="og:url" content={new URL($page.url.pathname, siteUrl).toString()} />
  <meta name="og:locale" content="en" />
  <meta name="og:type" content="website" />
  <meta name="og:site_name" content={siteName} />
  <meta name="og:title" content={title} />
  <meta name="og:description" content={description} />
  <meta name="og:image:url" content={new URL(imageURL, siteUrl).toString()} />
  <meta name="og:image:alt" content={imageAlt} />
</svelte:head>
