class NsrsController < ApplicationController

  def nwro1_nsr_001
json_str = <<"EOS"
{
    "common": {
        "createLocation": "http://nwro/v1/nsrs/nwro1_nsr_001",
        "ngReason": "",
        "requestNo": "e2eo1_req_no_004",
        "resource": "http://nwro/v1/nsrs/reservations",
        "resultCode": "0",
        "senderSystemId": "nwro1",
        "sequenceNo": "Seq_YYYYMMDDhhmmssXXXX"
    },
    "object": {
        "descriptor_reference": "nwro1_nsd_001",
        "miniNsrIdentifier": null,
        "notification": [
            "http://e2eo/v1/alarmNotifications"
        ],
        "nsrId": "nwro1_nsr_001",
        "pnfr": null,
        "serviceAccessPoint": [
            {
                "comment": "p-51: vPE L3接続点1",
                "cpId": "nob_CP1",
                "cpInstanceId": "nwro1_cp_001",
                "default-GW": "10.10.2.254/24",
                "ethvid": "VLAN255",
                "ipaddr": "10.10.2.251",
                "sapId": "基底リソースID"
            },
            {
                "comment": "p-52: vPE L3接続点2",
                "cpId": "nob_CP2",
                "cpInstanceId": "nwro1_cp_002",
                "default-GW": "20.10.1.1/24",
                "ethvid": "VLAN X",
                "ipaddr": "20.10.1.2",
                "sapId": "基底リソースID"
            },
            {
                "comment": "p-32: ｖPE 疑似呼用終端点",
                "cpId": "nob_CP5",
                "cpInstanceId": "nwro1_cp_003",
                "ethvid": "VLAN Y",
                "ipaddr": "20.1.1.x",
                "sapId": "基底リソースID"
            },
            {
                "comment": "p-61: 疑似呼用POI",
                "cpId": "nob_eCP6",
                "cpInstanceId": "nwro1_cp_004",
                "ethvid": "VLAN Y´",
                "ipaddr": "20.1.2.x",
                "sapId": "基底リソースID"
            },
            {
                "comment": "p-42: vPE　OLT収容コンシューマ用終端点",
                "cpId": "nob_CP7",
                "cpInstanceId": "nwro1_cp_005",
                "ethvid": "VLAN ①",
                "ipaddr": "10.20.0.x/24",
                "sapId": "基底リソースID"
            },
            {
                "comment": "p-71: OLT収容コンシューマ用POI",
                "cpId": "nob_eCP8",
                "cpInstanceId": "nwro1_cp_006",
                "default-GW": "10.20.0.254/24",
                "ethvid": "VLAN③",
                "ipaddr": "10.1.1.2",
                "sapId": "基底リソースID",
                "static-root": "10.20.0.0/24"
            }
        ],
        "service_deployment_flavour": "nob_normal_flavour",
        "status": "通常状態&設定済",
        "version": "1.0",
        "vlr": [
            {
                "connectionPoint": [
                    "nwro1_cp_001",
                    "nwro1_cp_002"
                ],
                "connectivityType": {
                    "serviceSubType": "ipv4",
                    "serviceType": "layer3"
                },
                "leafRequirement": null,
                "notification": [
                    "http://e2eo/v1/alarmNotifications"
                ],
                "parentNs": [
                    "nwro1_nsr_001"
                ],
                "rootRequirement": "1000",
                "status": "通常状態&設定済",
                "vldFlavourId": [
                    "nob_core_flavour"
                ],
                "vldName": "nob_pepe_l3",
                "vldVersion": "1.0",
                "vlrId": "nwro1_vlr_001",
                "vnffgrReference": [
                    "nwro1_vnffgr_001",
                    "nwro1_vnffgr_002"
                ]
            },
            {
                "connectionPoint": [
                    "nwro1_cp_003",
                    "nwro1_cp_004"
                ],
                "connectivityType": {
                    "serviceSubType": "e-line",
                    "serviceType": "layer2"
                },
                "leafRequirement": null,
                "notification": [
                    "http://e2eo/v1/alarmNotifications"
                ],
                "parentNs": [
                    "nwro1_nsr_001"
                ],
                "rootRequirement": "500",
                "status": "通常状態&設定済",
                "vldFlavourId": [
                    "nob_giji_flavour"
                ],
                "vldName": "nob_pesrv_l2",
                "vldVersion": "1.0",
                "vlrId": "nwro1_vlr_002",
                "vnffgrReference": [
                    "nwro1_vnffgr_001"
                ]
            },
            {
                "connectionPoint": [
                    "nwro1_cp_005",
                    "nwro1_cp_006"
                ],
                "connectivityType": {
                    "serviceSubType": "e-line",
                    "serviceType": "layer2"
                },
                "leafRequirement": null,
                "notification": [
                    "http://e2eo/v1/alarmNotifications"
                ],
                "parentNs": [
                    "nwro1_nsr_001"
                ],
                "rootRequirement": "500",
                "status": "通常状態&設定済",
                "vldFlavourId": [
                    "nob_sw_flavour "
                ],
                "vldName": "nob_pesw_l2",
                "vldVersion": "1.0",
                "vlrId": "nwro1_vlr_003",
                "vnffgrReference": [
                    "nwro1_vnffgr_002"
                ]
            }
        ],
        "vnf_dependency": null,
        "vnffgr": "VNFFGRはVNFFGDに記載されているCPの数が足りていないので一切生成されない",
        "vnfr": null
    }
}
EOS
    render :json => JSON.parse(json_str)

  end

end
