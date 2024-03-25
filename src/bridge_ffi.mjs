/**
 * Imports
 */
import {marked} from "marked";


/**
 * Converts markdown to html
 */
export function convert_md_to_html(content) {
    return marked.parse(content ?? "")
}