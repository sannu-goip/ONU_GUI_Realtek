var __GLOBAL__ = {
    pageRoot: ''
};
function generateNav() {
 var navs = {
  active: 0,
  items: [
   {
    name: '<% multilang("3" "LANG_STATUS"); %>',
    sub: 0
   },
   <% CheckMenuDisplay("wlan_sub"); %>
   {
    name: '<% multilang("1292" "LANG_FIREWALL"); %>',
    sub: 5
   }
   ,
   {
    name: '<% multilang("47" "LANG_ADMIN"); %>',
    sub: 9
   }
  ]
 };
 return navs;
}
function renderNav() {
 var nav = generateNav();
 var tpl = $('#nav-tmpl').html();
 var html = juicer(tpl, nav);
 $('#nav').html(html);
}
function generateSide() {
 var side = [];
 var sub0, sub1, sub2, sub3, sub4, sub5, sub6, sub7, sub8, sub9;
 var pageRoot = __GLOBAL__.pageRoot;
 sub0 = {
  key: 0,
  active: '0-0',
  items: [
            {
                collapsed: false,
                name: '<% multilang("3" "LANG_STATUS"); %>',
                items: [
                    {
                        name: '<% multilang("4" "LANG_DEVICE"); %>',
                        href: pageRoot + 'admin/status.asp'
                    }
     ,
                    {
                        name: '<% multilang("5" "LANG_IPV6"); %>',
                        href: pageRoot + 'admin/status_ipv6.asp'
                    }
     ,
     {
      name: '<% multilang("1269" "LANG_PON"); %>',
      href: pageRoot + 'admin/status_pon.asp'
     }
     <% CheckUserMenuDisplay("voip_info"); %>
                ]
            }
        ]
    };
 sub3 = {
  key: 3,
  active: '0-0',
  items: [
   {
    collapsed: false,
    name: '<% multilang("1271" "LANG_WLAN0_5GHZ"); %>',
    items: [
     {
      name: '<% multilang("1258" "LANG_BASIC_SETTINGS"); %>',
      href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlbasic.asp&wlan_idx=0'
     },
     {
      name: '<% multilang("9" "LANG_ADVANCED_SETTINGS"); %>',
      href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wladvanced.asp&wlan_idx=0'
     },
     {
      name: '<% multilang("1259" "LANG_SECURITY"); %>',
      href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlwpa.asp&wlan_idx=0'
     }
     ,
     {
      name: '<% multilang("1261" "LANG_ACCESS_CONTROL"); %>',
      href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlactrl.asp&wlan_idx=0'
     }
     ,
     {
      name: '<% multilang("1266" "LANG_SITE_SURVEY"); %>',
      href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlsurvey.asp&wlan_idx=0'
     }
     ,
     {
      name: '<% multilang("1267" "LANG_WPS"); %>',
      href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlwps.asp&wlan_idx=0'
     }
     ,
     {
      name: '<% multilang("3" "LANG_STATUS"); %>',
      href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlstatus.asp&wlan_idx=0'
     }
    ]
   },
   {
    collapsed: true,
    name: '<% multilang("1279" "LANG_WLAN1_2_4GHZ"); %>',
    items: [
     {
      name: '<% multilang("1258" "LANG_BASIC_SETTINGS"); %>',
      href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlbasic.asp&wlan_idx=1'
     },
     {
      name: '<% multilang("9" "LANG_ADVANCED_SETTINGS"); %>',
      href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wladvanced.asp&wlan_idx=1'
     },
     {
      name: '<% multilang("1259" "LANG_SECURITY"); %>',
      href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlwpa.asp&wlan_idx=1'
     }
     ,
     {
      name: '<% multilang("1261" "LANG_ACCESS_CONTROL"); %>',
      href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlactrl.asp&wlan_idx=1'
     }
     ,
     {
      name: '<% multilang("1266" "LANG_SITE_SURVEY"); %>',
      href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlsurvey.asp&wlan_idx=1'
     }
     ,
     {
      name: '<% multilang("1267" "LANG_WPS"); %>',
      href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlwps.asp&wlan_idx=1'
     }
     ,
     {
      name: '<% multilang("3" "LANG_STATUS"); %>',
      href: pageRoot + '../boaform/admin/formWlanRedirect?redirect-url=/admin/wlstatus.asp&wlan_idx=1'
     }
    ]
   }
   ,
   {
    collapsed: true,
    name: '<% multilang("1264" "LANG_WLAN_EASY_MESH"); %>',
    items: [
     {
      name: '<% multilang("257" "LANG_WLAN_EASY_MESH_INTERFACE_SETUP"); %>',
      href: pageRoot + 'multi_ap_setting_general.asp'
     }
     <% CheckMenuDisplay("map_topology"); %>
    ]
   }
  ]
 };
    sub4 = {
        key: 4,
        active: '0-0',
        items: [
            {
                collapsed: false,
                name: '<% multilang("11" "LANG_WAN"); %>',
                items: [
     {
      name: '<% multilang("1282" "LANG_PON_WAN"); %>',
      href: pageRoot + '../boaform/admin/formWanRedirect?redirect-url=/admin/multi_wan_generic.asp&if=pon'
     }
     ,
     {
      name: '<% multilang("2953" "LANG_NAT_TYPE"); %>',
      href: pageRoot + 'admin/fw_nat.asp'
     }
                ]
         }
        ]
    };
 sub5 = {
  key: 5,
  active: '0-0',
  items: [
   {
    collapsed: false,
    name: '<% multilang("1292" "LANG_FIREWALL"); %>',
    items: [
     {
      name: '<% multilang("19" "LANG_MAC_FILTERING"); %>',
      href: pageRoot + 'fw-macfilter_rg.asp'
     }
    ]
   }
  ]
 };
 sub6 = {
  key: 6,
  active: '0-0',
  items: [
   {
    collapsed: false,
    name: '<% multilang("33" "LANG_VOIP"); %>',
    items: [
     {
      name: '<% multilang("1319" "LANG_PORT1"); %>',
      href: pageRoot + 'voip_general_new_web.asp?port=0'
     }
     ,
     {
      name: '<% multilang("1275" "LANG_ADVANCE"); %>',
      href: pageRoot + 'voip_advanced_new_web.asp'
     }
     ,
     {
      name: '<% multilang("34" "LANG_TONE"); %>',
      href: pageRoot + 'voip_tone_new_web.asp'
     }
     ,
     {
      name: '<% multilang("35" "LANG_OTHER"); %>',
      href: pageRoot + 'voip_other_new_web.asp'
     }
     ,
     {
      name: '<% multilang("1323" "LANG_NETWORK"); %>',
      href: pageRoot + 'voip_network_new_web.asp'
     }
     ,
     {
      name: '<% multilang("1239" "LANG_VOIP_CALLHISTORY"); %>',
      href: pageRoot + 'voip_callhistory_new_web.asp'
     }
    ]
   }
  ]
 };
 sub7 = {
  key: 7,
  active: '0-0',
  items: [
   {
    collapsed: false,
    name: '<% multilang("1275" "LANG_ADVANCE"); %>',
    items: [
     {
      name: '<% multilang("36" "LANG_ARP_TABLE"); %>',
      href: pageRoot + 'admin/arptable.asp'
     }
     ,
     {
      name: '<% multilang("38" "LANG_BRIDGING"); %>',
      href: pageRoot + 'admin/bridging.asp'
     }
     ,
     {
      name: '<% multilang("39" "LANG_ROUTING"); %>',
      href: pageRoot + 'admin/routing.asp'
     }
     ,
     {
      name: '<% multilang("44" "LANG_REMOTE_ACCESS"); %>',
      href: pageRoot + 'admin/rmtacc.asp'
     }
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
    name: '<% multilang("45" "LANG_DIAGNOSTICS"); %>',
    items: [
     {
      name: '<% multilang("895" "LANG_PING"); %>',
      href: pageRoot + 'admin/ping.asp'
     }
     ,
     {
                        name: '<% multilang("895" "LANG_PING"); %>6',
                        href: pageRoot + 'ping6.asp'
                    }
                    ,
                    {
                        name: '<% multilang("896" "LANG_TRACERT"); %>',
                        href: pageRoot + 'tracert.asp'
                    }
     ,
                    {
                        name: '<% multilang("896" "LANG_TRACERT"); %>6',
                        href: pageRoot + 'tracert6.asp'
                    }
    ]
   }
  ]
 };
    sub9 = {
        key: 9,
        active: '0-0',
        items: [
            {
                collapsed: false,
                name: '<% multilang("47" "LANG_ADMIN"); %>',
                items: [
     {
      name: '<% multilang("1308" "LANG_COMMIT_REBOOT"); %>',
      href: pageRoot + 'admin/reboot.asp'
     }
     ,
     {
      name: '<% multilang("67" "LANG_PASSWORD"); %>',
      href: pageRoot + '/admin/user-password.asp'
     }
     ,
     {
      name: '<% multilang("69" "LANG_TIME_ZONE"); %>',
      href: pageRoot + 'admin/tz.asp'
     }
    ]
            }
        ]
    };
    side.push(sub0);
    side.push(sub3);
    side.push(sub4);
 side.push(sub5);
 side.push(sub9);
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
    $('#side').html(html);
}
function setActive(items, current) {
    $(items).removeClass('active');
    $(current).addClass('active');
}
function setAccordion(item) {
    var $item = $(item);
    var className = 'collapsed';
    var $currentLi = $item.parents('li');
    var $allLi = $item.parents('#side').children('li');
    var $currentContent = $currentLi.children('ul');
    $allLi.addClass(className);
    $currentLi.removeClass(className);
}
