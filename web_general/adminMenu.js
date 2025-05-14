var __GLOBAL__ = {

  pageRoot: ''

 };

 function generateNav() {

  var navs = {

   active: 0,

   items: [

    {

     name: '<% multilang("3" "LANG_STATUS"); %>',

     img: '/img/staush.png',

     height: 34,

     width: 41,

     padding: 1,

     sub: 0

    },

    {

     name: 'Net',

     img: '/img/internet.png',

     height: 32,

     width: 36,

     padding: 4,

     sub: 4

    },

    {

        name: 'Wi-Fi',

        img: '/img/wi-fi.png',

        height: 34,

        width: 41,

        sub: 3

    },

    {

        name: 'APP',

        img: '/img/app.png',

        height: 32,

        width: 35,

        padding: 6,

        sub: 2

    },

    {

        name: 'Voice',

        img: '/img/voip.png',

        height: 37,

        width: 43,

        padding: 0,

        sub: 5

    },

    {

        name: 'TR069',

        img: '/img/TR069.png',

        height: 32,

        width: 38,

        padding: 4,

        sub: 6

    },

    {

        name: 'Security',

        img: '/img/security.png',

        height: 32,

        width: 36,

        padding: 4,

        sub: 7

    },



    // {

    //  name: '<% multilang("45" "LANG_DIAGNOSTICS"); %>',

    //  sub: 8

    // },

     {

     name: 'Manage',

     img: '/img/manage.png',

     height: 30,

     width: 35,

     padding: 6,

     sub: 8

    },

    // {

    //  name: '<% multilang("47" "LANG_ADMIN"); %>',

    //  sub: 9

    // },

    {

     name: 'Diagnose',

     img: '/img/diagnose.png',

     height: 30,

     width: 37,

     padding: 4,

     sub: 9

    },

    // {

    //  name: '<% multilang("1276" "LANG_STATISTICS"); %>',

    //  sub: 10

    // }

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

  var sub0, sub1, sub2, sub3, sub4, sub5, sub6, sub7, sub8, sub9, sub10, sub11;

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

       href: pageRoot + 'status.asp'

      }

     ]

    }

   ]

  };

  sub2={

   key:2,

   active:'0-0',

   items:[

    {

     collapsed: false,

     name: '<% multilang("6" "LANG_LAN"); %>',

     items: [

      {

       name: 'DDNS',

       href: pageRoot + 'ddns.asp'

      }

      ,

      {

       name: 'Advance NAT',

       href: pageRoot + 'algonoff.asp'

      },

      {

        name: 'UPNP',

        href: pageRoot + 'upnp.asp'

       }

       ,

       {

        name: 'IGMP/MLD',

        href: pageRoot + 'igmproxy.asp'

       }

       ,

       {

        name: 'IPV6',

        href: pageRoot + 'ipv6_enabledisable.asp'

       },

       {

        name: 'USB Home Sharing',

        href: pageRoot + 'samba.asp'

       }

       ,

       {

        name: 'ARP',

        href: pageRoot + 'arptable.asp'

       }

       ,

       {

        name: 'BRIDGING',

        href: pageRoot + 'bridging.asp'

       }

       ,

       {

        name: 'IPTV',

        href: pageRoot + 'app_iptv.asp'

       }

       ,

       {

        name: 'Time Reboot',

        href: pageRoot + 'timereboot.asp'

       }

       ,

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

        name: '<% multilang("1279" "LANG_WLAN1_2_4GHZ"); %>',

        items: [

         {

          name: 'Wi-Fi 2.4G',

           href: pageRoot + 'boaform/formWlanRedirect?redirect-url=/wlbasic.asp&wlan_idx=1',

          item: [

            {

                name: 'WlBasic',

                href: pageRoot + 'boaform/formWlanRedirect?redirect-url=/wlbasic.asp&wlan_idx=1'

            },

            {

                name: '<% multilang("9" "LANG_ADVANCED_SETTINGS"); %>',

                href: pageRoot + 'boaform/formWlanRedirect?redirect-url=/wladvanced.asp&wlan_idx=1'

               },

               {

                name: '<% multilang("1259" "LANG_SECURITY"); %>',

                href: pageRoot + 'boaform/formWlanRedirect?redirect-url=/wlwpa.asp&wlan_idx=1'

               }

               ,

               {

                name: '<% multilang("1261" "LANG_ACCESS_CONTROL"); %>',

                href: pageRoot + 'boaform/formWlanRedirect?redirect-url=/wlactrl.asp&wlan_idx=1'

               }

               ,

               {

                name: '<% multilang("1266" "LANG_SITE_SURVEY"); %>',

                href: pageRoot + 'boaform/formWlanRedirect?redirect-url=/wlsurvey.asp&wlan_idx=1'

               }

               ,

               {

                name: '<% multilang("1267" "LANG_WPS"); %>',

                href: pageRoot + 'boaform/formWlanRedirect?redirect-url=/wlwps.asp&wlan_idx=1'

               }

               ,

          ]

          

         },

        

        //  {

        //   name: '<% multilang("3" "LANG_STATUS"); %>',

        //   href: pageRoot + 'boaform/formWlanRedirect?redirect-url=/wlstatus.asp&wlan_idx=1'

        //  }

        ]

       },

       {

        collapsed: false,

        name: 'Wi-Fi 5G',

        items: [

         {

          name: 'Wi-Fi 5G',

          href: pageRoot + 'boaform/formWlanRedirect?redirect-url=/wlbasic.asp&wlan_idx=0',

          item: [

            {

                name: 'WlBaisic',

                href: pageRoot + 'boaform/formWlanRedirect?redirect-url=/wlbasic.asp&wlan_idx=0'

            },

            {

                name: '<% multilang("9" "LANG_ADVANCED_SETTINGS"); %>',

                href: pageRoot + 'boaform/formWlanRedirect?redirect-url=/wladvanced.asp&wlan_idx=0'

               },

               {

                name: '<% multilang("1259" "LANG_SECURITY"); %>',

                href: pageRoot + 'boaform/formWlanRedirect?redirect-url=/wlwpa.asp&wlan_idx=0'

               }

               ,

               {

                name: '<% multilang("1261" "LANG_ACCESS_CONTROL"); %>',

                href: pageRoot + 'boaform/formWlanRedirect?redirect-url=/wlactrl.asp&wlan_idx=0'

               }

               ,

               {

                name: '<% multilang("1266" "LANG_SITE_SURVEY"); %>',

                href: pageRoot + 'boaform/formWlanRedirect?redirect-url=/wlsurvey.asp&wlan_idx=0'

               }

               ,

               {

                name: '<% multilang("1267" "LANG_WPS"); %>',

                href: pageRoot + 'boaform/formWlanRedirect?redirect-url=/wlwps.asp&wlan_idx=0'

               }

          ]

         },



        //  {

        //   name: '<% multilang("3" "LANG_STATUS"); %>',

        //   href: pageRoot + 'boaform/formWlanRedirect?redirect-url=/wlstatus.asp&wlan_idx=0'

        //  }

        ]

       },

    

    {

     collapsed: false,

     name: '<% multilang("1264" "LANG_WLAN_EASY_MESH"); %>',

     items: [

      {

       name: 'EASYMESH',

       href: pageRoot + 'multi_ap_setting_general.asp'

      }

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

      <% CheckMenuDisplay("wan_mode"); %>

      

      {

       name: 'LAN',

       href: pageRoot + 'dhcpd.asp'

      },

      {

        name: 'QoS',

        href: pageRoot + 'net_qos_imq_policy.asp'

       },

       {

        name: 'Time',

        href: pageRoot + 'tz.asp'

       },

       {

        name: 'Route',

        href: pageRoot + 'routing.asp'

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

     name: '<% multilang("378" "LANG_SERVICE"); %>',

     items: [

      {

       name: 'Voice',

       href: pageRoot + 'voip_general_new_web.asp'

      }

      ,

      {

       name: 'Voice Advanced',

       href: pageRoot + 'voip_advanced_new_web.asp'

      }

      ,

      {

        name: 'Voice Other',

        href: pageRoot + 'voip_other_new_web.asp'

       }

       ,

      {

       name: 'Voice History',

       href: pageRoot + 'voip_callhistory_new_web.asp'

      }

      ,

      

     ]

    },



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

       name: 'TR069',

       href: pageRoot + 'tr069config_stun.asp'

      }

    //   ,

    //   {

    //    name: '<% multilang("1275" "LANG_ADVANCE"); %>',

    //    href: pageRoot + 'voip_advanced_new_web.asp'

    //   }

    //   ,

    //   {

    //    name: '<% multilang("34" "LANG_TONE"); %>',

    //    href: pageRoot + 'voip_tone_new_web.asp'

    //   }

    //   ,

    //   {

    //    name: '<% multilang("35" "LANG_OTHER"); %>',

    //    href: pageRoot + 'voip_other_new_web.asp'

    //   }

    //   ,

    //   {

    //    name: '<% multilang("1323" "LANG_NETWORK"); %>',

    //    href: pageRoot + 'voip_network_new_web.asp'

    //   }

    //   ,

    //   {

    //    name: '<% multilang("1239" "LANG_VOIP_CALLHISTORY"); %>',

    //    href: pageRoot + 'voip_callhistory_new_web.asp'

    //   }

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

            name: 'URL Filter',

            href: pageRoot + 'url_blocking.asp'

           }

           ,

           {

            name: 'FireWall',

            href: pageRoot + 'fw-enable.asp'

           }

           ,

           {

            name: 'Mac Filter',

            href: pageRoot + 'fw-macfilter_rg.asp'

           }

           ,

           {

            name: 'Port Filter',

            href: pageRoot + 'fw-ipportfilter_rg.asp'

           }

           ,

           {

            name: 'Acl Filter',

            href: pageRoot + 'rmtacc.asp'

           },

           {

            name: 'Domain Blocking',

            href: pageRoot + 'domainblk.asp'

           }

           ,

           {

            name: 'Dos',

            href: pageRoot + 'dos.asp'

           }

           ,

           {

            name: 'Rip',

            href: pageRoot + 'rip.asp'

           }

           ,

           {

            name: 'LoopDetect',

            href: pageRoot + 'lbd.asp'

           }

    //   {

    //    name: '<% multilang("36" "LANG_ARP_TABLE"); %>',

    //    href: pageRoot + 'arptable.asp'

    //   }

    //   ,

    //   {

    //    name: '<% multilang("38" "LANG_BRIDGING"); %>',

    //    href: pageRoot + 'bridging.asp'

    //   }

    //   ,

    //   {

    //    name: '<% multilang("2965" "LANG_LOOP_DETECTION"); %>',

    //    href: pageRoot + 'lbd.asp'

    //   }

    //   ,

    //   {

    //    name: '<% multilang("39" "LANG_ROUTING"); %>',

    //    href: pageRoot + 'routing.asp'

    //   }

    //   ,

    //   {

    //    name: '<% multilang("44" "LANG_REMOTE_ACCESS"); %>',

    //    href: pageRoot + 'rmtacc.asp'

    //   }

     ]

    }

     ,

    // {

    //  collapsed: true,

    //  name: '<% multilang("1297" "LANG_IP_QOS"); %>',

    //  items: [

    //   {

    //    name: '<% multilang("1253" "LANG_QOS_POLICY"); %>',

    //    href: pageRoot + 'net_qos_imq_policy.asp'

    //   },

    //   {

    //    name: '<% multilang("1252" "LANG_QOS_CLASSIFICATION"); %>',

    //    href: pageRoot + 'net_qos_cls.asp'

    //   },

    //   {

    //    name: '<% multilang("43" "LANG_TRAFFIC_SHAPING"); %>',

    //    href: pageRoot + 'net_qos_traffictl.asp'

    //   }

    //  ]

    // }

    // ,

    // {

    //  collapsed: true,

    //  name: '<% multilang("5" "LANG_IPV6"); %>',

    //  items: [

    //   {

    //    name: '<% multilang("5" "LANG_IPV6"); %> <% multilang("248" "LANG_ENABLE"); %>/<% multilang("247" "LANG_DISABLE"); %>',

    //    href: pageRoot + 'ipv6_enabledisable.asp'

    //   }

    //   ,

    //   {

    //    name: '<% multilang("1244" "LANG_RADVD"); %>',

    //    href: pageRoot + 'radvdconf.asp'

    //   }

    //   ,

    //   {

    //    name: '<% multilang("1245" "LANG_DHCPV6"); %>',

    //    href: pageRoot + 'dhcpdv6.asp'

    //   }

    //   ,

    //   {

    //    name: '<% multilang("26" "LANG_MLD_PROXY"); %>',

    //    href: pageRoot + 'app_mldProxy.asp'

    //   }

    //   ,

    //   {

    //    name: '<% multilang("27" "LANG_MLD_SNOOPING"); %>',

    //    href: pageRoot + 'app_mld_snooping.asp'

    //   }

    //   ,

    //   {

    //    name: '<% multilang("1246" "LANG_IPV6_ROUTING"); %>',

    //    href: pageRoot + 'routing_ipv6.asp'

    //   }

    //   ,

    //   {

    //    name: '<% multilang("1247" "LANG_IP_PORT_FILTERING"); %>',

    //    href: pageRoot + 'fw-ipportfilter-v6_IfId_rg.asp'

    //   }

    //  ]

    // }

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

            name: 'User Manage',

            href: pageRoot + 'password.asp'

           }

           ,

           {

                              name: 'Device Manage',

                              href: pageRoot + 'reboot.asp'

                          }

                          ,

                          {

                              name: 'Log Manage',

                              href: pageRoot + 'syslog.asp'

                          }

           ,

                          {

                              name: 'upgrade',

                              href: pageRoot + 'upgrade.asp'

                          }

           ,

                          {

                              name: 'Gpon Setting',

                              href: pageRoot + 'gpon.asp'

                          },

                          {

                            name: 'Omci Information',

                            href: pageRoot + 'omci_info.asp'

                        }

    //   {

    //    name: '<% multilang("895" "LANG_PING"); %>',

    //    href: pageRoot + 'ping.asp'

    //   }

    //   ,

    //   {

    //                      name: '<% multilang("895" "LANG_PING"); %>6',

    //                      href: pageRoot + 'ping6.asp'

    //                  }

    //                  ,

    //                  {

    //                      name: '<% multilang("896" "LANG_TRACERT"); %>',

    //                      href: pageRoot + 'tracert.asp'

    //                  }

    //   ,

    //                  {

    //                      name: '<% multilang("896" "LANG_TRACERT"); %>6',

    //                      href: pageRoot + 'tracert6.asp'

    //                  }

    //   ,

    //                  {

    //                      name: 'Inform',

    //                      href: pageRoot + 'diagnose_tr069.asp'

    //                  }

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

              name: 'Internet Diagnose',

              href: pageRoot + 'ping.asp',

        },

       ]

    }

   ]

  };

//   sub10 = {

//    key: 10,

//    active: '0-0',

//    items: [

//     {

//      collapsed: false,

//      name: '<% multilang("1276" "LANG_STATISTICS"); %>',

//      items: [

//       {

//        name: '<% multilang("70" "LANG_INTERFACE"); %>',

//        href: pageRoot + 'stats.asp'

//       }

//       ,

//       {

//        name: '<% multilang("903" "LANG_PON_STATISTICS"); %>',

//        href: pageRoot + '/admin/pon-stats.asp'

//       }

//      ]

//     }

//    ]

//   };

  side.push(sub0);

  side.push(sub2);

  side.push(sub3);

  side.push(sub4);

  side.push(sub5);

  side.push(sub6);

  side.push(sub7);

  side.push(sub8);

  side.push(sub9);

  side.push(sub10);

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

 