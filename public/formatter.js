window.addEventListener("load", () => {
    const $head = document.querySelector("head");
    const $body = document.querySelector("body");
    const script = $body.innerHTML.split("\n");
    const content = script.reduce(
        (content, line) => {
            if (line.slice(0, 2) === "##") {
                content.head.push(line.slice(2));
            } else {
                content.body.push(line);
            }
            return content;
        },
        { head: [], body: [] }
    );

    let rawCode = content.body.join("\n");
    rawCode = rawCode.replace(/&gt;/g, ">");
    rawCode = rawCode.replace(/&amp;/g, "&");

    $body.innerHTML =
        "<pre class='language-bash'><code class='language-bash'>" +
        rawCode +
        "</code></pre>";
    $head.innerHTML =
        "<title>Remote script</title>" + content.head.join("\n");
});