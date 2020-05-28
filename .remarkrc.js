module.exports = {
  "settings": {
    "bullet": "*",
    "emphasis": "_",
    "strong": "*",
    "fence": "`",
    "rule": "-",
    "ruleSpaces": false,
    "ruleRepetition": 3,
    "gfm": true,
    "footnotes": true,
    "commonmark": false,
    "pedantic": false,
    "entities": false,
    "fences": true,
    "spacedTable": true,
    "listItemIndent": "💩",
    "remarkLinstListItemIndent": "💩",
    "list-item-indent": "💩",
    "remark-lint-list-item-indent": "💩"
  },
  "plugins": [
    ["remark-frontmatter", "yaml"],
    "remark-squeeze-paragraphs",
    "remark-slug",
    [
      "remark-heading-gap",
      {
        "2": { "before": "", "after": "" }
      }
    ],
    "remark-inline-links",
    [
      "remark-textr",
      {
        "options": { "locale": "en-us" },
        "plugins": [
          "typographic-em-dashes",
          "typographic-en-dashes",
          "typographic-single-spaces"
        ]
      }
    ],
    "remark-lint",
    "remark-lint-no-empty-sections",
    "remark-lint-code",
    ["remark-lint-blockquote-indentation", 2],
    [
      "remark-lint-checkbox-character-style",
      { "checked": "x", "unchecked": " " }
    ],
    "remark-lint-checkbox-content-indent",
    ["remark-lint-code-block-style", "fenced"],
    "remark-lint-definition-case",
    "remark-lint-definition-spacing",
    [
      "remark-lint-fenced-code-flag",
      { "allowEmpty": true }
    ],
    ["remark-lint-fenced-code-marker", "`"],
    ["remark-lint-file-extension", "md"],
    "remark-lint-final-definition",
    "remark-lint-final-newline",
    "remark-lint-hard-break-spaces",
    "remark-lint-heading-increment",
    ["remark-lint-heading-style", "atx"],
    "remark-lint-link-title-style",
    "remark-lint-list-item-bullet-indent",
    "remark-lint-list-item-content-indent",
    "remark-lint-maximum-heading-length",
    "remark-lint-no-auto-link-without-protocol",
    "remark-lint-no-blockquote-without-marker",
    "remark-lint-no-consecutive-blank-lines",
    "remark-lint-no-duplicate-definitions",
    "remark-lint-no-duplicate-headings",
    "remark-lint-no-emphasis-as-heading",
    "remark-lint-no-empty-url",
    "remark-lint-no-file-name-articles",
    "remark-lint-no-file-name-consecutive-dashes",
    "remark-lint-no-file-name-irregular-characters",
    "remark-lint-no-file-name-mixed-case",
    "remark-lint-no-file-name-outer-dashes",
    "remark-lint-no-heading-content-indent",
    "remark-lint-no-heading-indent",
    "remark-lint-no-heading-like-paragraph",
    "remark-lint-no-inline-padding",
    "remark-lint-no-literal-urls",
    "remark-lint-no-multiple-toplevel-headings",
    "remark-lint-no-reference-like-url",
    "remark-lint-no-shell-dollars",
    "remark-lint-no-shortcut-reference-image",
    "remark-lint-no-table-indentation",
    "remark-lint-no-tabs",
    "remark-lint-no-unused-definitions",
    ["remark-lint-ordered-list-marker-style", "."],
    ["remark-lint-ordered-list-marker-value", "ordered"],
    ["remark-lint-rule-style", "---"],
    ["remark-lint-strong-marker", "*"],
    ["remark-lint-table-cell-padding", "padded"],
    "remark-lint-table-pipe-alignment",
    "remark-lint-table-pipes",
    ["remark-lint-unordered-list-marker-style", "*"],
    ["remark-lint-list-item-indent", "space"]
  ]
}
