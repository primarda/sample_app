class NsdsController < ApplicationController

  def nsd_001_v1
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
        "constituentVl": [
            {
                "instantiateMode": "0",
                "vlFlavourIdReference": "dummy_vld_flavour",
                "vlReference": "nwro1_vld_001"
            },
            {
                "instantiateMode": "0",
                "vlFlavourIdReference": "dummy_vld_flavour",
                "vlReference": "nwro1_vld_002"
            },
            {
                "instantiateMode": "0",
                "vlFlavourIdReference": "dummy_vld_flavour",
                "vlReference": "nwro1_vld_003"
            },
            {
                "instantiateMode": "0",
                "vlFlavourIdReference": "dummy_vld_flavour",
                "vlReference": "nwro1_vld_004"
            }
        ],
        "constituentVnf": [
            {
                "constraint": "initial",
                "instantiateMode": "0",
                "numberOfInstances": "1",
                "vnfReference": "nwro1_vnfd_001"
            },
            {
                "constraint": "initial",
                "instantiateMode": "0",
                "numberOfInstances": "1",
                "vnfReference": "nwro1_vnfd_002"
            },
            {
                "constraint": "initial",
                "instantiateMode": "0",
                "numberOfInstances": "1",
                "vnfReference": "nwro1_vnfd_003"
            },
            {
                "constraint": "initial",
                "instantiateMode": "0",
                "numberOfInstances": "1",
                "vnfReference": "nwro1_vnfd_004"
            }
        ],
        "constituentVnffg": [
            {
                "instantiateMode": "0",
                "vnffgRefrence": "nwro1_vnffgd_001"
            },
            {
                "instantiateMode": "0",
                "vnffgRefrence": "nwro1_vnffgd_002"
            }
        ],
        "maxEndPoint": "20",
        "nsdId": "nwro1_nsd_001",
        "nsdName": "sn-a_nsd",
        "nsdVersion": "1.0",
        "serviceAccessPoint": [
            {
                "cpId": "sn_a-acp_m",
                "maxEndPoint": "10",
                "type": {
                    "constraint": [],
                    "endPointType": "x：コンシューマ端点",
                    "inputType": {
                        "setAddressType": "2",
                        "setSapType": "1"
                    },
                    "instantiateMode": "1",
                    "interfaceType": "x：外部リソース",
                    "multiPointMode": "1"
                }
            },
            {
                "cpId": "sn_a-web_cp",
                "maxEndPoint": "1",
                "type": {
                    "constraint": [],
                    "endPointType": "x：POI",
                    "inputType": {
                        "setAddressType": "2",
                        "setSapType": "0"
                    },
                    "instantiateMode": "0",
                    "interfaceType": "x：外部リソース",
                    "multiPointMode": "0"
                }
            },
            {
                "cpId": "sn_a-contents_cp",
                "maxEndPoint": "1",
                "type": {
                    "constraint": [],
                    "endPointType": "x：POI",
                    "inputType": {
                        "setAddressType": "2",
                        "setSapType": "0"
                    },
                    "instantiateMode": "0",
                    "interfaceType": "x：外部リソース",
                    "multiPointMode": "0"
                }
            },
            {
                "cpId": "sn_a-wireless_cp_m",
                "maxEndPoint": "10",
                "type": {
                    "constraint": [],
                    "endPointType": "x：コンシューマ端点",
                    "inputType": {
                        "setAddressType": "2",
                        "setSapType": "1"
                    },
                    "instantiateMode": "0",
                    "interfaceType": "x：外部リソース",
                    "multiPointMode": "1"
                }
            }
        ],
        "serviceDeploymentFlavour": [
            {
                "constituentVl": [
                    "nwro1_vld_001",
                    "nwro1_vld_002",
                    "nwro1_vld_003",
                    "nwro1_vld_004"
                ],
                "constituentVnf": [
                    "nwro1_vnfd_001",
                    "nwro1_vnfd_002",
                    "nwro1_vnfd_003",
                    "nwro1_vnfd_004"
                ],
                "constituentVnffg": [
                    "nwro1_vnffgd_001",
                    "nwro1_vnffgd_002"
                ],
                "nsFlavourId": "sn-a_dummy_nsflavour"
            }
        ],
        "vld": [
            {
                "connectionPoint": [
                    "sn_a-acp_m",
                    "sn_a-vbras_a"
                ],
                "connectivityType": {
                    "serviceSubType": "E-LAN(VPN)",
                    "serviceType": "L2"
                },
                "description": "インターネット接続用アクセスNW",
                "vldFlavour": [
                    "vld_flavour_001",
                    "vld_flavour_002"
                ],
                "vldId": "nwro1_vld_001",
                "vldName": "sn_a-access_l2",
                "vldVersion": "1.0"
            },
            {
                "connectionPoint": [
                    "sn_a-vbras_l2tp",
                    "sn_a-vnte_l2tp"
                ],
                "connectivityType": {
                    "serviceSubType": "IPv4",
                    "serviceType": "L3"
                },
                "description": "インターネット接続用共通NW①",
                "vldFlavour": [
                    "vld_flavour_001",
                    "vld_flavour_002"
                ],
                "vldId": "nwro1_vld_002",
                "vldName": "sn_a-core_l3_1",
                "vldVersion": "1.0"
            },
            {
                "connectionPoint": [
                    "sn_a-vnte_lns_gcp",
                    "sn_a-web_cp"
                ],
                "connectivityType": {
                    "serviceSubType": "IPv4",
                    "serviceType": "L3"
                },
                "description": "インターネット接続用共通NW②",
                "vldFlavour": [
                    "vld_flavour_001",
                    "vld_flavour_002"
                ],
                "vldId": "nwro1_vld_003",
                "vldName": "sb_a-core_l3_2",
                "vldVersion": "1.0"
            },
            {
                "connectionPoint": [
                    "sn_a-contents_cp",
                    "sn_a-wireless_cp_m",
                    "sn_a-kyocho_gcp_m"
                ],
                "connectivityType": {
                    "serviceSubType": "E-LAN(VPN)",
                    "serviceType": "L2"
                },
                "description": "無線用共通NW",
                "vldFlavour": [
                    "vld_flavour_001",
                    "vld_flavour_002"
                ],
                "vldId": "nwro1_vld_004",
                "vldName": "sb_a-wireless_ctl_l2",
                "vldVersion": "1.0"
            }
        ],
        "vldFlavour": [
            {
                "bandwidthRequirements": [
                    {
                        "leaf": "100(M)",
                        "root": "100(M)"
                    }
                ],
                "vldFlavourId": "dummy_vld_flavour"
            }
        ],
        "vnfd": [
            "nwro1_vnfd_001",
            "nwro1_vnfd_002",
            "nwro1_vnfd_003",
            "nwro1_vnfd_004"
        ],
        "vnffgd": [
            {
                "connectionPoint": [
                    "sn_a-acp_m",
                    "sn_a-vbras_a",
                    "sn_a-vbras_l2tp",
                    "sn_a-vnte_l2tp",
                    "sn_a-vnte_lns_gcp",
                    "sn_a-vlns_gcp",
                    "sn_a-web_cp"
                ],
                "constituentVnfs": [
                    "nwro1_vnfd_001",
                    "nwro1_vnfd_002",
                    "nwro1_vnfd_003"
                ],
                "dependentVirtualLink": [
                    "nwro1_vld_001",
                    "nwro1_vld_002",
                    "nwro1_vld_003"
                ],
                "description": "SSネットスライス",
                "numberOfEndpoints": "7",
                "numberOfVirtualLinks": "3",
                "vnffgdId": "nwro1_vnffgd_001",
                "vnffgdName": "sn_a-internet",
                "vnffgdVersion": "1.0"
            },
            {
                "connectionPoint": [
                    "sn_a-contents_cp",
                    "sn_a-wireless_cp_m",
                    "sn_a-kyocho_gcp_m"
                ],
                "constituentVnfs": [
                    "nwro1_vnfd_004"
                ],
                "dependentVirtualLink": [
                    "nwro1_vld_004"
                ],
                "description": "SSネットスライス",
                "numberOfEndpoints": "3",
                "numberOfVirtualLinks": "1",
                "vnffgdId": "nwro1_vnffgd_002",
                "vnffgdName": "sn_a-wireless",
                "vnffgdVersion": "1.0"
            }
        ]
    }
}
EOS
    render :json => JSON.parse(json_str)

  end

end
