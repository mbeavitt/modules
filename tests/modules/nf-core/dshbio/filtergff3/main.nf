#!/usr/bin/env nextflow

nextflow.enable.dsl = 2

include { DSHBIO_FILTERGFF3 } from "$moduleDir/modules/nf-core/dshbio/filtergff3/main.nf"

workflow test_dshbio_filtergff3 {
    input = [ [ id:'test' ], // meta map
              [ file(params.test_data['sarscov2']['genome']['genome_gff3_gz'], checkIfExists: true) ]
            ]

    DSHBIO_FILTERGFF3 ( input )
}
