var __GLOBAL__ = {
    pageRoot: ''
};
function generateNav() {
	var navs = {
		active: 0, 
		items: [ 
			{
				name: '<% multilang(LANG_STATUS); %>',
				sub: 0 
			},
#ifdef CONFIG_00R0
			{
				name: '<% multilang(LANG_WIZARD); %>',
				sub: 1
			},
#endif
#ifdef CONFIG_XKNET
			{
				name: '<% multilang(LANG_SERVICES); %>',
				sub: 5
			},
			{
				name: '<% multilang(LANG_DIAGNOSTICS); %>',
				sub: 8
			},
			{
				name: '<% multilang(LANG_STATISTICS); %>',
				sub: 10
			}
#else
#if defined(CONFIG_00R0) || defined(CONFIG_FIB_AHM) || defined(CONFIG_FIB_SPIDERLINK) || defined(CONFIG_FIB_GSTECH) || defined(CONFIG_FIB_AIRLINK) || defined(CONFIG_FIB_VSURAJ) || defined(CONFIG_FIB_DIGIWAY) || defined(CONFIG_FIB_GENEVA) || defined(CONFIG_SY_DEENET) 
			{
				name: '<% multilang(LANG_WAN); %>',
				sub: 4
			},
#endif			
#if defined(CONFIG_00R0) || defined(CONFIG_FIB_ULTRANET) || defined(CONFIG_FIB_AHM)|| defined(CONFIG_FIB_SPIDERLINK)|| defined(CONFIG_FIB_GSTECH)|| defined(CONFIG_FIB_AIRLINK) || defined(CONFIG_FIB_DIGIWAY) || defined(CONFIG_FIB_GENEVA)|| defined(CONFIG_SY_DEENET) 
			{
				name: '<% multilang(LANG_LAN); %>',
				sub: 2
			},
#endif
#ifdef WLAN_SUPPORT
			<% CheckMenuDisplay("wlan_sub"); %>
#endif
#if defined(CONFIG_00R0) || defined(CONFIG_FIB_AHM) || defined(CONFIG_FIB_SPIDERLINK) || defined(CONFIG_FIB_JDM)|| defined(CONFIG_FIB_GSTECH) || defined(CONFIG_FIB_DIGIWAY) || defined(CONFIG_FIB_GENEVA)|| defined(CONFIG_FIB_AIRLINK)|| defined(CONFIG_SY_DEENET) 
#ifdef CONFIG_USER_DHCP_SERVER
			{
				name: '<% multilang(LANG_SERVICES); %>',
				sub: 5
			},
#endif
#ifdef VOIP_SUPPORT
			<% CheckMenuDisplay("voip_sub"); %>
#endif
#if !defined(CONFIG_FIB_DIGIWAY) && !defined(CONFIG_FIB_GENEVA) && !defined(CONFIG_SY_DEENET)
			{
				name: '<% multilang(LANG_ADVANCE); %>',
				sub: 7
			},
#endif			
			{
				name: '<% multilang(LANG_DIAGNOSTICS); %>',
				sub: 8
			},
#else
#if defined(CONFIG_TURBO ) || defined(CONFIG_FIB_ENET)                                                     
			{
				name: '<% multilang(LANG_WAN); %>',
				sub: 4
			},
#endif
#if defined(CONFIG_FIB_PRACTION)
			{
				name: '<% multilang(LANG_DIAGNOSTICS); %>',
				sub: 8
			},
#endif
			{
				name: '<% multilang(LANG_FIREWALL); %>',
				sub: 5
			}
			,
#endif //CONFIG_00R0
#if !defined(CONFIG_FIB_ENET)			
			{
				name: '<% multilang(LANG_ADMIN); %>',
				sub: 9
			}
#endif			
#if defined( CONFIG_00R0) || defined(CONFIG_FIB_AHM)|| defined(CONFIG_FIB_SPIDERLINK)|| defined(CONFIG_FIB_GSTECH) || defined(CONFIG_FIB_DIGIWAY) || defined(CONFIG_FIB_GENEVA)|| defined(CONFIG_FIB_AIRLINK)|| defined(CONFIG_SY_DEENET) 
			,
			{
				name: '<% multilang(LANG_STATISTICS); %>',
				sub: 10
			}
#endif //CONFIG_00R0
#endif
		]
	};
	return navs;
}
/**
 * ��nav��������ģ��ƴ��������Ȼ����Ⱦ��ҳ��
 */
function renderNav() {
	var nav = generateNav(); //��õ�������
	var tpl = $('#nav-tmpl').html(); //���navģ������
	var html = juicer(tpl, nav);
	$('#nav').html(html); //��Ⱦ��ҳ��
}
/**
 * ���ɵڶ����͵������˵������ݽṹ
 */
