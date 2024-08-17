(module
    (memory 1)
	(data (i32.const 12) "cdn")
	(data (i32.const 16) "colocation")
	(data (i32.const 27) "cloud")
	(data (i32.const 33) "the cloud")
	(data (i32.const 43) "datacenter")
	(data (i32.const 54) "data center")
	(data (i32.const 66) "data-center")
	(data (i32.const 78) "ddos")
	(data (i32.const 83) "dedi")
	(data (i32.const 88) "host")
	(data (i32.const 93) "afrihost")
	(data (i32.const 102) "layer")
	(data (i32.const 108) "server")
	(data (i32.const 115) "vps")
	(data (i32.const 119) "hetzner")
	(data (i32.const 127) "ovh")
	(data (i32.const 131) "contabo")
	(data (i32.const 139) "digitalocean")
	(data (i32.const 152) "amazon")
	(data (i32.const 159) "google llc")
	(data (i32.const 170) "google, llc")
	(data (i32.const 182) "akamai")
	(data (i32.const 189) "microsoft")
	(data (i32.const 199) "alibaba")
	(data (i32.const 207) "fastly")
	(data (i32.const 214) "linode")
	(data (i32.const 221) "aruba")
	(data (i32.const 227) "godaddy")
	(data (i32.const 235) "oracle")
	(data (i32.const 242) "m247")
	(data (i32.const 247) "leaseweb")
	(data (i32.const 256) "ipxo")
	(data (i32.const 261) "China Telecom")
    (func $blume.strstr (param $haystack i32) (param $needle i32) (result i32) ;; returns a pointer relative to haystack if needle is found, 0 otherwise
        (local $2 i32)
        (local $3 i32)
        local.get $needle
        i32.load8_u
        i32.eqz
        if
            local.get $haystack
            return
        end
        loop $while-continue|0
            local.get $haystack
            i32.load8_u
            local.tee $2
            if
                local.get $2
                local.get $needle
                i32.load8_u
                i32.eq
                if
                    local.get $needle
                    local.set $2
                    local.get $haystack
                    local.set $3
                    loop $while-continue|1
                        local.get $2
                        i32.load8_u
                        i32.eqz
                        if
                            local.get $haystack
                            return
                        end
                        local.get $3
                        i32.load8_u
                        local.get $2
                        i32.load8_u
                        i32.eq
                        if
                            local.get $2
                            i32.const 1
                            i32.add
                            local.set $2
                            local.get $3
                            i32.const 1
                            i32.add
                            local.set $3
                            br $while-continue|1
                        end
                    end
                end
                local.get $haystack
                i32.const 1
                i32.add
                local.set $haystack
                br $while-continue|0
            end
        end
        i32.const 0
        )
    (func (export "is_hosting_asn") (param $asn i32) (result i32)
        (i32.eq (local.get $asn) (i32.const 3214)) ;; xTom GmbH
        (i32.or (i32.eq (local.get $asn) (i32.const 4785))) ;; xTom Limited
        (i32.or (i32.eq (local.get $asn) (i32.const 6233))) ;; xTom
        (i32.or (i32.eq (local.get $asn) (i32.const 8100))) ;; QuadraNet Enterprises LLC
        (i32.or (i32.eq (local.get $asn) (i32.const 9304))) ;; HGC Global Communications Limited
        (i32.or (i32.eq (local.get $asn) (i32.const 9312))) ;; xTom Hong Kong Limited
        (i32.or (i32.eq (local.get $asn) (i32.const 9335))) ;; CAT Telecom Public Company Limited
        (i32.or (i32.eq (local.get $asn) (i32.const 11831))) ;; eSecureData
        (i32.or (i32.eq (local.get $asn) (i32.const 11878))) ;; tzulo, inc.
        (i32.or (i32.eq (local.get $asn) (i32.const 13046))) ;; ISKON INTERNET d.d. za informatiku i telekomunikacije
        (i32.or (i32.eq (local.get $asn) (i32.const 13213))) ;; UK-2 Limited
        (i32.or (i32.eq (local.get $asn) (i32.const 20278))) ;; Nexeon Technologies, Inc.
        (i32.or (i32.eq (local.get $asn) (i32.const 20473))) ;; The Constant Company, LLC
        (i32.or (i32.eq (local.get $asn) (i32.const 25369))) ;; Hydra Communications Ltd
        (i32.or (i32.eq (local.get $asn) (i32.const 29485))) ;; A1 Hrvatska d.o.o.
        (i32.or (i32.eq (local.get $asn) (i32.const 30083))) ;; GoDaddy.com, LLC
        (i32.or (i32.eq (local.get $asn) (i32.const 26496))) ;; GoDaddy.com, LLC
        (i32.or (i32.eq (local.get $asn) (i32.const 30736))) ;; ASERGO Scandinavia ApS
        (i32.or (i32.eq (local.get $asn) (i32.const 35758))) ;; Rachamim Aviel Twito trading as A.B INTERNET SOLUTIONS
        (i32.or (i32.eq (local.get $asn) (i32.const 37518))) ;; Fiber Grid INC
        (i32.or (i32.eq (local.get $asn) (i32.const 38731))) ;; Vietel - CHT Compamy Ltd
        (i32.or (i32.eq (local.get $asn) (i32.const 39351))) ;; 31173 Services AB
        (i32.or (i32.eq (local.get $asn) (i32.const 40676))) ;; Psychz Networks
        (i32.or (i32.eq (local.get $asn) (i32.const 41564))) ;; Orion Network Limited
        (i32.or (i32.eq (local.get $asn) (i32.const 43289))) ;; Trabia SRL
        (i32.or (i32.eq (local.get $asn) (i32.const 43513))) ;; Sia Nano IT
        (i32.or (i32.eq (local.get $asn) (i32.const 45102))) ;; Alibaba US Technology Co. Ltd.
        (i32.or (i32.eq (local.get $asn) (i32.const 45899))) ;; VNPT Corp
        (i32.or (i32.eq (local.get $asn) (i32.const 46562))) ;; Performive LLC
        (i32.or (i32.eq (local.get $asn) (i32.const 46805))) ;; Inter Connects Inc
        (i32.or (i32.eq (local.get $asn) (i32.const 46844))) ;; Sharktech
        (i32.or (i32.eq (local.get $asn) (i32.const 47810))) ;; Proservice LLC
        (i32.or (i32.eq (local.get $asn) (i32.const 49981))) ;; WorldStream B.V.
        (i32.or (i32.eq (local.get $asn) (i32.const 50304))) ;; Blix Solutions AS
        (i32.or (i32.eq (local.get $asn) (i32.const 51747))) ;; Internet Vikings International AB
        (i32.or (i32.eq (local.get $asn) (i32.const 52423))) ;; Data Miners S.A. ( Racknation.cr )
        (i32.or (i32.eq (local.get $asn) (i32.const 53013))) ;; W I X NET DO BRASIL LTDA - ME
        (i32.or (i32.eq (local.get $asn) (i32.const 58182))) ;; Wix.com Ltd.
        (i32.or (i32.eq (local.get $asn) (i32.const 53667))) ;; FranTech Solutions
        (i32.or (i32.eq (local.get $asn) (i32.const 55664))) ;; PT Inovasi Global Mumpuni
        (i32.or (i32.eq (local.get $asn) (i32.const 58065))) ;; Packet Exchange Limited
        (i32.or (i32.eq (local.get $asn) (i32.const 58073))) ;; YISP B.V.
        (i32.or (i32.eq (local.get $asn) (i32.const 60068))) ;; Datacamp Limited
        (i32.or (i32.eq (local.get $asn) (i32.const 62240))) ;; Clouvider Limited
        (i32.or (i32.eq (local.get $asn) (i32.const 131199))) ;; Nexeon Technologies, Inc.
        (i32.or (i32.eq (local.get $asn) (i32.const 132203))) ;; Tencent Building Kejizhongyi Avenue
        (i32.or (i32.eq (local.get $asn) (i32.const 133480))) ;; Intergrid Group Pty Ltd
        (i32.or (i32.eq (local.get $asn) (i32.const 136787))) ;; TEFINCOM S.A.
        (i32.or (i32.eq (local.get $asn) (i32.const 136897))) ;; EnjoyVC Cloud Group Limited
        (i32.or (i32.eq (local.get $asn) (i32.const 137263))) ;; NETEASE (HONG KONG) LIMITED
        (i32.or (i32.eq (local.get $asn) (i32.const 137409))) ;; GSL Networks Pty LTD
        (i32.or (i32.eq (local.get $asn) (i32.const 141039))) ;; TEFINCOM S.A.
        (i32.or (i32.eq (local.get $asn) (i32.const 141167))) ;; AgotoZ HK Limited
        (i32.or (i32.eq (local.get $asn) (i32.const 146834))) ;; XUNYOU SiChuan XunYou Network Technologe Limit Co
        (i32.or (i32.eq (local.get $asn) (i32.const 147049))) ;; PacketHub S.A.
        (i32.or (i32.eq (local.get $asn) (i32.const 197706))) ;; Keminet SHPK
        (i32.or (i32.eq (local.get $asn) (i32.const 198371))) ;; NINET Company Nis d.o.o.
        (i32.or (i32.eq (local.get $asn) (i32.const 198605))) ;; AVAST Software s.r.o.
        (i32.or (i32.eq (local.get $asn) (i32.const 198621))) ;; AVAST Software s.r.o.
        (i32.or (i32.eq (local.get $asn) (i32.const 199524))) ;; G-Core Labs S.A.
        (i32.or (i32.eq (local.get $asn) (i32.const 205053))) ;; Asimia Damaskou
        (i32.or (i32.eq (local.get $asn) (i32.const 205119))) ;; TELEKS DOOEL Skopje
        (i32.or (i32.eq (local.get $asn) (i32.const 206804))) ;; EstNOC OY
        (i32.or (i32.eq (local.get $asn) (i32.const 212238))) ;; Datacamp Limited
        (i32.or (i32.eq (local.get $asn) (i32.const 213277))) ;; ALMOUROLTEC SERVICOS DE INFORMATICA E INTERNET LDA
        (i32.or (i32.eq (local.get $asn) (i32.const 263702))) ;; GRUPO ZGH SPA
        (i32.or (i32.eq (local.get $asn) (i32.const 268581))) ;; QNAX LTDA
        (i32.or (i32.eq (local.get $asn) (i32.const 22612))) ;; Namecheap, Inc.
        (i32.or (i32.eq (local.get $asn) (i32.const 8560))) ;; IONOS SE
        (i32.or (i32.eq (local.get $asn) (i32.const 47846))) ;; SEDO GmbH
        (i32.or (i32.eq (local.get $asn) (i32.const 46606))) ;; Unified Layer
        (i32.or (i32.eq (local.get $asn) (i32.const 35916))) ;; MULTACOM CORPORATION
        (i32.or (i32.eq (local.get $asn) (i32.const 3900))) ;; SWITCH, LTD
        (i32.or (i32.eq (local.get $asn) (i32.const 53831))) ;; Squarespace, Inc.
        (i32.or (i32.eq (local.get $asn) (i32.const 6724))) ;; Strato AG
        (i32.or (i32.eq (local.get $asn) (i32.const 18779))) ;; EGIHosting
        (i32.or (i32.eq (local.get $asn) (i32.const 36352))) ;; ColoCrossing
        (i32.or (i32.eq (local.get $asn) (i32.const 60087))) ;; Netsons s.r.l. (Uania Cloud Service)
        (i32.or (i32.eq (local.get $asn) (i32.const 8075))) ;; Microsoft / Azure
        (i32.or (i32.eq (local.get $asn) (i32.const 47674))) ;; related to BLAZINGFAST
        (i32.or (i32.eq (local.get $asn) (i32.const 206444))) ;; KUBBUR
        (i32.or (i32.eq (local.get $asn) (i32.const 140952))) ;; Strong Technology, LLC
        (i32.or (i32.eq (local.get $asn) (i32.const 42473))) ;; ANEXIA Internetdienstleistungs GmbH
        (i32.or (i32.eq (local.get $asn) (i32.const 59432))) ;; GINERNET
        (i32.or (i32.eq (local.get $asn) (i32.const 209854))) ;; Surfshark Ltd.
        (i32.or (i32.eq (local.get $asn) (i32.const 43357))) ;; Owl Limited
        (i32.or (i32.eq (local.get $asn) (i32.const 29802))) ;; HIVELOCITY, Inc.
        (i32.or (i32.eq (local.get $asn) (i32.const 54994))) ;; QUANTIL NETWORKS INC
        (i32.or (i32.eq (local.get $asn) (i32.const 64476))) ;; Shadow SAS (shadow.tech)
        (i32.or (i32.eq (local.get $asn) (i32.const 3223))) ;; Voxility LLP
        (i32.or (i32.eq (local.get $asn) (i32.const 39743))) ;; Voxility S.R.L. 
        (i32.or (i32.eq (local.get $asn) (i32.const 207137))) ;; PacketHub S.A.
        (i32.or (i32.eq (local.get $asn) (i32.const 213250))) ;; Dominic Scholz trading as ITP-Solutions GmbH & Co. KG   
        (i32.or (i32.eq (local.get $asn) (i32.const 400175))) ;; Microtronix ESolutions, LLC
        (i32.or (i32.eq (local.get $asn) (i32.const 60602))) ;; Inovare-Prim SRL
        (i32.or (i32.eq (local.get $asn) (i32.const 197854))) ;; Eisenia AB  
        (i32.or (i32.eq (local.get $asn) (i32.const 215051))) ;; Damian Chlebda
        (i32.or (i32.eq (local.get $asn) (i32.const 214828))) ;; StarLight Network, Inc.
        (i32.or (i32.eq (local.get $asn) (i32.const 206264))) ;; Amarutu Technology Ltd.
        ;; NForce Entertainment B.V.
        (i32.or (i32.eq (local.get $asn) (i32.const 43350)))
        (i32.or (i32.eq (local.get $asn) (i32.const 64437))) 
        ;; Latitude.sh (formerly Maxihost)
        (i32.or (i32.eq (local.get $asn) (i32.const 262287)))
        (i32.or (i32.eq (local.get $asn) (i32.const 396356)))
        ;; Green Floid LLC
        (i32.or (i32.eq (local.get $asn) (i32.const 40622)))
        (i32.or (i32.eq (local.get $asn) (i32.const 204957)))
        ;; Nuclearfallout Enterprises, Inc (NFO)
        (i32.or (i32.eq (local.get $asn) (i32.const 14586)))
        (i32.or (i32.eq (local.get $asn) (i32.const 32751)))
        ;; GleSYS AB
        (i32.or (i32.eq (local.get $asn) (i32.const 42708)))
        (i32.or (i32.eq (local.get $asn) (i32.const 43948)))
        ;; Cogent Communications
        (i32.or (i32.eq (local.get $asn) (i32.const 174)))
        (i32.or (i32.eq (local.get $asn) (i32.const 2149)))
        (i32.or (i32.eq (local.get $asn) (i32.const 4550)))
        (i32.or (i32.eq (local.get $asn) (i32.const 6259)))
        (i32.or (i32.eq (local.get $asn) (i32.const 6299)))
        (i32.or (i32.eq (local.get $asn) (i32.const 6494)))
        (i32.or (i32.eq (local.get $asn) (i32.const 6496)))
        (i32.or (i32.eq (local.get $asn) (i32.const 7061)))
        (i32.or (i32.eq (local.get $asn) (i32.const 7458)))
        (i32.or (i32.eq (local.get $asn) (i32.const 10768)))
        (i32.or (i32.eq (local.get $asn) (i32.const 11024)))
        (i32.or (i32.eq (local.get $asn) (i32.const 11220)))
        (i32.or (i32.eq (local.get $asn) (i32.const 11526)))
        (i32.or (i32.eq (local.get $asn) (i32.const 12207)))
        (i32.or (i32.eq (local.get $asn) (i32.const 16631)))
        (i32.or (i32.eq (local.get $asn) (i32.const 19164)))
        (i32.or (i32.eq (local.get $asn) (i32.const 22099)))
        ;; Scaleway (Note that their ASN 29447 is reused for residential internet by its holding company)
        (i32.or (i32.eq (local.get $asn) (i32.const 12876)))
        ;; Bytedance
        (i32.or (i32.eq (local.get $asn) (i32.const 138699)))
        (i32.or (i32.eq (local.get $asn) (i32.const 396986)))
        ;; myLoc managed IT AG
        (i32.or (i32.eq (local.get $asn) (i32.const 24961)))
        (i32.or (i32.eq (local.get $asn) (i32.const 41412)))
        ;; Path Network, Inc
        (i32.or (i32.eq (local.get $asn) (i32.const 396998)))
        (i32.or (i32.eq (local.get $asn) (i32.const 30644)))
        ;; Strong Technology
        (i32.or (i32.eq (local.get $asn) (i32.const 13926)))
        (i32.or (i32.eq (local.get $asn) (i32.const 54203)))
        (i32.or (i32.eq (local.get $asn) (i32.const 22781)))
        (i32.or (i32.eq (local.get $asn) (i32.const 62651)))
        ;; Proton AG
        (i32.or (i32.eq (local.get $asn) (i32.const 62371)))
        (i32.or (i32.eq (local.get $asn) (i32.const 209103)))
        ;; Hivelocity
        (i32.or (i32.eq (local.get $asn) (i32.const 61317)))
        (i32.or (i32.eq (local.get $asn) (i32.const 29802)))
        )
    (func (export "is_hosting_slug") (param $slug i32) (result i32)
        (i32.ne (i32.const 0) (call $blume.strstr (local.get $slug) (i32.const 12)))
        (i32.or (i32.ne (i32.const 0) (call $blume.strstr (local.get $slug) (i32.const 16)))) ;; AS48950 GLOBAL COLOCATION LIMITED
        ;; Note: Not "colo" because "Telmex Colombia S.A."
        (i32.or (i32.ne (i32.const 0) (call $blume.strstr (local.get $slug) (i32.const 27)))) ;; AS39845 2 Cloud Ltd.
            (i32.and (i32.eqz (call $blume.strstr (local.get $slug) (i32.const 33)))) ;; ignore AS41012 The Cloud Networks Limited
        (i32.or (i32.ne (i32.const 0) (call $blume.strstr (local.get $slug) (i32.const 43))))
        (i32.or (i32.ne (i32.const 0) (call $blume.strstr (local.get $slug) (i32.const 54))))
        (i32.or (i32.ne (i32.const 0) (call $blume.strstr (local.get $slug) (i32.const 66))))
        (i32.or (i32.ne (i32.const 0) (call $blume.strstr (local.get $slug) (i32.const 78))))
        (i32.or (i32.ne (i32.const 0) (call $blume.strstr (local.get $slug) (i32.const 83)))) ;; AS35913 DediPath, AS42831 UK Dedicated Servers Limited
        (i32.or (i32.ne (i32.const 0) (call $blume.strstr (local.get $slug) (i32.const 88)))) ;; AS45382 EHOSTICT, AS51430 AltusHost B.V., AS55720 Gigabit Hosting Sdn Bhd, AS61493 InterBS S.R.L. (BAEHOST), AS64200 VIVID-HOSTING LLC, AS136557 Host Universal Pty Ltd, AS200698 Globalhost d.o.o., AS203020 HostRoyale Technologies Pvt Ltd
            (i32.and (i32.eqz (call $blume.strstr (local.get $slug) (i32.const 93))))
        (i32.or (i32.ne (i32.const 0) (call $blume.strstr (local.get $slug) (i32.const 102)))) ;; AS49453, AS57172 Global Layer B.V.
        (i32.or (i32.ne (i32.const 0) (call $blume.strstr (local.get $slug) (i32.const 108))))
        (i32.or (i32.ne (i32.const 0) (call $blume.strstr (local.get $slug) (i32.const 115))))
        (i32.or (i32.ne (i32.const 0) (call $blume.strstr (local.get $slug) (i32.const 119))))
        (i32.or (i32.ne (i32.const 0) (call $blume.strstr (local.get $slug) (i32.const 127))))
        (i32.or (i32.ne (i32.const 0) (call $blume.strstr (local.get $slug) (i32.const 131))))
        (i32.or (i32.ne (i32.const 0) (call $blume.strstr (local.get $slug) (i32.const 139))))
        (i32.or (i32.ne (i32.const 0) (call $blume.strstr (local.get $slug) (i32.const 152))))
        (i32.or (i32.ne (i32.const 0) (call $blume.strstr (local.get $slug) (i32.const 159)))) ;; added LLC to prevent detection of "Google Fiber Inc"
        (i32.or (i32.ne (i32.const 0) (call $blume.strstr (local.get $slug) (i32.const 170)))) ;; Google One VPN
        (i32.or (i32.ne (i32.const 0) (call $blume.strstr (local.get $slug) (i32.const 182))))
        (i32.or (i32.ne (i32.const 0) (call $blume.strstr (local.get $slug) (i32.const 189))))
        (i32.or (i32.ne (i32.const 0) (call $blume.strstr (local.get $slug) (i32.const 199))))
        (i32.or (i32.ne (i32.const 0) (call $blume.strstr (local.get $slug) (i32.const 207))))
        (i32.or (i32.ne (i32.const 0) (call $blume.strstr (local.get $slug) (i32.const 214))))
        (i32.or (i32.ne (i32.const 0) (call $blume.strstr (local.get $slug) (i32.const 221))))
        (i32.or (i32.ne (i32.const 0) (call $blume.strstr (local.get $slug) (i32.const 227))))
        (i32.or (i32.ne (i32.const 0) (call $blume.strstr (local.get $slug) (i32.const 235))))
        (i32.or (i32.ne (i32.const 0) (call $blume.strstr (local.get $slug) (i32.const 242))))
        (i32.or (i32.ne (i32.const 0) (call $blume.strstr (local.get $slug) (i32.const 247))))
        (i32.or (i32.ne (i32.const 0) (call $blume.strstr (local.get $slug) (i32.const 256)))) ;; AS61317, AS206092
        )
    (func (export "asn_name_overwrites") (result i32 i32)
        (i32.const 4134) (i32.const 261)
        )
    )