# expect 0.019 in ETH
from brownie import Lottery, accounts, config, network   #type: ignore
from web3 import Web3
def test_get_entrance_fee():
    account = accounts[0]
    lottery = Lottery.deploy(config["networks"][network.show_active()]["eth_usd_pricefeed"],{"from":account})
    # assert ((lottery.getEntranceFee() > Web3.to_wei(0.018,"ether")) and (lottery.getEntranceFee() < Web3.to_wei(0.022,"ether")))