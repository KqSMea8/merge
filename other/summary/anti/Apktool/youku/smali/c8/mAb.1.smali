.class public Lc8/mAb;
.super Ljava/lang/Object;
.source "LogAssemble.java"


# static fields
.field private static final LOG_MAX_LENGHTH:I = 0xa000

.field private static volatile s_bssid:Ljava/lang/String;

.field private static volatile s_mac_str:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    sput-object v0, Lc8/mAb;->s_bssid:Ljava/lang/String;

    .line 31
    sput-object v0, Lc8/mAb;->s_mac_str:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assemble(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "page"    # Ljava/lang/String;
    .param p1, "eventId"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Ljava/lang/String;
    .param p4, "arg3"    # Ljava/lang/String;
    .param p6, "logIndex"    # Ljava/lang/String;
    .param p7, "time"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p5, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v7, 0x2

    const/4 v6, 0x1

    const v5, 0xa000

    const/4 v4, 0x0

    .line 418
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 419
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p5, :cond_0

    .line 420
    invoke-virtual {v0, p5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 422
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 423
    sget-object v1, Lcom/alibaba/analytics/core/model/LogField;->PAGE:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v1}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    :cond_1
    sget-object v1, Lcom/alibaba/analytics/core/model/LogField;->EVENTID:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v1}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 427
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v5, :cond_7

    .line 428
    sget-object v1, Lcom/alibaba/analytics/core/model/LogField;->ARG1:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v1}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    const-string/jumbo v1, ""

    new-array v2, v7, [Ljava/lang/Object;

    const-string/jumbo v3, "arg1 len"

    aput-object v3, v2, v4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lc8/NBb;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 434
    :cond_2
    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 435
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v5, :cond_8

    .line 436
    sget-object v1, Lcom/alibaba/analytics/core/model/LogField;->ARG2:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v1}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    const-string/jumbo v1, ""

    new-array v2, v7, [Ljava/lang/Object;

    const-string/jumbo v3, "arg2 len"

    aput-object v3, v2, v4

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lc8/NBb;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 442
    :cond_3
    :goto_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 443
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v5, :cond_9

    .line 444
    sget-object v1, Lcom/alibaba/analytics/core/model/LogField;->ARG3:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v1}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    const-string/jumbo v1, ""

    new-array v2, v7, [Ljava/lang/Object;

    const-string/jumbo v3, "arg3 len"

    aput-object v3, v2, v4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lc8/NBb;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 450
    :cond_4
    :goto_2
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 451
    sget-object v1, Lcom/alibaba/analytics/core/model/LogField;->RECORD_TIMESTAMP:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v1}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    :cond_5
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 454
    sget-object v1, Lcom/alibaba/analytics/core/model/LogField;->RESERVE3:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v1}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    :cond_6
    invoke-static {v0}, Lc8/mAb;->assemble(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 431
    :cond_7
    sget-object v1, Lcom/alibaba/analytics/core/model/LogField;->ARG1:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v1}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 439
    :cond_8
    sget-object v1, Lcom/alibaba/analytics/core/model/LogField;->ARG2:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v1}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 447
    :cond_9
    sget-object v1, Lcom/alibaba/analytics/core/model/LogField;->ARG3:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v1}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public static assemble(Ljava/util/Map;)Ljava/lang/String;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "aLogMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_2b

    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->size()I

    move-result v24

    if-lez v24, :cond_2b

    .line 70
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lc8/uzb;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 71
    .local v7, "context":Landroid/content/Context;
    if-nez v7, :cond_0

    .line 72
    invoke-static {}, Lc8/Oyb;->getApplication()Landroid/app/Application;

    move-result-object v24

    if-eqz v24, :cond_0

    .line 73
    invoke-static {}, Lc8/Oyb;->getApplication()Landroid/app/Application;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 76
    :cond_0
    const/4 v12, 0x0

    .line 77
    .local v12, "lHostPackageImei":Ljava/lang/String;
    const/4 v13, 0x0

    .line 78
    .local v13, "lHostPackageImsi":Ljava/lang/String;
    invoke-static {v7}, Lc8/hAb;->getDevice(Landroid/content/Context;)Lc8/iAb;

    move-result-object v8

    .line 79
    .local v8, "device":Lc8/iAb;
    if-eqz v8, :cond_1

    .line 80
    invoke-virtual {v8}, Lc8/iAb;->getImei()Ljava/lang/String;

    move-result-object v12

    .line 81
    invoke-virtual {v8}, Lc8/iAb;->getImsi()Ljava/lang/String;

    move-result-object v13

    .line 84
    :cond_1
    if-eqz v12, :cond_2

    if-eqz v13, :cond_2

    .line 85
    sget-object v24, Lcom/alibaba/analytics/core/model/LogField;->IMEI:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual/range {v24 .. v24}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    if-nez v24, :cond_2

    sget-object v24, Lcom/alibaba/analytics/core/model/LogField;->IMSI:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual/range {v24 .. v24}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    if-nez v24, :cond_2

    .line 86
    sget-object v24, Lcom/alibaba/analytics/core/model/LogField;->IMEI:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual/range {v24 .. v24}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v24, Lcom/alibaba/analytics/core/model/LogField;->IMSI:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual/range {v24 .. v24}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :cond_2
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lc8/uzb;->getUsernick()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_3

    .line 92
    sget-object v24, Lcom/alibaba/analytics/core/model/LogField;->USERNICK:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual/range {v24 .. v24}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lc8/uzb;->getUsernick()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :cond_3
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lc8/uzb;->getLongLoginUsernick()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_4

    .line 96
    sget-object v24, Lcom/alibaba/analytics/core/model/LogField;->LL_USERNICK:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual/range {v24 .. v24}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lc8/uzb;->getLongLoginUsernick()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_4
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lc8/uzb;->getUserid()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_5

    .line 99
    sget-object v24, Lcom/alibaba/analytics/core/model/LogField;->USERID:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual/range {v24 .. v24}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lc8/uzb;->getUserid()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_5
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lc8/uzb;->getLongLoingUserid()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_6

    .line 103
    sget-object v24, Lcom/alibaba/analytics/core/model/LogField;->LL_USERID:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual/range {v24 .. v24}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lc8/uzb;->getLongLoingUserid()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :cond_6
    sget-object v24, Lcom/alibaba/analytics/core/model/LogField;->SDKVERSION:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual/range {v24 .. v24}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_7

    .line 107
    sget-object v24, Lcom/alibaba/analytics/core/model/LogField;->SDKVERSION:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual/range {v24 .. v24}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static {}, Lc8/jCb;->getInstance()Lc8/jCb;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lc8/jCb;->getFullSDKVersion()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :cond_7
    sget-object v24, Lcom/alibaba/analytics/core/model/LogField;->APPKEY:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual/range {v24 .. v24}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_8

    .line 111
    sget-object v24, Lcom/alibaba/analytics/core/model/LogField;->APPKEY:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual/range {v24 .. v24}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lc8/uzb;->getAppkey()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    :cond_8
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lc8/uzb;->getChannel()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_9

    .line 115
    sget-object v24, Lcom/alibaba/analytics/core/model/LogField;->CHANNEL:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual/range {v24 .. v24}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lc8/uzb;->getChannel()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :cond_9
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lc8/uzb;->getAppVersion()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_a

    .line 119
    sget-object v24, Lcom/alibaba/analytics/core/model/LogField;->APPVERSION:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual/range {v24 .. v24}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lc8/uzb;->getAppVersion()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_a
    sget-object v24, Lcom/alibaba/analytics/core/model/LogField;->RECORD_TIMESTAMP:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual/range {v24 .. v24}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_b

    .line 123
    sget-object v24, Lcom/alibaba/analytics/core/model/LogField;->RECORD_TIMESTAMP:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual/range {v24 .. v24}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, ""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-static {}, Lc8/sAb;->getInstance()Lc8/sAb;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lc8/sAb;->getCurrentMils()J

    move-result-wide v26

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :cond_b
    sget-object v24, Lcom/alibaba/analytics/core/model/LogField;->START_SESSION_TIMESTAMP:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual/range {v24 .. v24}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_c

    .line 127
    sget-object v24, Lcom/alibaba/analytics/core/model/LogField;->START_SESSION_TIMESTAMP:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual/range {v24 .. v24}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, ""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-static {}, Lc8/qAb;->getInstance()Lc8/qAb;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lc8/qAb;->getSessionTimestamp()J

    move-result-wide v26

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :cond_c
    sget-object v24, Lcom/alibaba/analytics/core/model/LogField;->SDKTYPE:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual/range {v24 .. v24}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_d

    .line 131
    sget-object v24, Lcom/alibaba/analytics/core/model/LogField;->SDKTYPE:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual/range {v24 .. v24}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static {}, Lc8/szb;->getSdkType()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    :cond_d
    invoke-static {v7}, Lc8/fCb;->getDeviceInfo(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v11

    .line 135
    .local v11, "lDeviceInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v11, :cond_2b

    .line 142
    move-object/from16 v14, p0

    .local v14, "lLogMapNew":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lc8/mAb;->mergeLogMapAndDeviceInfoMap(Ljava/util/Map;Ljava/util/Map;)V

    .line 144
    sget-object v24, Lcom/alibaba/analytics/core/model/UTMCLogFields;->ALIYUN_PLATFORM_FLAG:Lcom/alibaba/analytics/core/model/UTMCLogFields;

    invoke-virtual/range {v24 .. v24}, Lcom/alibaba/analytics/core/model/UTMCLogFields;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_e

    .line 145
    sget-object v24, Lcom/alibaba/analytics/core/model/LogField;->OS:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual/range {v24 .. v24}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v24

    const-string/jumbo v25, "y"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    :cond_e
    sget-object v24, Lcom/alibaba/analytics/core/model/LogField;->RESERVES:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual/range {v24 .. v24}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 150
    .local v17, "lReserves":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_1b

    .line 151
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    .local v16, "lRerservesBuilder":Ljava/lang/StringBuilder;
    :goto_0
    sget-object v24, Lc8/mAb;->s_mac_str:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_f

    if-eqz v7, :cond_f

    .line 159
    :try_start_0
    const-string/jumbo v24, "android.permission.ACCESS_WIFI_STATE"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v15

    .line 161
    .local v15, "lPermission":I
    if-nez v15, :cond_f

    .line 162
    invoke-static {v7}, Lc8/yAb;->getWifiAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v24

    sput-object v24, Lc8/mAb;->s_mac_str:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .end local v15    # "lPermission":I
    :cond_f
    :goto_1
    sget-object v24, Lc8/mAb;->s_mac_str:Ljava/lang/String;

    if-eqz v24, :cond_10

    .line 170
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v24

    if-lez v24, :cond_1c

    .line 171
    const-string/jumbo v24, ",_mac="

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget-object v25, Lc8/mAb;->s_mac_str:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    :goto_2
    const-string/jumbo v24, "_mac"

    move-object/from16 v0, v24

    invoke-interface {v14, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    :cond_10
    sget-object v24, Lcom/alibaba/analytics/core/model/UTMCLogFields;->DEVICE_ID:Lcom/alibaba/analytics/core/model/UTMCLogFields;

    invoke-virtual/range {v24 .. v24}, Lcom/alibaba/analytics/core/model/UTMCLogFields;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 179
    .local v10, "lDeviceId":Ljava/lang/String;
    if-eqz v10, :cond_11

    .line 180
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v24

    if-lez v24, :cond_1d

    .line 181
    const-string/jumbo v24, ",_did="

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    :goto_3
    sget-object v24, Lcom/alibaba/analytics/core/model/UTMCLogFields;->DEVICE_ID:Lcom/alibaba/analytics/core/model/UTMCLogFields;

    invoke-virtual/range {v24 .. v24}, Lcom/alibaba/analytics/core/model/UTMCLogFields;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-interface {v14, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    :cond_11
    invoke-static {v7}, Lc8/nAb;->getSecurityToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v23

    .line 189
    .local v23, "umidStr":Ljava/lang/String;
    if-eqz v23, :cond_13

    .line 190
    sget-object v24, Lcom/alibaba/analytics/core/model/LogField;->UTDID:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual/range {v24 .. v24}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-interface {v14, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_12

    .line 191
    sget-object v24, Lcom/alibaba/analytics/core/model/LogField;->UTDID:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual/range {v24 .. v24}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_12

    .line 192
    const-string/jumbo v23, "utdid"

    .line 195
    :cond_12
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v24

    if-lez v24, :cond_1e

    .line 196
    const-string/jumbo v24, ",_umid="

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    :cond_13
    :goto_4
    sget-object v24, Lc8/mAb;->s_bssid:Ljava/lang/String;

    if-nez v24, :cond_14

    .line 203
    invoke-static {v7}, Lc8/mAb;->getBssID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 204
    .local v4, "bssID":Ljava/lang/String;
    if-nez v4, :cond_1f

    .line 205
    const-string/jumbo v24, ""

    sput-object v24, Lc8/mAb;->s_bssid:Ljava/lang/String;

    .line 211
    .end local v4    # "bssID":Ljava/lang/String;
    :cond_14
    :goto_5
    sget-object v24, Lc8/mAb;->s_bssid:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_15

    .line 212
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v24

    if-lez v24, :cond_20

    .line 213
    const-string/jumbo v24, ",_bssid="

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget-object v25, Lc8/mAb;->s_bssid:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    :cond_15
    :goto_6
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lc8/uzb;->isOldDevice()Z

    move-result v24

    if-eqz v24, :cond_16

    .line 220
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v24

    if-lez v24, :cond_21

    .line 221
    const-string/jumbo v24, ",_io="

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "1"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    :cond_16
    :goto_7
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lc8/uzb;->isDebugPackage()Z

    move-result v24

    if-eqz v24, :cond_17

    .line 227
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lc8/uzb;->getPackageBuildId()Ljava/lang/String;

    move-result-object v5

    .line 228
    .local v5, "buildid":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_17

    .line 229
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v24

    if-lez v24, :cond_22

    .line 230
    const-string/jumbo v24, ",_buildid="

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .end local v5    # "buildid":Ljava/lang/String;
    :cond_17
    :goto_8
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v24

    if-lez v24, :cond_24

    .line 238
    const-string/jumbo v24, ",_timeAdjust="

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-static {}, Lc8/sAb;->getInstance()Lc8/sAb;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lc8/sAb;->getAdjustFlag()Z

    move-result v24

    if-eqz v24, :cond_23

    const-string/jumbo v24, "1"

    :goto_9
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    :goto_a
    sget-object v24, Lcom/alibaba/analytics/core/model/LogField;->APPKEY:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual/range {v24 .. v24}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 244
    .local v20, "logAppkey":Ljava/lang/String;
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lc8/uzb;->getAppkey()Ljava/lang/String;

    move-result-object v21

    .line 246
    .local v21, "mainAppkey":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_18

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_18

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_18

    .line 247
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v24

    if-lez v24, :cond_26

    .line 248
    const-string/jumbo v24, ",_mak="

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    :cond_18
    :goto_b
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lc8/uzb;->getContext()Landroid/content/Context;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lc8/fCb;->isPad(Landroid/content/Context;)Z

    move-result v24

    if-eqz v24, :cond_27

    const-string/jumbo v22, "1"

    .line 255
    .local v22, "phoneOrPad":Ljava/lang/String;
    :goto_c
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v24

    if-lez v24, :cond_28

    .line 256
    const-string/jumbo v24, ",_pad="

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    :goto_d
    invoke-static {v7}, Lc8/uBb;->getChannle2ForPreLoadApk(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 262
    .local v6, "channel2":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_19

    .line 263
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v24

    if-lez v24, :cond_29

    .line 264
    const-string/jumbo v24, ",_channel2="

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    :cond_19
    :goto_e
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lc8/uzb;->getSessionProperties()Ljava/util/Map;

    move-result-object v18

    .line 271
    .local v18, "lSessionProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v18, :cond_1a

    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->size()I

    move-result v24

    if-lez v24, :cond_1a

    .line 272
    invoke-static/range {v18 .. v18}, Lc8/aCb;->convertMapToStringWithUrlEncoder(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v19

    .line 273
    .local v19, "lSessionPropertiesStr":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_1a

    .line 274
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v24

    if-lez v24, :cond_2a

    .line 275
    const-string/jumbo v24, ","

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .end local v19    # "lSessionPropertiesStr":Ljava/lang/String;
    :cond_1a
    :goto_f
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 282
    sget-object v24, Lcom/alibaba/analytics/core/model/LogField;->RESERVES:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual/range {v24 .. v24}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    invoke-static {v14}, Lc8/mAb;->assembleWithFullFields(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v24

    .line 286
    .end local v6    # "channel2":Ljava/lang/String;
    .end local v7    # "context":Landroid/content/Context;
    .end local v8    # "device":Lc8/iAb;
    .end local v10    # "lDeviceId":Ljava/lang/String;
    .end local v11    # "lDeviceInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "lHostPackageImei":Ljava/lang/String;
    .end local v13    # "lHostPackageImsi":Ljava/lang/String;
    .end local v14    # "lLogMapNew":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16    # "lRerservesBuilder":Ljava/lang/StringBuilder;
    .end local v17    # "lReserves":Ljava/lang/String;
    .end local v18    # "lSessionProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "logAppkey":Ljava/lang/String;
    .end local v21    # "mainAppkey":Ljava/lang/String;
    .end local v22    # "phoneOrPad":Ljava/lang/String;
    .end local v23    # "umidStr":Ljava/lang/String;
    :goto_10
    return-object v24

    .line 153
    .restart local v7    # "context":Landroid/content/Context;
    .restart local v8    # "device":Lc8/iAb;
    .restart local v11    # "lDeviceInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v12    # "lHostPackageImei":Ljava/lang/String;
    .restart local v13    # "lHostPackageImsi":Ljava/lang/String;
    .restart local v14    # "lLogMapNew":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v17    # "lReserves":Ljava/lang/String;
    :cond_1b
    new-instance v16, Ljava/lang/StringBuilder;

    const/16 v24, 0x64

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .restart local v16    # "lRerservesBuilder":Ljava/lang/StringBuilder;
    goto/16 :goto_0

    .line 164
    :catch_0
    move-exception v9

    .line 165
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 173
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_1c
    const-string/jumbo v24, "_mac="

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget-object v25, Lc8/mAb;->s_mac_str:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 183
    .restart local v10    # "lDeviceId":Ljava/lang/String;
    :cond_1d
    const-string/jumbo v24, "_did="

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 198
    .restart local v23    # "umidStr":Ljava/lang/String;
    :cond_1e
    const-string/jumbo v24, "_umid="

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 207
    .restart local v4    # "bssID":Ljava/lang/String;
    :cond_1f
    sput-object v4, Lc8/mAb;->s_bssid:Ljava/lang/String;

    goto/16 :goto_5

    .line 215
    .end local v4    # "bssID":Ljava/lang/String;
    :cond_20
    const-string/jumbo v24, "_bssid="

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget-object v25, Lc8/mAb;->s_bssid:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 223
    :cond_21
    const-string/jumbo v24, "_io=1"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 232
    .restart local v5    # "buildid":Ljava/lang/String;
    :cond_22
    const-string/jumbo v24, "_buildid="

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 238
    .end local v5    # "buildid":Ljava/lang/String;
    :cond_23
    const-string/jumbo v24, "0"

    goto/16 :goto_9

    .line 240
    :cond_24
    const-string/jumbo v24, "_timeAdjust="

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-static {}, Lc8/sAb;->getInstance()Lc8/sAb;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lc8/sAb;->getAdjustFlag()Z

    move-result v24

    if-eqz v24, :cond_25

    const-string/jumbo v24, "1"

    :goto_11
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    :cond_25
    const-string/jumbo v24, "0"

    goto :goto_11

    .line 250
    .restart local v20    # "logAppkey":Ljava/lang/String;
    .restart local v21    # "mainAppkey":Ljava/lang/String;
    :cond_26
    const-string/jumbo v24, "_mak="

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 254
    :cond_27
    const-string/jumbo v22, "0"

    goto/16 :goto_c

    .line 258
    .restart local v22    # "phoneOrPad":Ljava/lang/String;
    :cond_28
    const-string/jumbo v24, "_pad="

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    .line 266
    .restart local v6    # "channel2":Ljava/lang/String;
    :cond_29
    const-string/jumbo v24, "_channel2="

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_e

    .line 277
    .restart local v18    # "lSessionProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v19    # "lSessionPropertiesStr":Ljava/lang/String;
    :cond_2a
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_f

    .line 286
    .end local v6    # "channel2":Ljava/lang/String;
    .end local v7    # "context":Landroid/content/Context;
    .end local v8    # "device":Lc8/iAb;
    .end local v10    # "lDeviceId":Ljava/lang/String;
    .end local v11    # "lDeviceInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "lHostPackageImei":Ljava/lang/String;
    .end local v13    # "lHostPackageImsi":Ljava/lang/String;
    .end local v14    # "lLogMapNew":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16    # "lRerservesBuilder":Ljava/lang/StringBuilder;
    .end local v17    # "lReserves":Ljava/lang/String;
    .end local v18    # "lSessionProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v19    # "lSessionPropertiesStr":Ljava/lang/String;
    .end local v20    # "logAppkey":Ljava/lang/String;
    .end local v21    # "mainAppkey":Ljava/lang/String;
    .end local v22    # "phoneOrPad":Ljava/lang/String;
    .end local v23    # "umidStr":Ljava/lang/String;
    :cond_2b
    const/16 v24, 0x0

    goto/16 :goto_10
.end method

.method public static assembleWithFullFields(Ljava/util/Map;)Ljava/lang/String;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 290
    .line 293
    .local p0, "aLogMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v7, p0

    .local v7, "lLogMapNew":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static/range {p0 .. p0}, Lc8/lAb;->checkMapFields(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    .line 294
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 295
    .local v9, "lSb":Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/alibaba/analytics/core/model/LogField;->values()[Lcom/alibaba/analytics/core/model/LogField;

    move-result-object v0

    .local v0, "arr$":[Lcom/alibaba/analytics/core/model/LogField;
    array-length v11, v0

    .local v11, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v11, :cond_1

    aget-object v3, v0, v1

    .line 296
    .local v3, "lEnumKey":Lcom/alibaba/analytics/core/model/LogField;
    sget-object v12, Lcom/alibaba/analytics/core/model/LogField;->ARGS:Lcom/alibaba/analytics/core/model/LogField;

    if-eq v3, v12, :cond_1

    .line 299
    const/4 v10, 0x0

    .line 300
    .local v10, "lV":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 301
    invoke-virtual {v3}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Lc8/aCb;->convertObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 302
    invoke-virtual {v3}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    :cond_0
    invoke-static {v10}, Lc8/mAb;->checkField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string/jumbo v13, "||"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 295
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 307
    .end local v3    # "lEnumKey":Lcom/alibaba/analytics/core/model/LogField;
    .end local v10    # "lV":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x1

    .line 308
    .local v4, "lIsFirstArgFlag":Z
    sget-object v12, Lcom/alibaba/analytics/core/model/LogField;->ARGS:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v12}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 309
    sget-object v12, Lcom/alibaba/analytics/core/model/LogField;->ARGS:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v12}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Lc8/aCb;->convertObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 310
    .local v2, "lArgs":Ljava/lang/String;
    invoke-static {v2}, Lc8/mAb;->checkField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 311
    sget-object v12, Lcom/alibaba/analytics/core/model/LogField;->ARGS:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v12}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    const/4 v4, 0x0

    .line 315
    .end local v2    # "lArgs":Ljava/lang/String;
    :cond_2
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 316
    .local v5, "lItorKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 317
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 318
    .local v6, "lKey":Ljava/lang/String;
    const/4 v10, 0x0

    .line 319
    .restart local v10    # "lV":Ljava/lang/String;
    invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 320
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Lc8/aCb;->convertObjectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 322
    :cond_3
    if-eqz v4, :cond_5

    .line 323
    const-string/jumbo v12, "StackTrace"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 324
    const-string/jumbo v12, "StackTrace=====>"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 328
    :goto_2
    const/4 v4, 0x0

    goto :goto_1

    .line 326
    :cond_4
    invoke-static {v6}, Lc8/mAb;->checkField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string/jumbo v13, "="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 331
    :cond_5
    const-string/jumbo v12, "StackTrace"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 332
    const-string/jumbo v12, ","

    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string/jumbo v13, "StackTrace=====>"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 334
    :cond_6
    const-string/jumbo v12, ","

    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-static {v6}, Lc8/mAb;->checkField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string/jumbo v13, "="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 340
    .end local v6    # "lKey":Ljava/lang/String;
    .end local v10    # "lV":Ljava/lang/String;
    :cond_7
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    const v13, 0xa000

    if-le v12, v13, :cond_a

    .line 341
    const/4 v12, 0x0

    const v13, 0xa000

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 342
    .local v8, "lLogResult":Ljava/lang/String;
    const-string/jumbo v12, ""

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string/jumbo v15, "args len"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->length()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lc8/NBb;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 346
    :goto_3
    invoke-static {v8}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_8

    .line 347
    const-string/jumbo v12, "||"

    invoke-virtual {v8, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 348
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 352
    :cond_8
    invoke-static {}, Lc8/NBb;->isDebug()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 353
    const-string/jumbo v12, ""

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string/jumbo v15, "lLogResult"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    aput-object v8, v13, v14

    invoke-static {v12, v13}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 355
    :cond_9
    return-object v8

    .line 344
    .end local v8    # "lLogResult":Ljava/lang/String;
    :cond_a
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "lLogResult":Ljava/lang/String;
    goto :goto_3
.end method

.method private static checkField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "pField"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-static {p0}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    const-string/jumbo p0, "-"

    .line 38
    .end local p0    # "pField":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private static copyIfLogMapDoesNotExist(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .param p0, "aKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "aLogMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "aDeviceInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :cond_0
    return-void
.end method

.method public static disassemble(Ljava/lang/String;)Ljava/util/Map;
    .locals 9
    .param p0, "pLogContent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 359
    invoke-static {p0}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 360
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 361
    .local v2, "lDResult":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v7, 0x22

    invoke-static {p0, v7}, Lc8/mAb;->getLSplitResult(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 362
    .local v5, "lSplitResult":[Ljava/lang/String;
    if-eqz v5, :cond_2

    array-length v7, v5

    if-lez v7, :cond_2

    .line 363
    const/4 v4, 0x0

    .line 364
    .local v4, "lLIndex":I
    invoke-static {}, Lcom/alibaba/analytics/core/model/LogField;->values()[Lcom/alibaba/analytics/core/model/LogField;

    move-result-object v0

    .local v0, "arr$":[Lcom/alibaba/analytics/core/model/LogField;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v6, :cond_2

    aget-object v3, v0, v1

    .line 365
    .local v3, "lEnumKey":Lcom/alibaba/analytics/core/model/LogField;
    array-length v7, v5

    if-ge v4, v7, :cond_0

    aget-object v7, v5, v4

    if-eqz v7, :cond_0

    .line 366
    invoke-virtual {v3}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v7

    aget-object v8, v5, v4

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 364
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 373
    .end local v0    # "arr$":[Lcom/alibaba/analytics/core/model/LogField;
    .end local v1    # "i$":I
    .end local v2    # "lDResult":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "lEnumKey":Lcom/alibaba/analytics/core/model/LogField;
    .end local v4    # "lLIndex":I
    .end local v5    # "lSplitResult":[Ljava/lang/String;
    .end local v6    # "len$":I
    :cond_1
    const/4 v2, 0x0

    :cond_2
    return-object v2
.end method

.method private static getBssID(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "aContext"    # Landroid/content/Context;

    .prologue
    .line 395
    :try_start_0
    const-string/jumbo v2, "wifi"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 396
    .local v1, "wifi":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 397
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 399
    .end local v0    # "info":Landroid/net/wifi/WifiInfo;
    .end local v1    # "wifi":Landroid/net/wifi/WifiManager;
    :goto_0
    return-object v2

    :catch_0
    move-exception v2

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getEventId(Ljava/util/Map;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 407
    .local p0, "lLogMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 409
    .local v1, "eventId":I
    :try_start_0
    sget-object v2, Lcom/alibaba/analytics/core/model/LogField;->EVENTID:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v2}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 413
    :goto_0
    return v1

    .line 410
    :catch_0
    move-exception v0

    .line 411
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static getLSplitResult(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 6
    .param p0, "aLogContent"    # Ljava/lang/String;
    .param p1, "aSplitNumber"    # I

    .prologue
    .line 377
    new-array v3, p1, [Ljava/lang/String;

    .line 378
    .local v3, "result":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 379
    .local v2, "lastIndexPos":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_0

    .line 380
    const-string/jumbo v4, "||"

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 381
    .local v0, "findIndexPos":I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    .line 382
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 389
    .end local v0    # "findIndexPos":I
    :cond_0
    add-int/lit8 v4, p1, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 390
    return-object v3

    .line 385
    .restart local v0    # "findIndexPos":I
    :cond_1
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 387
    add-int/lit8 v2, v0, 0x2

    .line 379
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static mergeLogMapAndDeviceInfoMap(Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "aLogMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p1, "aDeviceInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/alibaba/analytics/core/model/LogField;->BRAND:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alibaba/analytics/core/model/LogField;->BRAND:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v1}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/alibaba/analytics/core/model/LogField;->DEVICE_MODEL:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alibaba/analytics/core/model/LogField;->DEVICE_MODEL:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v1}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/alibaba/analytics/core/model/LogField;->RESOLUTION:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alibaba/analytics/core/model/LogField;->RESOLUTION:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v1}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/alibaba/analytics/core/model/LogField;->OS:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alibaba/analytics/core/model/LogField;->OS:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v1}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/alibaba/analytics/core/model/LogField;->OSVERSION:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alibaba/analytics/core/model/LogField;->OSVERSION:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v1}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/alibaba/analytics/core/model/LogField;->UTDID:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alibaba/analytics/core/model/LogField;->UTDID:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v1}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/alibaba/analytics/core/model/LogField;->IMEI:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lc8/mAb;->copyIfLogMapDoesNotExist(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 59
    sget-object v0, Lcom/alibaba/analytics/core/model/LogField;->IMSI:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lc8/mAb;->copyIfLogMapDoesNotExist(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 60
    sget-object v0, Lcom/alibaba/analytics/core/model/LogField;->APPVERSION:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lc8/mAb;->copyIfLogMapDoesNotExist(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 61
    sget-object v0, Lcom/alibaba/analytics/core/model/UTMCLogFields;->DEVICE_ID:Lcom/alibaba/analytics/core/model/UTMCLogFields;

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/model/UTMCLogFields;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lc8/mAb;->copyIfLogMapDoesNotExist(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 62
    sget-object v0, Lcom/alibaba/analytics/core/model/LogField;->LANGUAGE:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lc8/mAb;->copyIfLogMapDoesNotExist(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 63
    sget-object v0, Lcom/alibaba/analytics/core/model/LogField;->ACCESS:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lc8/mAb;->copyIfLogMapDoesNotExist(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 64
    sget-object v0, Lcom/alibaba/analytics/core/model/LogField;->ACCESS_SUBTYPE:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lc8/mAb;->copyIfLogMapDoesNotExist(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 65
    sget-object v0, Lcom/alibaba/analytics/core/model/LogField;->CARRIER:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lc8/mAb;->copyIfLogMapDoesNotExist(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 66
    return-void
.end method
