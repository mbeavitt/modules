#!/usr/bin/env nextflow

nextflow.enable.dsl = 2

include { FASTQ_FASTQC_UMITOOLS_TRIMGALORE } from '../../../../subworkflows/nf-core/fastq_fastqc_umitools_trimgalore/main.nf'

//
// Test with single-end data
//
workflow test_fastq_fastqc_umitools_trimgalore {
    input = [ [ id:'test', single_end:true ], // meta map
              file(params.test_data['sarscov2']['illumina']['test_1_fastq_gz'], checkIfExists: true)
            ]
    skip_fastqc      = false
    with_umi         = true
    skip_umi_extract = false
    skip_trimming    = false
    umi_discard_read = 1

    FASTQ_FASTQC_UMITOOLS_TRIMGALORE ( input, skip_fastqc, with_umi, skip_umi_extract, skip_trimming, umi_discard_read)
}