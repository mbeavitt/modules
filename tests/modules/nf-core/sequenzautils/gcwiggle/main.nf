#!/usr/bin/env nextflow

nextflow.enable.dsl = 2

include { SEQUENZAUTILS_GCWIGGLE } from "$moduleDir/modules/nf-core/sequenzautils/gcwiggle/main.nf"

workflow test_sequenzautils_gcwiggle {
    input = [ [ id:'test' ], // meta map
              file(params.test_data['sarscov2']['genome']['genome_fasta'], checkIfExists: true)
            ]

    SEQUENZAUTILS_GCWIGGLE ( input )
}
