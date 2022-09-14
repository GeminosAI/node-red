var should = require("should");
var request = require('supertest');
var express = require('express');
var bodyParser = require('body-parser');
var sinon = require('sinon');

var { TypeDB, SessionType, TransactionType } = require("typedb-client")

var NR_TEST_UTILS = require("nr-test-utils");

var typedb = NR_TEST_UTILS.require("@node-red/editor-api/lib/admin/typedb");
var apiUtil = NR_TEST_UTILS.require("@node-red/editor-api/lib/util");



describe("api/admin/TYPEDB", function () {
    var app;
    before(function () {
        app = express()
        app.use(bodyParser.json())

        app.post("/typedb/set-host", typedb.set_host, apiUtil.errorHandler);
        app.get("/typedb/get-host", typedb.get_host, apiUtil.errorHandler);
        app.get("/typedb/get-all-databases", typedb.get_all_databases, apiUtil.errorHandler);

        app.post("/typedb/deploy_instances", typedb.deployInstances, apiUtil.errorHandler)
        app.post("/typedb/knowledge", typedb.knowledge, apiUtil.errorHandler);
        app.post("/typedb/causal", typedb.causal, apiUtil.errorHandler);
        app.post("/typedb/storeCausalAnalysis", typedb.storeCausalAnalysis, apiUtil.errorHandler);
    })


    // create gem repo 
    describe('create causal model', function () {

        // make request
        it('checks if model exists', function (done) {
            done()
        })


    })

})