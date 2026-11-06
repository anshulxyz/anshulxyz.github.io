export default {
	tags: [
		"lists"
	],
	layout: "layouts/list.njk",
	eleventyComputed: {
		title: (data) => data.title || (data.page.fileSlug ? data.page.fileSlug.charAt(0).toUpperCase() + data.page.fileSlug.slice(1) : ""),
	}
};
