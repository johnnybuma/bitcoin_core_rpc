module BitcoinCoreRpc
  class API < Client
    # Blockchain
    def get_blockchain_info
      request('getblockchaininfo')
    end

    def get_block_count
      request('getblockcount')
    end

    def get_block_hash(height)
      request('getblockhash', height)
    end

    def get_block(block_hash, verbosity = 1)
      request('getblock', block_hash, verbosity)
    end

    def get_raw_transaction(txid, verbose = 1)
      request('getrawtransaction', txid, verbose)
    end

    def decode_raw_transaction(hex_string)
      request('decoderawtransaction', hex_string)
    end

    def get_best_block_hash
      request('getbestblockhash')
    end

    def get_block_header(block_hash, verbose = true)
      request('getblockheader', block_hash, verbose)
    end

    def get_chain_tips
      request('getchaintips')
    end

    def get_chain_tx_stats(nblocks = 1, block_hash = nil)
      request('getchaintxstats', nblocks, block_hash)
    end

    def get_difficulty
      request('getdifficulty')
    end

    def get_mempool_ancestors(txid, verbose = false)
      request('getmempoolancestors', txid, verbose)
    end

    def get_mempool_descendants(txid, verbose = false)
      request('getmempooldescendants', txid, verbose)
    end

    def get_mempool_entry(txid)
      request('getmempoolentry', txid)
    end

    def get_mempool_info
      request('getmempoolinfo')
    end

    def get_raw_mempool(verbose = false)
      request('getrawmempool', verbose)
    end

    def get_tx_out(txid, vout, include_mempool = true)
      request('gettxout', txid, vout, include_mempool)
    end

    def get_tx_out_proof(txids, block_hash = nil)
      request('gettxoutproof', txids, block_hash)
    end

    def get_tx_out_set_info
      request('gettxoutsetinfo')
    end

    def precious_block(block_hash)
      request('preciousblock', block_hash)
    end

    def prune_blockchain(height)
      request('pruneblockchain', height)
    end

    def verify_chain(checklevel = 3, nblocks = 6)
      request('verifychain', checklevel, nblocks)
    end

    def verify_tx_out_proof(proof)
      request('verifytxoutproof', proof)
    end

  end
end
