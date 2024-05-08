import * as mod from "https://deno.land/std@0.213.0/dotenv/mod.ts";
const keys = await mod.load({export:true}) // read API key from .envclear
import { 
    Document, 
    VectorStoreIndex, 
    SimpleDirectoryReader 
} from "npm:llamaindex@0.1.8"
const documents = await new SimpleDirectoryReader()
    .loadData({directoryPath: "./data"})
const index = await VectorStoreIndex.fromDocuments(documents)
const queryEngine = index.asQueryEngine()
const response = await queryEngine.query({
    query: "What did the author do in college?"
})
console.log(response.toString())