function generateSide() {
	var side = []; 
	var sub0, sub1, sub2, sub3, sub4, sub5, sub6, sub7, sub8, sub9;
	var pageRoot = __GLOBAL__.pageRoot;
	//��һ��side
	sub0 = {
		key: 0,
		active: '0-0',
		items: [
            {
                collapsed: false,
                name: '<% multilang(LANG_STATUS); %>',
                items: [
                    {
                        name: '<% multilang(LANG_DEVICE); %>',
                        href: pageRoot + 'admin/status.asp'
                    }
#ifdef CONFIG_IPV6
					,
                    {
                        name: '<% multilang(LANG_IPV6); %>',
                        href:  pageRoot + 'admin/status_ipv6.asp'
                    }
#endif
#if (defined(CONFIG_GPON_FEATURE) || defined(CONFIG_EPON_FEATURE))
					,
					{
						name: '<% multilang(LANG_PON); %>', 
						href: pageRoot + 'admin/status_pon.asp'
					}
#endif
#if defined(CONFIG_FIB_AHM) || defined(CONFIG_FIB_GSTECH)|| defined(CONFIG_FIB_DIGIWAY) || defined(CONFIG_FIB_GENEVA)|| defined(CONFIG_SY_DEENET) 
					,
					{
						name: '<% multilang(LANG_LAN_PORT); %>',
						href: pageRoot + 'lan_port_status.asp'
					}
					,
					{
						name: 'TR069',
						href: pageRoot + 'admin/status_tr069_info_admin.asp'
					}
#endif					
					<% CheckUserMenuDisplay("voip_info"); %>

                ]
            }
        ]
    };
#ifdef CONFIG_00R0
	sub1 = {
		key: 1, 
		active: '0-0',
		items: [
            {
                collapsed: false,
                name: '<% multilang(LANG_WIZARD); %>',
                items: [
                    {
                        name: '<% multilang(LANG_SETUP_WIZARD); %>',
                        href: pageRoot + 'admin/wizard_screen_menu.asp'
                    }
                ]
            }
        ]
    };
#endif
#if defined(CONFIG_00R0) || defined(CONFIG_FIB_ULTRANET) || defined(CONFIG_FIB_AHM) || defined(CONFIG_FIB_SPIDERLINK)|| defined(CONFIG_FIB_GSTECH) || defined(CONFIG_FIB_AIRLINK)|| defined(CONFIG_FIB_DIGIWAY) || defined(CONFIG_FIB_GENEVA)|| defined(CONFIG_SY_DEENET) 
	sub2 = {
		key: 2, 
		active: '0-0',
		items: [
            {
                collapsed: false,
                name: '<% multilang(LANG_LAN); %>',
                items: [
                    {
                        name: '<% multilang(LANG_LAN_INTERFACE_SETTINGS); %>',
                        href: pageRoot + 'admin/tcpiplan.asp'
                    }
					
#ifdef CONFIG_USER_DHCP_SERVER
					,
#ifdef CONFIG_USER_INTERFACE_GROUPING
					
					{
						name: '<% multilang(LANG_DHCP); %>',
						href: pageRoot + 'multi_dhcpd.asp'
					}
#else
#ifdef IMAGENIO_IPTV_SUPPORT
					{
						name: '<% multilang(LANG_DHCP); %>',
						href: pageRoot + 'dhcpd_sc.asp'
					}
#else
					{
						name: '<% multilang(LANG_DHCP); %>',
						href: pageRoot + 'dhcpd.asp'
					}
#endif
#endif
#endif					
                ]
            }
        ]
    };
#endif

#ifdef WLAN_SUPPORT
	sub3 = {
		key: 3,
		active: '0-0',
		items: [
#ifdef CONFIG_RTL_92D_SUPPORT
			{
				collapsed: false,
				name: '<% multilang(LANG_WIRELESS_BAND_MODE); %>',
				items: [
					{
						name: '<% multilang(LANG_SETUP_WIRELESS_BAND_MODE); %>',
						href: pageRoot + 'admin/wlbandmode.asp'
					}
				]
			},
			{
				collapsed: true,
				name: '<% multilang(LANG_WLAN0_5GHZ); %>',
				items: [
					{
						name: '<% multilang(LANG_BASIC_SETTINGS); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlbasic.asp&wlan_idx=0'
					},
					{
						name: '<% multilang(LANG_ADVANCED_SETTINGS); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wladvanced.asp&wlan_idx=0'
					},
					{
						name: '<% multilang(LANG_SECURITY); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlwpa.asp&wlan_idx=0'
					}
#ifdef WLAN_11R
					,
					{
						name: '<% multilang(LANG_FAST_ROAMING); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlft.asp&wlan_idx=0'
					}
#endif
#ifdef WLAN_ACL
					,
					{
						name: '<% multilang(LANG_ACCESS_CONTROL); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlactrl.asp&wlan_idx=0'
					}
#endif
#ifdef WLAN_WDS
					,
					{
						name: '<% multilang(LANG_WDS); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlwds.asp&wlan_idx=0'
					}
#endif

#if defined(WLAN_CLIENT) || defined(WLAN_SITESURVEY)
#ifdef CONFIG_00R0
					,
					{
						name: '<% multilang(LANG_WLAN_RADAR); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlsurvey.asp&wlan_idx=0'
					}
#else
					,
					{
						name: '<% multilang(LANG_SITE_SURVEY); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlsurvey.asp&wlan_idx=0'
					}
#endif
#endif
#ifdef CONFIG_WIFI_SIMPLE_CONFIG	// WPS
					,
					{
						name: '<% multilang(LANG_WPS); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlwps.asp&wlan_idx=0'
					}
#endif
					,
					{
						name: '<% multilang(LANG_STATUS); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlstatus.asp&wlan_idx=0'
					}
				]
			},
			{
				collapsed: true,
				name: '<% multilang(LANG_WLAN1_2_4GHZ); %>',
				items: [
					{
						name: '<% multilang(LANG_BASIC_SETTINGS); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlbasic.asp&wlan_idx=1'
					},
					{
						name: '<% multilang(LANG_ADVANCED_SETTINGS); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wladvanced.asp&wlan_idx=1'
					},
					{
						name: '<% multilang(LANG_SECURITY); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlwpa.asp&wlan_idx=1'
					}
#ifdef WLAN_11R
					,
					{
						name: '<% multilang(LANG_FAST_ROAMING); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlft.asp&wlan_idx=1'
					}
#endif
#ifdef WLAN_ACL
					,
					{
						name: '<% multilang(LANG_ACCESS_CONTROL); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlactrl.asp&wlan_idx=1'
					}
#endif
#ifdef WLAN_WDS
					,
					{
						name: '<% multilang(LANG_WDS); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlwds.asp&wlan_idx=1'
					},
#endif

#if defined(WLAN_CLIENT) || defined(WLAN_SITESURVEY)
#ifdef CONFIG_00R0
					,
					{
						name: '<% multilang(LANG_WLAN_RADAR); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlsurvey.asp&wlan_idx=1'
					}
#else
					,
					{
						name: '<% multilang(LANG_SITE_SURVEY); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlsurvey.asp&wlan_idx=1'
					}
#endif
#endif
#ifdef CONFIG_WIFI_SIMPLE_CONFIG	// WPS
					,
					{
						name: '<% multilang(LANG_WPS); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlwps.asp&wlan_idx=1'
					}
#endif
					,
					{
						name: '<% multilang(LANG_STATUS); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlstatus.asp&wlan_idx=1'
					}
				]
			}
#elif defined(TRIBAND_SUPPORT)
			{
				collapsed: false,
				name: '<% multilang(LANG_WLAN0_5GHZ); %>',
				items: [
					{
						name: '<% multilang(LANG_BASIC_SETTINGS); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlbasic.asp&wlan_idx=0'
					},
					{
						name: '<% multilang(LANG_ADVANCED_SETTINGS); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wladvanced.asp&wlan_idx=0'
					},
					{
						name: '<% multilang(LANG_SECURITY); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlwpa.asp&wlan_idx=0'
					}
#ifdef WLAN_11R
					,
					{
						name: '<% multilang(LANG_FAST_ROAMING); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlft.asp&wlan_idx=0'
					}
#endif
#ifdef WLAN_ACL
					,
					{
						name: '<% multilang(LANG_ACCESS_CONTROL); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlactrl.asp&wlan_idx=0'
					}
#endif
#ifdef WLAN_WDS
					,
					{
						name: '<% multilang(LANG_WDS); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlwds.asp&wlan_idx=0'
					}
#endif

#if defined(WLAN_CLIENT) || defined(WLAN_SITESURVEY)
#ifdef CONFIG_00R0
					,
					{
						name: '<% multilang(LANG_WLAN_RADAR); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlsurvey.asp&wlan_idx=0'
					}
#else
					,
					{
						name: '<% multilang(LANG_SITE_SURVEY); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlsurvey.asp&wlan_idx=0'
					}
#endif
#endif
#ifdef CONFIG_WIFI_SIMPLE_CONFIG	// WPS
					,
					{
						name: '<% multilang(LANG_WPS); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlwps.asp&wlan_idx=0'
					}
#endif
#ifdef CONFIG_RTL_WAPI_SUPPORT
					,
					{
						name: 'Certification Installation',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlwapiinstallcert.asp&wlan_idx=0'
					}
#endif
					,
					{
						name: '<% multilang(LANG_STATUS); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlstatus.asp&wlan_idx=0'
					}
				]
			},
#if !defined(CONFIG_USB_AS_WLAN1)
			{
				collapsed: true,
				name: '<% multilang(LANG_WLAN1_5GHZ); %>',
				items: [
					{
						name: '<% multilang(LANG_BASIC_SETTINGS); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlbasic.asp&wlan_idx=1'
					},
					{
						name: '<% multilang(LANG_ADVANCED_SETTINGS); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wladvanced.asp&wlan_idx=1'
					},
					{
						name: '<% multilang(LANG_SECURITY); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlwpa.asp&wlan_idx=1'
					}
#ifdef WLAN_11R
					,
					{
						name: '<% multilang(LANG_FAST_ROAMING); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlft.asp&wlan_idx=1'
					}
#endif
#ifdef WLAN_ACL
					,
					{
						name: '<% multilang(LANG_ACCESS_CONTROL); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlactrl.asp&wlan_idx=1'
					}
#endif
#ifdef WLAN_WDS
					,
					{
						name: '<% multilang(LANG_WDS); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlwds.asp&wlan_idx=1'
					},
#endif

#if defined(WLAN_CLIENT) || defined(WLAN_SITESURVEY)
#ifdef CONFIG_00R0
					,
					{
						name: '<% multilang(LANG_WLAN_RADAR); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlsurvey.asp&wlan_idx=1'
					}
#else
					,
					{
						name: '<% multilang(LANG_SITE_SURVEY); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlsurvey.asp&wlan_idx=1'
					}
#endif
#endif
#ifdef CONFIG_WIFI_SIMPLE_CONFIG	// WPS
					,
					{
						name: '<% multilang(LANG_WPS); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlwps.asp&wlan_idx=1'
					}
#endif
#ifdef CONFIG_RTL_WAPI_SUPPORT
					,
					{
						name: 'Certification Installation',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlwapiinstallcert.asp&wlan_idx=1'
					}
#endif
					,
					{
						name: '<% multilang(LANG_STATUS); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlstatus.asp&wlan_idx=1'
					}
				]
			},
#endif /* !defined(CONFIG_USB_AS_WLAN1) */
			{
					collapsed: true,
					name: '<% multilang(LANG_WLAN2_2_4GHZ); %>',
					items: [
						{
							name: '<% multilang(LANG_BASIC_SETTINGS); %>',
							href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlbasic.asp&wlan_idx=2'
						},
						{
							name: '<% multilang(LANG_ADVANCED_SETTINGS); %>',
							href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wladvanced.asp&wlan_idx=2'
						},
						{
							name: '<% multilang(LANG_SECURITY); %>',
							href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlwpa.asp&wlan_idx=2'
						}
#ifdef WLAN_11R
						,
						{
							name: '<% multilang(LANG_FAST_ROAMING); %>',
							href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlft.asp&wlan_idx=2'
						}
#endif
#ifdef WLAN_ACL
						,
						{
							name: '<% multilang(LANG_ACCESS_CONTROL); %>',
							href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlactrl.asp&wlan_idx=2'
						}
#endif
#ifdef WLAN_WDS
						,
						{
							name: '<% multilang(LANG_WDS); %>',
							href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlwds.asp&wlan_idx=2'
						},
#endif

#if defined(WLAN_CLIENT) || defined(WLAN_SITESURVEY)
#ifdef CONFIG_00R0
						,
						{
							name: '<% multilang(LANG_WLAN_RADAR); %>',
							href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlsurvey.asp&wlan_idx=2'
						}
#else
						,
						{
							name: '<% multilang(LANG_SITE_SURVEY); %>',
							href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlsurvey.asp&wlan_idx=2'
						}
#endif
#endif
#ifdef CONFIG_WIFI_SIMPLE_CONFIG	// WPS
						,
						{
							name: '<% multilang(LANG_WPS); %>',
							href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlwps.asp&wlan_idx=2'
						}
#endif
#ifdef CONFIG_RTL_WAPI_SUPPORT
						,
						{
							name: 'Certification Installation',
							href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlwapiinstallcert.asp&wlan_idx=2'
						}
#endif
						,
						{
							name: '<% multilang(LANG_STATUS); %>',
							href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlstatus.asp&wlan_idx=2'
						}
					]
				}

#elif defined (WLAN_DUALBAND_CONCURRENT)
#if defined (CONFIG_WLAN0_2G_WLAN1_5G) || defined(WLAN1_QTN)
			{
				collapsed: false,
				name: '<% multilang(LANG_WLAN0_2_4GHZ); %>',
				items: [
					{
						name: '<% multilang(LANG_BASIC_SETTINGS); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlbasic.asp&wlan_idx=0'
					},
					{
						name: '<% multilang(LANG_ADVANCED_SETTINGS); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wladvanced.asp&wlan_idx=0'
					},
					{
						name: '<% multilang(LANG_SECURITY); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlwpa.asp&wlan_idx=0'
					}
#ifdef WLAN_11R
					,
					{
						name: '<% multilang(LANG_FAST_ROAMING); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlft.asp&wlan_idx=0'
					}
#endif
#ifdef WLAN_ACL
					,
					{
						name: '<% multilang(LANG_ACCESS_CONTROL); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlactrl.asp&wlan_idx=0'
					}
#endif
#ifdef WLAN_WDS
					,
					{
						name: '<% multilang(LANG_WDS); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlwds.asp&wlan_idx=0'
					}
#endif

#if defined(WLAN_CLIENT) || defined(WLAN_SITESURVEY)
#ifdef CONFIG_00R0
					,
					{
						name: '<% multilang(LANG_WLAN_RADAR); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlsurvey.asp&wlan_idx=0'
					}
#else
					,
					{
						name: '<% multilang(LANG_SITE_SURVEY); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlsurvey.asp&wlan_idx=0'
					}
#endif
#endif
#ifdef CONFIG_WIFI_SIMPLE_CONFIG	// WPS
					,
					{
						name: '<% multilang(LANG_WPS); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlwps.asp&wlan_idx=0'
					}
#endif
#ifdef CONFIG_RTL_WAPI_SUPPORT
					,
					{
						name: 'Certification Installation',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlwapiinstallcert.asp&wlan_idx=0'
					}
#endif
					,
					{
						name: '<% multilang(LANG_STATUS); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlstatus.asp&wlan_idx=0'
					}
				]
			},
			{
				collapsed: true,
				name: '<% multilang(LANG_WLAN1_5GHZ); %>',
				items: [
					{
						name: '<% multilang(LANG_BASIC_SETTINGS); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlbasic.asp&wlan_idx=1'
					},
					{
						name: '<% multilang(LANG_ADVANCED_SETTINGS); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wladvanced.asp&wlan_idx=1'
					},
					{
						name: '<% multilang(LANG_SECURITY); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlwpa.asp&wlan_idx=1'
					}
#ifdef WLAN_11R
					,
					{
						name: '<% multilang(LANG_FAST_ROAMING); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlft.asp&wlan_idx=1'
					}
#endif
#ifdef WLAN_ACL
					,
					{
						name: '<% multilang(LANG_ACCESS_CONTROL); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlactrl.asp&wlan_idx=1'
					}
#endif
#ifdef WLAN_WDS
					,
					{
						name: '<% multilang(LANG_WDS); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlwds.asp&wlan_idx=1'
					},
#endif

#if defined(WLAN_CLIENT) || defined(WLAN_SITESURVEY)
#ifdef CONFIG_00R0
					,
					{
						name: '<% multilang(LANG_WLAN_RADAR); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlsurvey.asp&wlan_idx=1'
					}
#else
					,
					{
						name: '<% multilang(LANG_SITE_SURVEY); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlsurvey.asp&wlan_idx=1'
					}
#endif
#endif
#ifdef CONFIG_WIFI_SIMPLE_CONFIG	// WPS
					,
					{
						name: '<% multilang(LANG_WPS); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlwps.asp&wlan_idx=1'
					}
#endif
#ifdef CONFIG_RTL_WAPI_SUPPORT
					,
					{
						name: 'Certification Installation',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlwapiinstallcert.asp&wlan_idx=1'
					}
#endif
					,
					{
						name: '<% multilang(LANG_STATUS); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlstatus.asp&wlan_idx=1'
					}
				]
			}
#else
			{
				collapsed: false,
				name: '<% multilang(LANG_WLAN0_5GHZ); %>',
				items: [
					{
						name: '<% multilang(LANG_BASIC_SETTINGS); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlbasic.asp&wlan_idx=0'
					},
					{
						name: '<% multilang(LANG_ADVANCED_SETTINGS); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wladvanced.asp&wlan_idx=0'
					},
					{
						name: '<% multilang(LANG_SECURITY); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlwpa.asp&wlan_idx=0'
					}
#ifdef WLAN_11R
					,
					{
						name: '<% multilang(LANG_FAST_ROAMING); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlft.asp&wlan_idx=0'
					}
#endif
#ifdef WLAN_ACL
					,
					{
						name: '<% multilang(LANG_ACCESS_CONTROL); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlactrl.asp&wlan_idx=0'
					}
#endif
#ifdef WLAN_WDS
					,
					{
						name: '<% multilang(LANG_WDS); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlwds.asp&wlan_idx=0'
					}
#endif

#if defined(WLAN_CLIENT) || defined(WLAN_SITESURVEY)
#ifdef CONFIG_00R0
					,
					{
						name: '<% multilang(LANG_WLAN_RADAR); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlsurvey.asp&wlan_idx=0'
					}
#else
					,
					{
						name: '<% multilang(LANG_SITE_SURVEY); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlsurvey.asp&wlan_idx=0'
					}
#endif
#endif
#ifdef CONFIG_WIFI_SIMPLE_CONFIG	// WPS
					,
					{
						name: '<% multilang(LANG_WPS); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlwps.asp&wlan_idx=0'
					}
#endif
#ifdef CONFIG_RTL_WAPI_SUPPORT
					,
					{
						name: 'Certification Installation',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlwapiinstallcert.asp&wlan_idx=0'
					}
#endif
					,
					{
						name: '<% multilang(LANG_STATUS); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlstatus.asp&wlan_idx=0'
					}
				]
			},
			{
				collapsed: true,
				name: '<% multilang(LANG_WLAN1_2_4GHZ); %>',
				items: [
					{
						name: '<% multilang(LANG_BASIC_SETTINGS); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlbasic.asp&wlan_idx=1'
					},
					{
						name: '<% multilang(LANG_ADVANCED_SETTINGS); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wladvanced.asp&wlan_idx=1'
					},
					{
						name: '<% multilang(LANG_SECURITY); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlwpa.asp&wlan_idx=1'
					}
#ifdef WLAN_11R
					,
					{
						name: '<% multilang(LANG_FAST_ROAMING); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlft.asp&wlan_idx=1'
					}
#endif
#ifdef WLAN_ACL
					,
					{
						name: '<% multilang(LANG_ACCESS_CONTROL); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlactrl.asp&wlan_idx=1'
					}
#endif
#ifdef WLAN_WDS
					,
					{
						name: '<% multilang(LANG_WDS); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlwds.asp&wlan_idx=1'
					},
#endif

#if defined(WLAN_CLIENT) || defined(WLAN_SITESURVEY)
#ifdef CONFIG_00R0
					,
					{
						name: '<% multilang(LANG_WLAN_RADAR); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlsurvey.asp&wlan_idx=1'
					}
#else
					,
					{
						name: '<% multilang(LANG_SITE_SURVEY); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlsurvey.asp&wlan_idx=1'
					}
#endif
#endif
#ifdef CONFIG_WIFI_SIMPLE_CONFIG	// WPS
					,
					{
						name: '<% multilang(LANG_WPS); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlwps.asp&wlan_idx=1'
					}
#endif
#ifdef CONFIG_RTL_WAPI_SUPPORT
					,
					{
						name: 'Certification Installation',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlwapiinstallcert.asp&wlan_idx=1'
					}
#endif
					,
					{
						name: '<% multilang(LANG_STATUS); %>',
						href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlstatus.asp&wlan_idx=1'
					}
				]
			}
#endif
#else
			{
				collapsed: false,
				name: '<% multilang(LANG_WLAN); %>',
				items: [
					{
						name: '<% multilang(LANG_BASIC_SETTINGS); %>',
						href: pageRoot + 'admin/wlbasic.asp'
					}
#ifdef CONFIG_USER_FON
					,
					{
						name: 'FON Spot Settings',
						href: pageRoot + 'admin/wlfon.asp'
					}
#endif
					,
					{
						name: '<% multilang(LANG_ADVANCED_SETTINGS); %>',
						href: pageRoot + 'admin/wladvanced.asp'
					},
					{
						name: '<% multilang(LANG_SECURITY); %>',
						href: pageRoot + 'admin/wlwpa.asp'
					}
#ifdef WLAN_11R
					,
					{
						name: '<% multilang(LANG_FAST_ROAMING); %>',
						href: pageRoot + 'admin/wlft.asp'
					}
#endif
#ifdef WLAN_ACL
					,
					{
						name: '<% multilang(LANG_ACCESS_CONTROL); %>',
						href: pageRoot + 'admin/wlactrl.asp'
					}
#endif
#ifdef WLAN_WDS
					,
					{
						name: '<% multilang(LANG_WDS); %>',
						href: pageRoot + 'admin/wlwds.asp'
					}
#endif

#if defined(WLAN_CLIENT) || defined(WLAN_SITESURVEY)
#ifdef CONFIG_00R0
					,
					{
						name: '<% multilang(LANG_WLAN_RADAR); %>',
						href: pageRoot + 'admin/wlsurvey.asp'
					}
#else
					,
					{
						name: '<% multilang(LANG_SITE_SURVEY); %>',
						href: pageRoot + 'admin/wlsurvey.asp'
					}
#endif
#endif
#ifdef CONFIG_WIFI_SIMPLE_CONFIG	// WPS
					,
					{
						name: '<% multilang(LANG_WPS); %>',
						href: pageRoot + 'admin/wlwps.asp'
					}
#endif
#ifdef CONFIG_RTL_WAPI_SUPPORT
					,
					{
						name: 'Certification Installation',
						href: pageRoot + 'admin/wlwapiinstallcert.asp'
					}
#endif
					,
					{
						name: '<% multilang(LANG_STATUS); %>',
						href: pageRoot + 'admin/wlstatus.asp'
					}
				]
			}
#endif
#ifdef WLAN_RTK_MULTI_AP
			,
			{
				collapsed: true,
				name: '<% multilang(LANG_WLAN_EASY_MESH); %>',
				items: [
					{
						name: '<% multilang(LANG_WLAN_EASY_MESH_INTERFACE_SETUP); %>',
						href: pageRoot + 'multi_ap_setting_general.asp'
					}
					<% CheckMenuDisplay("map_topology"); %>
				]
			}
#endif
		]
	};
#endif
#ifdef CONFIG_00R0 
    sub4 = {
        key: 4, 
        active: '0-0',
        items: [
            {
                collapsed: false,
                name: '<% multilang(LANG_WAN); %>',
                items: [
#ifdef CONFIG_ETHWAN
#if defined(CONFIG_GPON_FEATURE) || defined(CONFIG_EPON_FEATURE)
#if defined(CONFIG_TURBO)
					{
						name: '<% multilang(LANG_PON_WAN); %>',
						href: pageRoot + '/admin/pppoe-wan.asp'
					}
#endif
#else
#ifdef CONFIG_RTL_MULTI_ETH_WAN
					{
						name: '<% multilang(LANG_ETHERNET_WAN); %>',
						href: pageRoot + '../boaform/admin/formWanRedirect?redirect-url=/admin/multi_wan_generic.asp&if=eth'
					}
#else
					{
						name: '<% multilang(LANG_ETHERNET_WAN); %>',
						href: pageRoot + 'admin/waneth.asp'
					}
#endif
#endif
#endif
#ifdef CONFIG_PTMWAN
#ifdef CONFIG_ETHWAN
					,
#endif
					{
						name: '<% multilang(LANG_PTM_WAN); %>',
						href: pageRoot + '../boaform/admin/formWanRedirect?redirect-url=/admin/multi_wan_generic.asp&if=ptm'
					}
#endif /*CONFIG_PTMWAN*/
#ifdef CONFIG_DEV_xDSL
#if defined(CONFIG_ETHWAN) || defined(CONFIG_PTMWAN)
					,
#endif
					{
						name: '<% multilang(LANG_ATM_WAN); %>',
						href: pageRoot + 'admin/wanadsl.asp'
					}
					,
					{
						name: '<% multilang(LANG_ATM_SETTINGS); %>',
						href: pageRoot + 'admin/wanatm.asp'
					}
					,
					{
						name: '<% multilang(LANG_ADSL_SETTINGS); %>',
						href: pageRoot + 'admin/adsl-set.asp'
					}
#ifdef CONFIG_DSL_VTUO
					,
					{
						name: '<% multilang(LANG_VTUO_SETTINGS); %>',
						href: pageRoot + 'admin/vtuo-set.asp'
					}
#endif /*CONFIG_DSL_VTUO*/
#endif
#ifdef CONFIG_USER_PPPOMODEM
#ifndef CONFIG_00R0
					,
					{
						name: '<% multilang(LANG_3G_SETTINGS); %>',
						href: pageRoot + 'admin/wan3gconf.asp'
					}
#endif
#endif //CONFIG_USER_PPPOMODEM
#if defined(CONFIG_FIB_AHM) || defined(CONFIG_FIB_SPIDERLINK)|| defined(CONFIG_FIB_GSTECH)
					,
					{
						name: '<% multilang(LANG_NAT_TYPE); %>',
						href: pageRoot + 'fw_nat.asp'
					}	
#endif					
                ]
	        }
        ]
    };
#ifdef CONFIG_USER_DHCP_SERVER
	sub5 = {
		key: 5,
		active: '0-0',
		items: [
			{
				collapsed: false,
				name: '<% multilang(LANG_SERVICE); %>',
				items: [
#ifdef CONFIG_USER_VLAN_ON_LAN
					{
						name: '<% multilang(LANG_VLAN_ON_LAN); %>',
						href: pageRoot + 'vlan_on_lan.asp'
					}
					,
#endif
#ifdef CONFIG_USER_DDNS
					
					{
						name: '<% multilang(LANG_DYNAMIC_DNS); %>',
						href: pageRoot + 'ddns.asp'
					}
#endif
#if defined(CONFIG_USER_IGMPPROXY)&&!defined(CONFIG_IGMPPROXY_MULTIWAN)
					,
					{
						name: '<% multilang(LANG_IGMP_PROXY); %>',
						href: pageRoot + 'igmproxy.asp'
					}
#endif
#if defined(CONFIG_USER_UPNPD)||defined(CONFIG_USER_MINIUPNPD)
					,
					{
						name: '<% multilang(LANG_UPNP); %>',
						href: pageRoot + 'upnp.asp'
					}
#endif
#if !defined(CONFIG_XKNET)
#ifdef CONFIG_USER_ROUTED_ROUTED
					,
					{
						name: '<% multilang(LANG_RIP); %>',
						href: pageRoot + 'rip.asp'
					}
#endif
#endif
#ifdef WEB_REDIRECT_BY_MAC
					,
					{
						name: '<% multilang(LANG_LANDING_PAGE); %>',
						href: pageRoot + 'landing.asp'
					}
#endif
#if defined(CONFIG_USER_MINIDLNA)
					,
					{
						name: '<% multilang(LANG_DMS); %>',
						href: pageRoot + 'dms.asp'
					}
#endif
#ifdef CONFIG_USER_SAMBA
					,
					{
						name: '<% multilang(LANG_SAMBA); %>',
						href: pageRoot + 'samba.asp'
					}
#endif
				]
			},
			{
				collapsed: false,
				name: '<% multilang(LANG_FIREWALL); %>',
				items: [
#ifdef CONFIG_IP_NF_ALG_ONOFF
					{
						name: '<% multilang(LANG_ALG); %>',
						href: pageRoot + 'algonoff.asp'
					}
					,
#endif
//#ifdef IP_PORT_FILTER
#ifdef CONFIG_RTK_L34_ENABLE
					{
						name: '<% multilang(LANG_IP_PORT_FILTERING); %>',
						href: pageRoot + 'fw-ipportfilter_rg.asp'
					}
#else
					{
						name: '<% multilang(LANG_IP_PORT_FILTERING); %>',
						href: pageRoot + 'fw-ipportfilter.asp'
					}
#endif
//#endif
#ifdef MAC_FILTER
#ifdef CONFIG_RTK_L34_ENABLE
					,
					{
						name: '<% multilang(LANG_MAC_FILTERING); %>',
						href: pageRoot + 'fw-macfilter_rg.asp'
					}
#else
					,
					{
						name: '<% multilang(LANG_MAC_FILTERING); %>',
						href: pageRoot + 'fw-macfilter.asp'
					}
#endif
#endif
#ifdef PORT_FORWARD_GENERAL
					,
					{
						name: '<% multilang(LANG_PORT_FORWARDING); %>',
						href: pageRoot + 'fw-portfw.asp'
					}
#endif
#ifdef URL_BLOCKING_SUPPORT
					,
					{
						name: '<% multilang(LANG_URL_BLOCKING); %>',
						href: pageRoot + 'url_blocking.asp'
					}
#endif
#ifdef DOMAIN_BLOCKING_SUPPORT
					,
					{
						name: '<% multilang(LANG_DOMAIN_BLOCKING); %>',
						href: pageRoot + 'domainblk.asp'
					}
#endif
#ifdef PARENTAL_CTRL
					,
					{
						name: '<% multilang(LANG_PARENTAL_CONTROL); %>',
						href: pageRoot + 'parental-ctrl.asp'
					}
#endif
#ifdef TCP_UDP_CONN_LIMIT
					,
					{
						name: '<% multilang(LANG_CONNECTION_LIMIT); %>',
						href: pageRoot + 'connlimit.asp'
					}
#endif // TCP_UDP_CONN_LIMIT
#ifdef NATIP_FORWARDING
					,
					{
						name: '<% multilang(LANG_NAT_IP_FORWARDING); %>',
						href: pageRoot + 'fw-ipfw.asp'
					}
#endif
#ifdef PORT_TRIGGERING
					,
					{
						name: '<% multilang(LANG_PORT_TRIGGERING); %>',
						href: pageRoot + 'gaming.asp.asp'
					}
#endif
#ifdef DMZ
					,
					{
						name: '<% multilang(LANG_DMZ); %>',
						href: pageRoot + 'fw-dmz.asp'
					}
#endif
#ifdef ADDRESS_MAPPING
#ifdef MULTI_ADDRESS_MAPPING
					,
					{
						name: '<% multilang(LANG_NAT_RULE_CONFIGURATION); %>',
						href: pageRoot + 'multi_addr_mapping.asp.asp'
					}
#else //!MULTI_ADDRESS_MAPPING
					,
					{
						name: '<% multilang(LANG_NAT_RULE_CONFIGURATION); %>',
						href: pageRoot + 'addr_mapping.asp.asp'
					}
#endif// end of !MULTI_ADDRESS_MAPPING
#endif
				]
			}
		]
	};
#endif
#ifdef VOIP_SUPPORT
	sub6 = {
		key: 6,
		active: '0-0',
		items: [
			{
				collapsed: false,
				name: '<% multilang(LANG_VOIP); %>',
				items: [
					{
						name: '<% multilang(LANG_PORT1); %>',
						href: pageRoot + 'voip_general_new_web.asp?port=0'
					}
#if CONFIG_RTK_VOIP_CON_CH_NUM > 1
					,
					{
						name: '<% multilang(LANG_PORT2); %>',
						href: pageRoot + 'voip_general_new_web.asp?port=1'
					}
#endif
					,
					{
						name: '<% multilang(LANG_ADVANCE); %>',
						href: pageRoot + 'voip_advanced_new_web.asp'
					}
#ifdef CONFIG_RTK_VOIP_DRIVERS_FXO
					,
					{
						name: '<% multilang(LANG_FXO); %>',
						href: pageRoot + 'voip_general_new_web.asp?port=2'
					}
#endif
					,
					{
						name: '<% multilang(LANG_TONE); %>',
						href: pageRoot + 'voip_tone_new_web.asp'
					}
					,
					{
						name: '<% multilang(LANG_OTHER); %>',
						href: pageRoot + 'voip_other_new_web.asp'
					}
					,
					{
						name: '<% multilang(LANG_NETWORK); %>',
						href: pageRoot + 'voip_network_new_web.asp'
					}
					,
					{
						name: '<% multilang(LANG_VOIP_CALLHISTORY); %>',
						href: pageRoot + 'voip_callhistory_new_web.asp'
					}
				]
			}
		]
	};
#endif

	sub7 = {
		key: 7,
		active: '0-0',
		items: [
			{
				collapsed: false,
				name: '<% multilang(LANG_ADVANCE); %>',
				items: [
#ifdef CONFIG_RTL9601B_SERIES
					{
						name: '<% multilang(LANG_VLAN_SETTINGS); %>',
						href: pageRoot + 'admin/vlan.asp'
					}
					,
#endif
					{
						name: '<% multilang(LANG_ARP_TABLE); %>',
						href: pageRoot + 'arptable.asp'
					}
#ifdef CONFIG_USER_RTK_LAN_USERLIST
					,
					{
						name: '<% multilang(LANG_LAN_DEVICE_TABLE); %>',
						href: pageRoot + 'admin/landevice.asp'
					}
#endif
#ifndef CONFIG_SFU
					,
					{
						name: '<% multilang(LANG_BRIDGING); %>',
						href: pageRoot + 'bridging.asp'
					}
#endif
#ifdef ROUTING
					,
					{
						name: '<% multilang(LANG_ROUTING); %>',
						href: pageRoot + 'routing.asp'
					}
#endif
#ifdef CONFIG_USER_SNMPD_SNMPD_V2CTRAP
					,
					{
						name: '<% multilang(LANG_SNMP); %>',
						href: pageRoot + 'admin/snmp.asp'
					}
#endif
#ifdef CONFIG_USER_SNMPD_SNMPD_V3
					,
					{
						name: '<% multilang(LANG_SNMP); %>',
						href: pageRoot + 'admin/snmpv3.asp'
					}
#endif
#ifdef CONFIG_USER_BRIDGE_GROUPING
					,
					{
						name: '<% multilang(LANG_BRIDGE_GROUPING); %>',
						href: pageRoot + 'admin/bridge_grouping.asp'
					}
#endif
#if CONFIG_USER_INTERFACE_GROUPING
					,
					{
						name: '<% multilang(LANG_INTERFACE_GROUPING); %>',
						href: pageRoot + 'admin/interface_grouping.asp'
					}
#endif
#ifdef VLAN_GROUP
					,
					{
						name: '<% multilang(LANG_PORT_MAPPING); %>',
						href: pageRoot + 'admin/eth2pvc_vlan.asp'
					}
#endif
#ifdef QOS_DIFFSERV
					,
					{
						name:  '<% multilang(LANG_DIFFSERV); %>',
						href: pageRoot + 'admin/diffserv.asp'
					}
#endif
#if defined(CONFIG_RTL_MULTI_LAN_DEV)
#ifdef ELAN_LINK_MODE
					,
					{
						name: '<% multilang(LANG_LINK_MODE); %>',
						href: pageRoot + 'admin/linkmode.asp'
					}
#endif
#else
#ifdef ELAN_LINK_MODE_INTRENAL_PHY
					,
					{
						name: '<% multilang(LANG_LINK_MODE); %>',
						href: pageRoot + 'admin/linkmode_eth.asp'
					}
#endif
#endif
#ifdef REMOTE_ACCESS_CTL
					,
					{
						name: '<% multilang(LANG_REMOTE_ACCESS); %>',
						href: pageRoot + 'rmtacc.asp'
					}
#endif
#ifndef CONFIG_00R0
#ifdef CONFIG_USER_CUPS
					,
					{
						name: '<% multilang(LANG_PRINT_SERVER); %>',
						href: pageRoot + 'admin/printServer.asp'
					}
#endif //CONFIG_USER_CUPS
#endif
#ifdef IP_PASSTHROUGH
					,
					{
						name: '<% multilang(LANG_OTHERS); %>',
						href: pageRoot + 'admin/others.asp'
					}
#endif
				]
			}
		]
	};
	sub8 = {
		key: 8,
		active: '0-0',
		items: [
			{
				collapsed: false,
				name: '<% multilang(LANG_DIAGNOSTICS); %>',
				items: [
					{
						name: '<% multilang(LANG_PING); %>',
						href: pageRoot + 'ping.asp'
					}
#ifdef CONFIG_IPV6
					,
					{
                        name: '<% multilang(LANG_PING); %>6',
                        href: pageRoot + 'ping6.asp'
                    }
#endif
                    ,
                    {
                        name: '<% multilang(LANG_TRACERT); %>',
                        href: pageRoot + 'tracert.asp'
                    }
#ifdef CONFIG_IPV6
					,
                    {
                        name: '<% multilang(LANG_TRACERT); %>6',
                        href: pageRoot + 'tracert6.asp'
                    }
#endif					
#ifdef CONFIG_USER_TCPDUMP_WEB
					,
					{
						name: '<% multilang(LANG_PACKET_DUMP); %>',
						href: pageRoot + 'admin/pdump.asp'
					}
#endif
#ifdef CONFIG_DEV_xDSL
					,
					{
						name: '<% multilang(LANG_ATM_LOOPBACK); %>',
						href: pageRoot + 'admin/oamloopback.asp'
					}
					,
					{
						name: '<% multilang(LANG_DSL_TONE); %>',
						href: pageRoot + '/admin/adsl-diag.asp'
					}
#endif
#ifdef CONFIG_USER_XDSL_SLAVE
					,
					{
						name: '<% multilang(LANG_DSL_SLAVE_TONE); %>',
						href: pageRoot + '/admin/adsl-slv-diag.asp'
					}
#endif /*CONFIG_USER_XDSL_SLAVE*/
#ifdef CONFIG_DEV_xDSL
#ifdef DIAGNOSTIC_TEST
					,
					{
						name: '<% multilang(LANG_ADSL_CONNECTION); %>',
						href: pageRoot + 'admin/diag-test.asp'
					}
#endif
#endif
#if defined(CONFIG_USER_Y1731) || defined(CONFIG_USER_8023AH)
					,
					{
						name: '<% multilang(LANG_ETH_OAM); %>',
						href: pageRoot + 'admin/ethoam.asp'
					}
#endif 
				]
			}
#ifdef CONFIG_USER_DOT1AG_UTILS
			,{
				collapsed: false,
				name: '<% multilang(LANG_802_1AG); %>',
				items: [
					{
						name: '<% multilang(LANG_CONFIGURATION); %>',
						href: pageRoot + 'admin/dot1ag_conf.asp'
					}
					,
					{
						name: '<% multilang(LANG_ACTION); %>',
						href: pageRoot + 'admin/dot1ag_action.asp'
					}
					,
					{
						name: '<% multilang(LANG_STATUS); %>',
						href: pageRoot + 'admin/dot1ag_status.asp'
					}
				]
			}
#endif
		]
	};
#else
    sub4 = {
        key: 4, 
        active: '0-0',
        items: [
            {
                collapsed: false,
                name: '<% multilang(LANG_WAN); %>',
                items: [
#ifdef CONFIG_ETHWAN
#if defined(CONFIG_GPON_FEATURE) || defined(CONFIG_EPON_FEATURE)
#ifdef CONFIG_TURBO
					{
						name: '<% multilang(LANG_PON_WAN); %>',
						href: pageRoot + '/admin/pppoe-wan.asp'
					}
          ,
					{
						name: '<% multilang(LANG_NAT_TYPE); %>',
						href: pageRoot + 'admin/fw_nat.asp'
					}
#else
					{
						name: '<% multilang(LANG_PON_WAN); %>',
						href: pageRoot + '../boaform/admin/formWanRedirect?redirect-url=/admin/multi_wan_generic.asp&if=pon'
					}
					,
					{
						name: '<% multilang(LANG_NAT_TYPE); %>',
						href: pageRoot + 'admin/fw_nat.asp'
					}
#endif
#else
#ifdef CONFIG_RTL_MULTI_ETH_WAN
					{
						name: '<% multilang(LANG_ETHERNET_WAN); %>',
						href: pageRoot + '../boaform/admin/formWanRedirect?redirect-url=/admin/multi_wan_generic.asp&if=eth'
					}
#else
					{
						name: '<% multilang(LANG_ETHERNET_WAN); %>',
						href: pageRoot + 'admin/waneth.asp'
					}
#endif
#endif
#endif
#ifdef CONFIG_PTMWAN
#ifdef CONFIG_ETHWAN
					,
#endif
					{
						name: '<% multilang(LANG_PTM_WAN); %>',
						href: pageRoot + '../boaform/admin/formWanRedirect?redirect-url=/admin/multi_wan_generic.asp&if=ptm'
					}
#endif /*CONFIG_PTMWAN*/
#ifdef CONFIG_DEV_xDSL
#if defined(CONFIG_ETHWAN) || defined(CONFIG_PTMWAN)
					,
#endif
					{
						name: '<% multilang(LANG_ATM_WAN); %>',
						href: pageRoot + 'admin/wanadsl.asp'
					}
					,
					{
						name: '<% multilang(LANG_ATM_SETTINGS); %>',
						href: pageRoot + 'admin/wanatm.asp'
					}
					,
					{
						name: '<% multilang(LANG_ADSL_SETTINGS); %>',
						href: pageRoot + 'admin/adsl-set.asp'
					}
#ifdef CONFIG_DSL_VTUO
					,
					{
						name: '<% multilang(LANG_VTUO_SETTINGS); %>',
						href: pageRoot + 'admin/vtuo-set.asp'
					}
#endif /*CONFIG_DSL_VTUO*/
#endif
#ifdef CONFIG_USER_PPPOMODEM
#ifndef CONFIG_00R0
					,
					{
						name: '<% multilang(LANG_3G_SETTINGS); %>',
						href: pageRoot + 'admin/wan3gconf.asp'
					}
#endif
#endif //CONFIG_USER_PPPOMODEM
                ]
	        }
        ]
    };
	sub5 = {
		key: 5,
		active: '0-0',
		items: [
#if defined(CONFIG_FIB_AHM)	|| defined(CONFIG_FIB_SPIDERLINK)|| defined(CONFIG_FIB_GSTECH) || defined(CONFIG_XKNET)	|| defined(CONFIG_FIB_DIGIWAY) || defined(CONFIG_FIB_GENEVA)
			{
				collapsed: false,
				name: '<% multilang(LANG_SERVICE); %>',
				items: [
#ifdef CONFIG_USER_VLAN_ON_LAN					
					{
						name: '<% multilang(LANG_VLAN_ON_LAN); %>',
						href: pageRoot + 'vlan_on_lan.asp'
					}
					,
#endif
#ifdef CONFIG_USER_DDNS
					{
						name: '<% multilang(LANG_DYNAMIC_DNS); %>',
						href: pageRoot + 'ddns.asp'
					}
#endif
#if !defined(CONFIG_XKNET)
#if defined(CONFIG_USER_IGMPPROXY)
					,
					{
						name: '<% multilang(LANG_IGMP_PROXY); %>',
						href: pageRoot + 'igmproxy.asp'
					}
#endif
#endif
#if defined(CONFIG_USER_UPNPD)||defined(CONFIG_USER_MINIUPNPD)
					,
					{
						name: '<% multilang(LANG_UPNP); %>',
						href: pageRoot + 'upnp.asp'
					}
#endif
#if !defined(CONFIG_XKNET)
#ifdef CONFIG_USER_ROUTED_ROUTED
					,
					{
						name: '<% multilang(LANG_RIP); %>',
						href: pageRoot + 'rip.asp'
					}
#endif
#endif
#ifdef WEB_REDIRECT_BY_MAC
					,
					{
						name: '<% multilang(LANG_LANDING_PAGE); %>',
						href: pageRoot + 'landing.asp'
					}
#endif
#if defined(CONFIG_USER_MINIDLNA)
					,
					{
						name: '<% multilang(LANG_DMS); %>',
						href: pageRoot + 'dms.asp'
					}
#endif
#ifdef CONFIG_USER_SAMBA
					,
					{
						name: '<% multilang(LANG_SAMBA); %>',
						href: pageRoot + 'samba.asp'
					}
#endif
				]
			},
#endif			
			{
				collapsed: false,
				name: '<% multilang(LANG_FIREWALL); %>',
				items: [
#if defined(CONFIG_FIB_AHM)|| defined(CONFIG_FIB_SPIDERLINK) || defined(CONFIG_FIB_JDM)|| defined(CONFIG_FIB_GSTECH) || defined(CONFIG_XKNET)|| defined(CONFIG_FIB_DIGIWAY)|| defined(CONFIG_FIB_GENEVA) 
#ifdef CONFIG_IP_NF_ALG_ONOFF
					{
						name: '<% multilang(LANG_ALG); %>',
						href: pageRoot + 'algonoff.asp'
					}
					,
#endif
//#ifdef IP_PORT_FILTER
#ifdef CONFIG_RTK_L34_ENABLE
					{
						name: '<% multilang(LANG_IP_PORT_FILTERING); %>',
						href: pageRoot + 'fw-ipportfilter_rg.asp'
					}
#else
					{
						name: '<% multilang(LANG_IP_PORT_FILTERING); %>',
						href: pageRoot + 'fw-ipportfilter.asp'
					}
#endif
					,
//#endif
#endif
#ifdef MAC_FILTER
#ifdef CONFIG_RTK_L34_ENABLE
					
					{
						name: '<% multilang(LANG_MAC_FILTERING); %>',
						href: pageRoot + 'fw-macfilter_rg.asp'
					}
#else
					{
						name: '<% multilang(LANG_MAC_FILTERING); %>',
						href: pageRoot + 'fw-macfilter.asp'
					}
#endif
#endif
#if defined(CONFIG_FIB_AHM)|| defined(CONFIG_FIB_SPIDERLINK) || defined(CONFIG_FIB_JDM)|| defined(CONFIG_FIB_GSTECH) || defined(CONFIG_XKNET)|| defined(CONFIG_FIB_DIGIWAY) || defined(CONFIG_FIB_GENEVA)
#ifdef PORT_FORWARD_GENERAL
					,
					{
						name: '<% multilang(LANG_PORT_FORWARDING); %>',
						href: pageRoot + 'fw-portfw.asp'
					}
#endif
#ifdef URL_BLOCKING_SUPPORT
					,
					{
						name: '<% multilang(LANG_URL_BLOCKING); %>',
						href: pageRoot + 'url_blocking.asp'
					}
#endif
#ifdef DOMAIN_BLOCKING_SUPPORT
					,
					{
						name: '<% multilang(LANG_DOMAIN_BLOCKING); %>',
						href: pageRoot + 'domainblk.asp'
					}
#endif
#ifdef PARENTAL_CTRL
					,
					{
						name: '<% multilang(LANG_PARENTAL_CONTROL); %>',
						href: pageRoot + 'parental-ctrl.asp'
					}
#endif
#ifdef TCP_UDP_CONN_LIMIT
					,
					{
						name: '<% multilang(LANG_CONNECTION_LIMIT); %>',
						href: pageRoot + 'connlimit.asp'
					}
#endif // TCP_UDP_CONN_LIMIT
#ifdef NATIP_FORWARDING
					,
					{
						name: '<% multilang(LANG_NAT_IP_FORWARDING); %>',
						href: pageRoot + 'fw-ipfw.asp'
					}
#endif
#ifdef PORT_TRIGGERING
					,
					{
						name: '<% multilang(LANG_PORT_TRIGGERING); %>',
						href: pageRoot + 'gaming.asp'
					}
#endif
#ifdef DMZ
					,
					{
						name: '<% multilang(LANG_DMZ); %>',
						href: pageRoot + 'fw-dmz.asp'
					}
#endif
					,
					{
						name: '<% multilang(LANG_FIREWALL); %> <% multilang(LANG_ENABLE); %>',
						href: pageRoot + 'fw-enable.asp'
					}
#ifdef DOS_SUPPORT
					,
					{
						name: '<% multilang(LANG_DOS); %>',
						href: pageRoot + 'dos.asp'
					}
#endif					

#ifdef ADDRESS_MAPPING
#ifdef MULTI_ADDRESS_MAPPING
					,
					{
						name: '<% multilang(LANG_NAT_RULE_CONFIGURATION); %>',
						href: pageRoot + 'multi_addr_mapping.asp'
					}
#else //!MULTI_ADDRESS_MAPPING
					,
					{
						name: '<% multilang(LANG_NAT_RULE_CONFIGURATION); %>',
						href: pageRoot + 'addr_mapping.asp'
					}
#endif// end of !MULTI_ADDRESS_MAPPING
#endif
#endif
				]
			}
		]
	};

#ifdef VOIP_SUPPORT
	sub6 = {
		key: 6,
		active: '0-0',
		items: [
			{
				collapsed: false,
				name: '<% multilang(LANG_VOIP); %>',
				items: [
					{
						name: '<% multilang(LANG_PORT1); %>',
						href: pageRoot + 'voip_general_new_web.asp?port=0'
					}
#if CONFIG_RTK_VOIP_CON_CH_NUM > 1
					,
					{
						name: '<% multilang(LANG_PORT2); %>',
						href: pageRoot + 'voip_general_new_web.asp?port=1'
					}
#endif
					,
					{
						name: '<% multilang(LANG_ADVANCE); %>',
						href: pageRoot + 'voip_advanced_new_web.asp'
					}
#ifdef CONFIG_RTK_VOIP_DRIVERS_FXO
					,
					{
						name: '<% multilang(LANG_FXO); %>',
						href: pageRoot + 'voip_general_new_web.asp?port=2'
					}
#endif
					,
					{
						name: '<% multilang(LANG_TONE); %>',
						href: pageRoot + 'voip_tone_new_web.asp'
					}
					,
					{
						name: '<% multilang(LANG_OTHER); %>',
						href: pageRoot + 'voip_other_new_web.asp'
					}
					,
					{
						name: '<% multilang(LANG_NETWORK); %>',
						href: pageRoot + 'voip_network_new_web.asp'
					}
					,
					{
						name: '<% multilang(LANG_VOIP_CALLHISTORY); %>',
						href: pageRoot + 'voip_callhistory_new_web.asp'
					}
				]
			}
		]
	};
#endif

	sub7 = {
		key: 7,
		active: '0-0',
		items: [
			{
				collapsed: false,
				name: '<% multilang(LANG_ADVANCE); %>',
				items: [
#ifdef CONFIG_RTL9601B_SERIES
					{
						name: '<% multilang(LANG_VLAN_SETTINGS); %>',
						href: pageRoot + 'admin/vlan.asp'
					}
					,
#endif
					{
						name: '<% multilang(LANG_ARP_TABLE); %>',
						href: pageRoot + 'admin/arptable.asp'
					}
#ifdef CONFIG_USER_RTK_LAN_USERLIST
					,
					{
						name: '<% multilang(LANG_LAN_DEVICE_TABLE); %>',
						href: pageRoot + 'admin/landevice.asp'
					}
#endif
#ifndef CONFIG_SFU
					,
					{
						name: '<% multilang(LANG_BRIDGING); %>',
						href: pageRoot + 'admin/bridging.asp'
					}
#endif
#ifdef ROUTING
					,
					{
						name: '<% multilang(LANG_ROUTING); %>',
						href: pageRoot + 'admin/routing.asp'
					}
#endif
#ifdef CONFIG_USER_SNMPD_SNMPD_V2CTRAP
					,
					{
						name: '<% multilang(LANG_SNMP); %>',
						href: pageRoot + 'admin/snmp.asp'
					}
#endif
#ifdef CONFIG_USER_SNMPD_SNMPD_V3
					,
					{
						name: '<% multilang(LANG_SNMP); %>',
						href: pageRoot + 'admin/snmpv3.asp'
					}
#endif
#ifdef CONFIG_USER_BRIDGE_GROUPING
					,
					{
						name: '<% multilang(LANG_BRIDGE_GROUPING); %>',
						href: pageRoot + 'admin/bridge_grouping.asp'
					}
#endif
#if CONFIG_USER_INTERFACE_GROUPING
					,
					{
						name: '<% multilang(LANG_INTERFACE_GROUPING); %>',
						href: pageRoot + 'admin/interface_grouping.asp'
					}
#endif
#ifdef VLAN_GROUP
					,
					{
						name: '<% multilang(LANG_PORT_MAPPING); %>',
						href: pageRoot + 'admin/eth2pvc_vlan.asp'
					}
#endif
#ifdef QOS_DIFFSERV
					,
					{
						name:  '<% multilang(LANG_DIFFSERV); %>',
						href: pageRoot + 'admin/diffserv.asp'
					}
#endif
#if defined(CONFIG_RTL_MULTI_LAN_DEV)
#ifdef ELAN_LINK_MODE
					,
					{
						name: '<% multilang(LANG_LINK_MODE); %>',
						href: pageRoot + 'admin/linkmode.asp'
					}
#endif
#else
#ifdef ELAN_LINK_MODE_INTRENAL_PHY
					,
					{
						name: '<% multilang(LANG_LINK_MODE); %>',
						href: pageRoot + 'admin/linkmode_eth.asp'
					}
#endif
#endif
#ifdef REMOTE_ACCESS_CTL
					,
					{
						name: '<% multilang(LANG_REMOTE_ACCESS); %>',
						href: pageRoot + 'admin/rmtacc.asp'
					}
#endif
#ifndef CONFIG_00R0
#ifdef CONFIG_USER_CUPS
					,
					{
						name: '<% multilang(LANG_PRINT_SERVER); %>',
						href: pageRoot + 'admin/printServer.asp'
					}
#endif //CONFIG_USER_CUPS
#endif
#ifdef IP_PASSTHROUGH
					,
					{
						name: '<% multilang(LANG_OTHERS); %>',
						href: pageRoot + 'admin/others.asp'
					}
#endif
				]
			}
		]
	};
	sub8 = {
		key: 8,
		active: '0-0',
		items: [
			{
				collapsed: false,
				name: '<% multilang(LANG_DIAGNOSTICS); %>',
				items: [
					{
						name: '<% multilang(LANG_PING); %>',
						href: pageRoot + 'admin/ping.asp'
					}
#ifdef CONFIG_IPV6
					,
					{
                        name: '<% multilang(LANG_PING); %>6',
                        href: pageRoot + 'ping6.asp'
                    }
#endif
                    ,
                    {
                        name: '<% multilang(LANG_TRACERT); %>',
                        href: pageRoot + 'tracert.asp'
                    }
#ifdef CONFIG_IPV6
					,
                    {
                        name: '<% multilang(LANG_TRACERT); %>6',
                        href: pageRoot + 'tracert6.asp'
                    }
#endif					
#ifdef CONFIG_USER_TCPDUMP_WEB
					,
					{
						name: '<% multilang(LANG_PACKET_DUMP); %>',
						href: pageRoot + 'admin/pdump.asp'
					}
#endif
#ifdef CONFIG_DEV_xDSL
					,
					{
						name: '<% multilang(LANG_ATM_LOOPBACK); %>',
						href: pageRoot + 'admin/oamloopback.asp'
					}
					,
					{
						name: '<% multilang(LANG_DSL_TONE); %>',
						href: pageRoot + '/admin/adsl-diag.asp'
					}
#endif
#ifdef CONFIG_USER_XDSL_SLAVE
					,
					{
						name: '<% multilang(LANG_DSL_SLAVE_TONE); %>',
						href: pageRoot + '/admin/adsl-slv-diag.asp'
					}
#endif /*CONFIG_USER_XDSL_SLAVE*/
#ifdef CONFIG_DEV_xDSL
#ifdef DIAGNOSTIC_TEST
					,
					{
						name: '<% multilang(LANG_ADSL_CONNECTION); %>',
						href: pageRoot + 'admin/diag-test.asp'
					}
#endif
#endif
#if defined(CONFIG_USER_Y1731) || defined(CONFIG_USER_8023AH)
					,
					{
						name: '<% multilang(LANG_ETH_OAM); %>',
						href: pageRoot + 'admin/ethoam.asp'
					}
#endif 
				]
			}
#ifdef CONFIG_USER_DOT1AG_UTILS
			,{
				collapsed: false,
				name: '<% multilang(LANG_802_1AG); %>',
				items: [
					{
						name: '<% multilang(LANG_CONFIGURATION); %>',
						href: pageRoot + 'admin/dot1ag_conf.asp'
					}
					,
					{
						name: '<% multilang(LANG_ACTION); %>',
						href: pageRoot + 'admin/dot1ag_action.asp'
					}
					,
					{
						name: '<% multilang(LANG_STATUS); %>',
						href: pageRoot + 'admin/dot1ag_status.asp'
					}
				]
			}
#endif
		]
	};	
#endif //CONFIG_00R0
    sub9 = {
        key: 9,
        active: '0-0',
        items: [
            {
                collapsed: false,
                name: '<% multilang(LANG_ADMIN); %>',
                items: [
#if	defined(CONFIG_FIB_AHM)	|| defined(CONFIG_FIB_SPIDERLINK)|| defined(CONFIG_FIB_GSTECH)			
					<% CheckMenuDisplay("pon_settings"); %>
					<% CheckMenuDisplay("omci_info"); %>
#endif					
					{
						name: '<% multilang(LANG_COMMIT_REBOOT); %>',
						href: pageRoot + 'admin/reboot.asp'
					}
					
					// Added by davian kuo
#ifdef CONFIG_USER_BOA_WITH_MULTILANG
					,
					{
						name: '<% multilang(LANG_MULTI_LINGUAL_SETTINGS); %>',
						href: pageRoot + 'multi_lang.asp'
					}
#endif
#if defined(NORMAL_USER_DISPLAY_SAVECFG)
#ifdef CONFIG_SAVE_RESTORE
					,
					{
						name: '<% multilang(LANG_BACKUP_RESTORE); %>',
						href: pageRoot + 'admin/saveconf.asp'
					}
#endif
#endif

#ifdef ACCOUNT_LOGIN_CONTROL
					,
					{
						name: '<% multilang(LANG_LOGOUT); %>',
						href: pageRoot + '/admin/adminlogout.asp'
					}
#endif
#ifdef CONFIG_USER_RTK_SYSLOG
#ifndef SEND_LOG
					,
					{
						name: '<% multilang(LANG_SYSTEM_LOG); %>',
						href: pageRoot + 'admin/syslog.asp'
					}
#else
					,
					{
						name: '<% multilang(LANG_SYSTEM_LOG); %>',
						href: pageRoot + 'admin/syslog_server.asp'
					}
#endif
#endif
#if !defined(CONFIG_FIB_NETWAY)
					,
					{
						name: '<% multilang(LANG_PASSWORD); %>',
						href: pageRoot + '/admin/user-password.asp'
					}
#endif					
#ifdef CONFIG_00R0
#ifdef WEB_UPGRADE
#ifdef UPGRADE_V1
					,
					{
						name: '<% multilang(LANG_FIRMWARE_UPGRADE); %>',
						href: pageRoot + 'admin/upgrade.asp'
					}
#endif // of UPGRADE_V1
#endif // of WEB_UPGRADE
#endif //CONFIG_00R0
#ifdef IP_ACL
					,
					{
						name: '<% multilang(LANG_ACL); %>',
						href: pageRoot + 'admin/acl.asp'
					}
#endif
#ifdef TIME_ZONE
					,
					{
						name: '<% multilang(LANG_TIME_ZONE); %>',
						href: pageRoot + 'admin/tz.asp'
					}
#endif
#if defined(CONFIG_FIB_AHM)|| defined(CONFIG_FIB_SPIDERLINK)|| defined(CONFIG_FIB_JDM)|| defined(CONFIG_FIB_GSTECH)|| defined(CONFIG_FIB_AIRLINK)
					,				
					{
						name: '<% multilang(LANG_TIME_REBOOT); %>',
						href: pageRoot + 'admin/timereboot.asp'
					}
#endif	
#if defined(CONFIG_FIB_AHM) || defined(CONFIG_FIB_GSTECH) || defined(CONFIG_FIB_GENEVA)
#ifdef _CWMP_MIB_
					,
					{
						name: '<% multilang(LANG_TR_069); %>',
#ifdef _TR111_STUN_
						href: pageRoot + 'tr069config_stun.asp'
#else
						href: pageRoot + 'tr069config.asp'
#endif
					}
#endif
					<% CheckMenuDisplay("catv_info"); %>
#endif					
				]
            }
        ]
    };
#if defined( CONFIG_00R0) || defined(CONFIG_FIB_AHM)|| defined(CONFIG_FIB_SPIDERLINK)|| defined(CONFIG_FIB_GSTECH) || defined(CONFIG_XKNET)|| defined(CONFIG_FIB_DIGIWAY) || defined(CONFIG_FIB_GENEVA)|| defined(CONFIG_FIB_AIRLINK)|| defined(CONFIG_SY_DEENET) 
    sub10 = {
        key: 10,
        active: '0-0',
        items: [
            {
                collapsed: false,
                name: '<% multilang(LANG_STATISTICS); %>',
                items: [
#ifdef CONFIG_SFU
					{
						name: '<% multilang(LANG_STATISTICS); %>',
						href: pageRoot + 'admin/stats.asp'
					}
#else
					{
						name: '<% multilang(LANG_INTERFACE); %>',
						href: pageRoot + 'admin/stats.asp'
					}
#endif
#ifdef CONFIG_DEV_xDSL
					,
					{
						name: '<% multilang(LANG_ADSL); %>',
						href: pageRoot + '/admin/adsl-stats.asp'
					}
#endif
#ifdef CONFIG_DSL_VTUO
					,
					{
						name: '<% multilang(LANG_VTUO_DSL); %',
						href: pageRoot + '/admin/vtuo-stats.asp'
					}
#endif /*CONFIG_DSL_VTUO*/

#ifdef CONFIG_USER_XDSL_SLAVE
					,
					{
						name: '<% multilang(LANG_ADSL_SLAVE_STATISTICS); %>',
						href: pageRoot + '/admin/adsl-slv-stats.asp'
					}
#endif
#if defined(CONFIG_GPON_FEATURE) || defined(CONFIG_EPON_FEATURE)
					,
					{
						name: '<% multilang(LANG_PON_STATISTICS); %>',
						href: pageRoot + '/admin/pon-stats.asp'
					}
#endif
				]
	    	}
		]
	};
#endif //CONFIG_00R0

    side.push(sub0);
#ifdef CONFIG_00R0
	side.push(sub1);
#endif
#ifdef CONFIG_XKNET
	side.push(sub5);
	side.push(sub8);
	side.push(sub10);
#else
#if defined(CONFIG_00R0) || defined(CONFIG_FIB_ULTRANET) || defined(CONFIG_FIB_AHM) || defined(CONFIG_FIB_SPIDERLINK)|| defined(CONFIG_FIB_GSTECH)|| defined(CONFIG_FIB_AIRLINK)|| defined(CONFIG_FIB_DIGIWAY) || defined(CONFIG_FIB_GENEVA)|| defined(CONFIG_SY_DEENET) 
	side.push(sub2);
#endif
	
#ifdef WLAN_SUPPORT
    side.push(sub3);
#endif
#if defined(CONFIG_00R0) || defined(CONFIG_FIB_AHM) || defined(CONFIG_FIB_SPIDERLINK) || defined(CONFIG_FIB_JDM)|| defined(CONFIG_FIB_GSTECH)|| defined(CONFIG_FIB_AIRLINK)|| defined(CONFIG_FIB_DIGIWAY) || defined(CONFIG_FIB_GENEVA)|| defined(CONFIG_SY_DEENET) 
    side.push(sub4);
#ifdef CONFIG_USER_DHCP_SERVER
	side.push(sub5);
#endif
	side.push(sub6);
#if !defined(CONFIG_FIB_DIGIWAY) && !defined(CONFIG_FIB_GENEVA)	&& !defined(CONFIG_SY_DEENET)
	side.push(sub7);
#endif	
	side.push(sub8);
#else
#if defined(CONFIG_FIB_PRACTION) 
	side.push(sub8);
#endif	
    side.push(sub4);
	side.push(sub5);
#endif //CONFIG_00R0
	
	side.push(sub9);
#if defined(CONFIG_00R0) || defined(CONFIG_FIB_AHM)|| defined(CONFIG_FIB_SPIDERLINK)|| defined(CONFIG_FIB_GSTECH)|| defined(CONFIG_FIB_DIGIWAY) || defined(CONFIG_FIB_GENEVA) || defined(CONFIG_FIB_AIRLINK)|| defined(CONFIG_SY_DEENET) 
	side.push(sub10);
#endif
#endif

    return side;
}

function adaptNav(side, key) {
    key = (key - 0)
        || 0;  
        var sideObj = {};
    for (var i = 0; i < side.length; i++) {
        if (side[i] && side[i].key === key) {
            sideObj.active = side[i].active;
            sideObj.items = side[i].items;
            for (var j = 0; j < sideObj.items.length; j++) {
                sideObj.items[j].index = j; 
            }
            return sideObj;
        }
    }
}


function renderSide(key) {
    var side = adaptNav(generateSide(), key);
    var tpl = $('#side-tmpl').html();
    var html = juicer(tpl, side);
//    var html = $('#side-tmpl').render(side);
    $('#side').html(html);
}
/**
 * */
function setActive(items, current) {
    $(items).removeClass('active');
    $(current).addClass('active');
}
/**
 * �۵���չ��side
 * @param item
 */
function setAccordion(item) {
    var $item = $(item);
    var className = 'collapsed';
    var $currentLi = $item.parents('li');

    var $allLi = $item.parents('#side').children('li');

    var $currentContent = $currentLi.children('ul');

    $allLi.addClass(className);
    $currentLi.removeClass(className);
}

