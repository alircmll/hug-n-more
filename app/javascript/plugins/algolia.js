/*
require('algolia/v3/algoliasearch.min');

function search() {
    var client = algoliasearch(ALGOLIA_API_KEY, '6cd6730f125ef04514f713158e68e633');
    var index = client.initIndex('YourIndexName');
    index.search('something', { hitsPerPage: 10, page: 0 })
    .then(function searchDone(content) {
        console.log(content)
    })
    .catch(function searchFailure(err) {
        console.error(err);
    });
}

export { search };

*/