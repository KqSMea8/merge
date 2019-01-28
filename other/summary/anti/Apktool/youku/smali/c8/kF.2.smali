.class public Lc8/kF;
.super Lc8/RD;
.source "WVNetwork.java"


# instance fields
.field private final NETWORK_TYPE_1xRTT:I

.field private final NETWORK_TYPE_CDMA:I

.field private final NETWORK_TYPE_EDGE:I

.field private final NETWORK_TYPE_EHRPD:I

.field private final NETWORK_TYPE_EVDO_0:I

.field private final NETWORK_TYPE_EVDO_A:I

.field private final NETWORK_TYPE_EVDO_B:I

.field private final NETWORK_TYPE_GPRS:I

.field private final NETWORK_TYPE_HSDPA:I

.field private final NETWORK_TYPE_HSPA:I

.field private final NETWORK_TYPE_HSPAP:I

.field private final NETWORK_TYPE_HSUPA:I

.field private final NETWORK_TYPE_IDEN:I

.field private final NETWORK_TYPE_LTE:I

.field private final NETWORK_TYPE_UMTS:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lc8/RD;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput v0, p0, Lc8/kF;->NETWORK_TYPE_GPRS:I

    .line 35
    const/4 v0, 0x2

    iput v0, p0, Lc8/kF;->NETWORK_TYPE_EDGE:I

    .line 37
    const/4 v0, 0x3

    iput v0, p0, Lc8/kF;->NETWORK_TYPE_UMTS:I

    .line 39
    const/4 v0, 0x4

    iput v0, p0, Lc8/kF;->NETWORK_TYPE_CDMA:I

    .line 41
    const/4 v0, 0x5

    iput v0, p0, Lc8/kF;->NETWORK_TYPE_EVDO_0:I

    .line 43
    const/4 v0, 0x6

    iput v0, p0, Lc8/kF;->NETWORK_TYPE_EVDO_A:I

    .line 45
    const/4 v0, 0x7

    iput v0, p0, Lc8/kF;->NETWORK_TYPE_1xRTT:I

    .line 47
    const/16 v0, 0x8

    iput v0, p0, Lc8/kF;->NETWORK_TYPE_HSDPA:I

    .line 49
    const/16 v0, 0x9

    iput v0, p0, Lc8/kF;->NETWORK_TYPE_HSUPA:I

    .line 51
    const/16 v0, 0xa

    iput v0, p0, Lc8/kF;->NETWORK_TYPE_HSPA:I

    .line 53
    const/16 v0, 0xb

    iput v0, p0, Lc8/kF;->NETWORK_TYPE_IDEN:I

    .line 55
    const/16 v0, 0xc

    iput v0, p0, Lc8/kF;->NETWORK_TYPE_EVDO_B:I

    .line 57
    const/16 v0, 0xd

    iput v0, p0, Lc8/kF;->NETWORK_TYPE_LTE:I

    .line 59
    const/16 v0, 0xe

    iput v0, p0, Lc8/kF;->NETWORK_TYPE_EHRPD:I

    .line 61
    const/16 v0, 0xf

    iput v0, p0, Lc8/kF;->NETWORK_TYPE_HSPAP:I

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 65
    const-string/jumbo v0, "getNetworkType"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0, p2, p3}, Lc8/kF;->getNetworkType(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    .line 67
    const/4 v0, 0x1

    .line 69
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getNetworkType(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 17
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 94
    new-instance v8, Lc8/kE;

    invoke-direct {v8}, Lc8/kE;-><init>()V

    .line 96
    .local v8, "result":Lc8/kE;
    const/4 v14, 0x0

    .line 97
    .local v14, "wifiStatus":Z
    const/4 v12, 0x0

    .line 99
    .local v12, "wifiList":Z
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 100
    .local v5, "jsObj":Lorg/json/JSONObject;
    const-string/jumbo v15, "wifiStatus"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 101
    const-string/jumbo v15, "wifiList"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result v12

    .line 105
    .end local v5    # "jsObj":Lorg/json/JSONObject;
    :goto_0
    if-eqz v14, :cond_1

    .line 108
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/kF;->mContext:Landroid/content/Context;

    const-string/jumbo v16, "wifi"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/WifiManager;

    .line 111
    .local v13, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v11

    .line 113
    .local v11, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v11, :cond_1

    .line 114
    invoke-virtual {v11}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v9

    .line 115
    .local v9, "ssid":Ljava/lang/String;
    const-string/jumbo v15, "\""

    invoke-virtual {v9, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    const-string/jumbo v15, "\""

    invoke-virtual {v9, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 116
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v6

    .line 117
    .local v6, "length":I
    const/4 v15, 0x1

    add-int/lit8 v16, v6, -0x1

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 119
    .end local v6    # "length":I
    :cond_0
    const-string/jumbo v15, "ssid"

    invoke-virtual {v8, v15, v9}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string/jumbo v15, "bssid"

    invoke-virtual {v11}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 126
    .end local v9    # "ssid":Ljava/lang/String;
    .end local v11    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v13    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_1
    :goto_1
    if-eqz v12, :cond_3

    .line 129
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/kF;->mContext:Landroid/content/Context;

    const-string/jumbo v16, "wifi"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/WifiManager;

    .line 130
    .restart local v13    # "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 131
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    .line 132
    .local v10, "wifiArray":Lorg/json/JSONArray;
    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v7

    .line 133
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v15

    if-ge v3, v15, :cond_2

    .line 134
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 135
    .local v11, "wifiInfo":Lorg/json/JSONObject;
    const-string/jumbo v16, "ssid"

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/wifi/ScanResult;

    iget-object v15, v15, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v11, v0, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 136
    const-string/jumbo v16, "bssid"

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/wifi/ScanResult;

    iget-object v15, v15, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v11, v0, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 133
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 139
    .end local v11    # "wifiInfo":Lorg/json/JSONObject;
    :cond_2
    const-string/jumbo v15, "wifiList"

    invoke-virtual {v8, v15, v10}, Lc8/kE;->addData(Ljava/lang/String;Lorg/json/JSONArray;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 143
    .end local v3    # "i":I
    .end local v7    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .end local v10    # "wifiArray":Lorg/json/JSONArray;
    .end local v13    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_3
    :goto_3
    const/4 v4, 0x0

    .line 145
    .local v4, "info":Landroid/net/NetworkInfo;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/kF;->mContext:Landroid/content/Context;

    const-string/jumbo v16, "connectivity"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 146
    .local v1, "connectMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v4

    .line 152
    .end local v1    # "connectMgr":Landroid/net/ConnectivityManager;
    :goto_4
    if-nez v4, :cond_4

    .line 153
    const-string/jumbo v15, "type"

    const-string/jumbo v16, "NONE"

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V

    .line 240
    :goto_5
    return-void

    .line 147
    :catch_0
    move-exception v2

    .line 148
    .local v2, "e":Ljava/lang/Throwable;
    const-string/jumbo v15, "msg"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    goto :goto_4

    .line 158
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_4
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    .line 159
    const-string/jumbo v15, "type"

    const-string/jumbo v16, "WIFI"

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V

    goto :goto_5

    .line 163
    :cond_5
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v15

    packed-switch v15, :pswitch_data_0

    .line 235
    const-string/jumbo v15, "type"

    const-string/jumbo v16, "UNKNOWN"

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :goto_6
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V

    goto :goto_5

    .line 165
    :pswitch_0
    const-string/jumbo v15, "message"

    const-string/jumbo v16, "GPRS"

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string/jumbo v15, "type"

    const-string/jumbo v16, "2G"

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 169
    :pswitch_1
    const-string/jumbo v15, "message"

    const-string/jumbo v16, "EDGE"

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string/jumbo v15, "type"

    const-string/jumbo v16, "2G"

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 173
    :pswitch_2
    const-string/jumbo v15, "message"

    const-string/jumbo v16, "CDMA"

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string/jumbo v15, "type"

    const-string/jumbo v16, "2G"

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 177
    :pswitch_3
    const-string/jumbo v15, "message"

    const-string/jumbo v16, "1xRTT"

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string/jumbo v15, "type"

    const-string/jumbo v16, "2G"

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 181
    :pswitch_4
    const-string/jumbo v15, "message"

    const-string/jumbo v16, "IDEN"

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string/jumbo v15, "type"

    const-string/jumbo v16, "2G"

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 185
    :pswitch_5
    const-string/jumbo v15, "message"

    const-string/jumbo v16, "UMTS"

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string/jumbo v15, "type"

    const-string/jumbo v16, "3G"

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 190
    :pswitch_6
    const-string/jumbo v15, "message"

    const-string/jumbo v16, "EVDO_0"

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string/jumbo v15, "type"

    const-string/jumbo v16, "3G"

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 195
    :pswitch_7
    const-string/jumbo v15, "message"

    const-string/jumbo v16, "EVDO_A"

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string/jumbo v15, "type"

    const-string/jumbo v16, "3G"

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 200
    :pswitch_8
    const-string/jumbo v15, "message"

    const-string/jumbo v16, "HSDPA"

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string/jumbo v15, "type"

    const-string/jumbo v16, "3G"

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 205
    :pswitch_9
    const-string/jumbo v15, "message"

    const-string/jumbo v16, "HSUPA"

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string/jumbo v15, "type"

    const-string/jumbo v16, "3G"

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 210
    :pswitch_a
    const-string/jumbo v15, "message"

    const-string/jumbo v16, "HSPA"

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string/jumbo v15, "type"

    const-string/jumbo v16, "3G"

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 215
    :pswitch_b
    const-string/jumbo v15, "message"

    const-string/jumbo v16, "EVDO_B"

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string/jumbo v15, "type"

    const-string/jumbo v16, "3G"

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 220
    :pswitch_c
    const-string/jumbo v15, "message"

    const-string/jumbo v16, "EHRPD"

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string/jumbo v15, "type"

    const-string/jumbo v16, "3G"

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 225
    :pswitch_d
    const-string/jumbo v15, "message"

    const-string/jumbo v16, "HSPAP"

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string/jumbo v15, "type"

    const-string/jumbo v16, "3G"

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 230
    :pswitch_e
    const-string/jumbo v15, "message"

    const-string/jumbo v16, "LTE"

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string/jumbo v15, "type"

    const-string/jumbo v16, "4G"

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .end local v4    # "info":Landroid/net/NetworkInfo;
    :catch_1
    move-exception v15

    goto/16 :goto_3

    :catch_2
    move-exception v15

    goto/16 :goto_1

    :catch_3
    move-exception v15

    goto/16 :goto_0

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_4
        :pswitch_b
        :pswitch_e
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public lookUpScan(Ljava/util/List;)Ljava/lang/StringBuffer;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)",
            "Ljava/lang/StringBuffer;"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 79
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Index_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/Integer;

    add-int/lit8 v4, v0, 0x1

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget-object v2, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_0
    return-object v1
.end method
