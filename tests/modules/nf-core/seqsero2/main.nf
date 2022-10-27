#!/usr/bin/env nextflow

nextflow.enable.dsl = 2

include { SEQSERO2 } from "$moduleDir/modules/nf-core/seqsero2/main.nf"

workflow test_seqsero2 {

    input = [ [ id:'test', single_end:false ], // meta map
              file(params.test_data['sarscov2']['genome']['genome_fasta'], checkIfExists: true) ]

    SEQSERO2 ( input )
}
