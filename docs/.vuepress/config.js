module.exports = {
    title: "Alan.dart documentation",
    description: "Documentation for the Alan.dart SDK",
    head: [
        ['link', {rel: 'icon', href: '/assets/logo.png'}],
        ['link', {rel: "apple-touch-icon", sizes: "57x57", href: "/assets/pwa/apple-icon-57x57.png"}],
        ['link', {rel: "apple-touch-icon", sizes: "60x60", href: "/assets/pwa/apple-icon-60x60.png"}],
        ['link', {rel: "apple-touch-icon", sizes: "72x72", href: "/assets/pwa/apple-icon-72x72.png"}],
        ['link', {rel: "apple-touch-icon", sizes: "76x76", href: "/assets/pwa/apple-icon-76x76.png"}],
        ['link', {rel: "apple-touch-icon", sizes: "114x114", href: "/assets/pwa/apple-icon-114x114.png"}],
        ['link', {rel: "apple-touch-icon", sizes: "120x120", href: "/assets/pwa/apple-icon-120x120.png"}],
        ['link', {rel: "apple-touch-icon", sizes: "144x144", href: "/assets/pwa/apple-icon-144x144.png"}],
        ['link', {rel: "apple-touch-icon", sizes: "152x152", href: "/assets/pwa/apple-icon-152x152.png"}],
        ['link', {rel: "apple-touch-icon", sizes: "180x180", href: "/assets/pwa/apple-icon-180x180.png"}],
        ['link', {rel: "icon", type: "image/png", sizes: "192x192", href: "/assets/pwa/android-icon-192x192.png"}],
        ['link', {rel: "icon", type: "image/png", sizes: "32x32", href: "/assets/pwa/favicon-32x32.png"}],
        ['link', {rel: "icon", type: "image/png", sizes: "96x96", href: "/assets/pwa/favicon-96x96.png"}],
        ['link', {rel: "icon", type: "image/png", sizes: "16x16", href: "/assets/pwa/favicon-16x16.png"}],
        ['link', {rel: "manifest", href: "/assets/pwa/manifest.json",}],
        ['meta', {name: "msapplication-TileColor", content: "#ffffff"}],
        ['meta', {name: "msapplication-TileImage", content: "/ms-icon-144x144.png"}],
        ['meta', {name: "theme-color", content: "#ffffff"}],
        ['meta', {property: "og:title", content: "Alan.dart documentation"}],
        // ['meta', {property: "og:url", content: "https://docs.desmos.network/"}],
        ['meta', {property: "og:description", content: "Learn how to use the Alan.dart SDK"}],
        // ['meta', {property: "og:image", content: "https://docs.desmos.network/assets/logo.png"}],
        ['meta', {roperty: "og:type", content: "website"}],
        ['meta', {property: "og:locale", content: "en_US"}],
    ],
    markdown: {
        lineNumbers: true,
    },
    plugins: [
        'vuepress-plugin-element-tabs',
        '@vuepress/google-analytics',
        // {
        // 'ga': 'UA-108489905-8' // UA-00000000-0
        // }
    ],
    themeConfig: {
        repo: "alan-sdk/alan.dart",
        editLinks: true,
        docsDir: "docs",
        docsBranch: "master",
        editLinkText: 'Edit this page on Github',
        lastUpdated: true,
        logo: "/assets/logo.png",
        nav: [
            // {text: "Website", link: "https://desmos.network", target: "_blank"},
        ],
        sidebarDepth: 2,
        sidebar: [
            ["Getting started", "README.md"],
        ],
    }
};
