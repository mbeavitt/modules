#!/usr/bin/env nextflow

nextflow.enable.dsl = 2

include { FASTTREE } from "$moduleDir/modules/nf-core/fasttree/main.nf"

workflow test_fasttree {

    input = [ file(params.test_data['sarscov2']['genome']['informative_sites_fas'], checkIfExists: true) ]

    FASTTREE ( input )
}
