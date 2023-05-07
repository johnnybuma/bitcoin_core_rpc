module BitcoinCoreRpc
  class API < Client
    def get_blockchain_info
      request('getblockchaininfo')
    end

    def get_block_count
      request('getblockcount')
    end

    def get_block_hash(height)
      request('getblockhash', height)
    end

    def get_block(hash)
      request('getblock', hash)
    end

    def get_balance(account = '*', min_conf = 1, include_watch_only = false)
      request('getbalance', account, min_conf, include_watch_only)
    end

    def get_new_address(label = '', address_type = '')
      request('getnewaddress', label, address_type)
    end

    def send_to_address(address, amount, comment = '', comment_to = '', subtract_fee_from_amount = false, replaceable = false, conf_target = nil, estimate_mode = 'UNSET')
      request('sendtoaddress', address, amount, comment, comment_to, subtract_fee_from_amount, replaceable, conf_target, estimate_mode)
    end

    def list_transactions(account = '*', count = 10, skip = 0, include_watch_only = false)
      request('listtransactions', account, count, skip, include_watch_only)
    end
  end
end
