.class public Lcom/taobao/accs/data/Message;
.super Ljava/lang/Object;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/accs/data/Message$MsgResType;,
        Lcom/taobao/accs/data/Message$ReqType;,
        Lcom/taobao/accs/data/Message$MsgType;
    }
.end annotation


# static fields
.field public static CONTROL_MAX_RETRY_TIMES:I = 0x0

.field public static final EXT_HEADER_VALUE_MAX_LEN:I = 0x3ff

.field public static final FLAG_ACK_TYPE:I = 0x20

.field public static final FLAG_BIZ_RET:I = 0x40

.field public static final FLAG_DATA_TYPE:I = 0x8000

.field public static final FLAG_ERR:I = 0x1000

.field public static final FLAG_REQ_BIT1:I = 0x4000

.field public static final FLAG_REQ_BIT2:I = 0x2000

.field public static final FLAG_RET:I = 0x800

.field public static final KEY_BINDAPP:Ljava/lang/String; = "ctrl_bindapp"

.field public static final KEY_BINDSERVICE:Ljava/lang/String; = "ctrl_bindservice"

.field public static final KEY_BINDUSER:Ljava/lang/String; = "ctrl_binduser"

.field public static final KEY_UNBINDAPP:Ljava/lang/String; = "ctrl_unbindapp"

.field public static final KEY_UNBINDSERVICE:Ljava/lang/String; = "ctrl_unbindservice"

.field public static final KEY_UNBINDUSER:Ljava/lang/String; = "ctrl_unbinduser"

.field public static final MAX_RETRY_TIMES:I = 0x3

.field private static final TAG:Ljava/lang/String; = "Msg_"

.field static baseMessageId:J


# instance fields
.field appKey:Ljava/lang/String;

.field public appSign:Ljava/lang/String;

.field appVersion:Ljava/lang/String;

.field public bizId:Ljava/lang/String;

.field brand:Ljava/lang/String;

.field public command:Ljava/lang/Integer;

.field compress:B

.field public cunstomDataId:Ljava/lang/String;

.field data:[B

.field public dataId:Ljava/lang/String;

.field dataLength:S

.field public delyTime:J

.field extHeader:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field extHeaderLength:S

.field exts:Ljava/lang/String;

.field flags:S

.field public force:Z

.field public host:Ljava/net/URL;

.field imei:Ljava/lang/String;

.field imsi:Ljava/lang/String;

.field public isAck:Z

.field public isCancel:Z

.field macAddress:Ljava/lang/String;

.field model:Ljava/lang/String;

.field transient netPerformanceMonitor:Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

.field noUse:B

.field node:I

.field notifyEnable:Ljava/lang/String;

.field osType:Ljava/lang/Integer;

.field osVersion:Ljava/lang/String;

.field packageName:Ljava/lang/String;

.field public retryTimes:I

.field sdkVersion:Ljava/lang/Integer;

.field sendTime:J

.field public serviceId:Ljava/lang/String;

.field source:Ljava/lang/String;

.field sourceLength:B

.field public startSendTime:J

.field tag:Ljava/lang/String;

.field target:Ljava/lang/String;

.field targetLength:B

.field public timeout:I

.field totalLength:S

.field ttid:Ljava/lang/String;

.field type:I

.field updateDevice:Ljava/lang/Integer;

.field public userinfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 133
    const/4 v0, 0x5

    sput v0, Lcom/taobao/accs/data/Message;->CONTROL_MAX_RETRY_TIMES:I

    .line 142
    const-wide/16 v0, 0x1

    sput-wide v0, Lcom/taobao/accs/data/Message;->baseMessageId:J

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-boolean v3, p0, Lcom/taobao/accs/data/Message;->isAck:Z

    .line 146
    iput-boolean v3, p0, Lcom/taobao/accs/data/Message;->force:Z

    .line 148
    iput-boolean v3, p0, Lcom/taobao/accs/data/Message;->isCancel:Z

    .line 152
    iput-byte v3, p0, Lcom/taobao/accs/data/Message;->compress:B

    .line 154
    iput-byte v3, p0, Lcom/taobao/accs/data/Message;->noUse:B

    .line 172
    const/4 v0, -0x1

    iput v0, p0, Lcom/taobao/accs/data/Message;->type:I

    .line 179
    iput-object v2, p0, Lcom/taobao/accs/data/Message;->packageName:Ljava/lang/String;

    .line 181
    iput-object v2, p0, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    .line 183
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/data/Message;->updateDevice:Ljava/lang/Integer;

    .line 185
    iput-object v2, p0, Lcom/taobao/accs/data/Message;->appKey:Ljava/lang/String;

    .line 187
    iput-object v2, p0, Lcom/taobao/accs/data/Message;->appSign:Ljava/lang/String;

    .line 189
    iput-object v2, p0, Lcom/taobao/accs/data/Message;->osType:Ljava/lang/Integer;

    .line 191
    iput-object v2, p0, Lcom/taobao/accs/data/Message;->osVersion:Ljava/lang/String;

    .line 193
    iput-object v2, p0, Lcom/taobao/accs/data/Message;->exts:Ljava/lang/String;

    .line 195
    iput-object v2, p0, Lcom/taobao/accs/data/Message;->appVersion:Ljava/lang/String;

    .line 197
    iput-object v2, p0, Lcom/taobao/accs/data/Message;->sdkVersion:Ljava/lang/Integer;

    .line 199
    iput-object v2, p0, Lcom/taobao/accs/data/Message;->ttid:Ljava/lang/String;

    .line 201
    iput-object v2, p0, Lcom/taobao/accs/data/Message;->macAddress:Ljava/lang/String;

    .line 203
    iput-object v2, p0, Lcom/taobao/accs/data/Message;->userinfo:Ljava/lang/String;

    .line 205
    iput-object v2, p0, Lcom/taobao/accs/data/Message;->serviceId:Ljava/lang/String;

    .line 207
    iput-object v2, p0, Lcom/taobao/accs/data/Message;->model:Ljava/lang/String;

    .line 209
    iput-object v2, p0, Lcom/taobao/accs/data/Message;->brand:Ljava/lang/String;

    .line 211
    iput-object v2, p0, Lcom/taobao/accs/data/Message;->imei:Ljava/lang/String;

    .line 213
    iput-object v2, p0, Lcom/taobao/accs/data/Message;->imsi:Ljava/lang/String;

    .line 215
    iput-object v2, p0, Lcom/taobao/accs/data/Message;->notifyEnable:Ljava/lang/String;

    .line 223
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/taobao/accs/data/Message;->delyTime:J

    .line 225
    iput v3, p0, Lcom/taobao/accs/data/Message;->retryTimes:I

    .line 227
    const v0, 0x9c40

    iput v0, p0, Lcom/taobao/accs/data/Message;->timeout:I

    .line 231
    iput-object v2, p0, Lcom/taobao/accs/data/Message;->bizId:Ljava/lang/String;

    .line 237
    iput-object v2, p0, Lcom/taobao/accs/data/Message;->tag:Ljava/lang/String;

    .line 241
    const-class v1, Lcom/taobao/accs/data/Message;

    monitor-enter v1

    .line 242
    :try_start_0
    sget-wide v2, Lcom/taobao/accs/data/Message;->baseMessageId:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    sput-wide v4, Lcom/taobao/accs/data/Message;->baseMessageId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/data/Message;->dataId:Ljava/lang/String;

    .line 243
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/data/Message;->startSendTime:J

    .line 245
    return-void

    .line 243
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static BuildPing(ZI)Lcom/taobao/accs/data/Message;
    .locals 4
    .param p0, "force"    # Z
    .param p1, "delyTime"    # I

    .prologue
    .line 574
    new-instance v0, Lcom/taobao/accs/data/Message;

    invoke-direct {v0}, Lcom/taobao/accs/data/Message;-><init>()V

    .line 575
    .local v0, "message":Lcom/taobao/accs/data/Message;
    const/4 v1, 0x2

    iput v1, v0, Lcom/taobao/accs/data/Message;->type:I

    .line 576
    const/16 v1, 0xc9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    .line 577
    iput-boolean p0, v0, Lcom/taobao/accs/data/Message;->force:Z

    .line 578
    int-to-long v2, p1

    iput-wide v2, v0, Lcom/taobao/accs/data/Message;->delyTime:J

    .line 579
    return-object v0
.end method

.method public static buildBindApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/data/Message;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "configTag"    # Ljava/lang/String;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "appSecret"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "ttid"    # Ljava/lang/String;
    .param p6, "versionName"    # Ljava/lang/String;
    .param p7, "sid"    # Ljava/lang/String;
    .param p8, "user_id"    # Ljava/lang/String;
    .param p9, "cookie"    # Ljava/lang/String;

    .prologue
    .line 628
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 629
    const/4 v1, 0x0

    .line 662
    :goto_0
    return-object v1

    .line 631
    :cond_0
    new-instance v1, Lcom/taobao/accs/data/Message;

    invoke-direct {v1}, Lcom/taobao/accs/data/Message;-><init>()V

    .line 633
    .local v1, "message":Lcom/taobao/accs/data/Message;
    const/4 v3, 0x1

    :try_start_0
    iput v3, v1, Lcom/taobao/accs/data/Message;->node:I

    .line 634
    const/4 v3, 0x1

    sget-object v4, Lcom/taobao/accs/data/Message$ReqType;->DATA:Lcom/taobao/accs/data/Message$ReqType;

    const/4 v5, 0x1

    invoke-direct {v1, v3, v4, v5}, Lcom/taobao/accs/data/Message;->type(ILcom/taobao/accs/data/Message$ReqType;I)V

    .line 635
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lcom/taobao/accs/data/Message;->osType:Ljava/lang/Integer;

    .line 636
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/taobao/accs/data/Message;->osVersion:Ljava/lang/String;

    .line 637
    iput-object p4, v1, Lcom/taobao/accs/data/Message;->packageName:Ljava/lang/String;

    .line 638
    const-string/jumbo v3, "3|dm|"

    iput-object v3, v1, Lcom/taobao/accs/data/Message;->target:Ljava/lang/String;

    .line 639
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    .line 640
    iput-object p2, v1, Lcom/taobao/accs/data/Message;->appKey:Ljava/lang/String;

    .line 641
    invoke-static {p0}, Lcom/taobao/accs/utl/UtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, p2, p3, v3, p1}, Lcom/taobao/accs/utl/UtilityImpl;->getAppsign(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/taobao/accs/data/Message;->appSign:Ljava/lang/String;

    .line 642
    const/16 v3, 0xdd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lcom/taobao/accs/data/Message;->sdkVersion:Ljava/lang/Integer;

    .line 643
    iput-object p6, v1, Lcom/taobao/accs/data/Message;->appVersion:Ljava/lang/String;

    .line 644
    iput-object p4, v1, Lcom/taobao/accs/data/Message;->packageName:Ljava/lang/String;

    .line 645
    iput-object p5, v1, Lcom/taobao/accs/data/Message;->ttid:Ljava/lang/String;

    .line 646
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v3, v1, Lcom/taobao/accs/data/Message;->model:Ljava/lang/String;

    .line 647
    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v3, v1, Lcom/taobao/accs/data/Message;->brand:Ljava/lang/String;

    .line 648
    const-string/jumbo v3, "ctrl_bindapp"

    iput-object v3, v1, Lcom/taobao/accs/data/Message;->cunstomDataId:Ljava/lang/String;

    .line 649
    iput-object p1, v1, Lcom/taobao/accs/data/Message;->tag:Ljava/lang/String;

    .line 650
    new-instance v3, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;

    invoke-direct {v3}, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;-><init>()V

    const-string/jumbo v4, "notifyEnable"

    invoke-static {p0}, Lcom/taobao/accs/utl/UtilityImpl;->isNotificationEnabled(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;

    move-result-object v3

    const-string/jumbo v4, "romInfo"

    invoke-static {}, Lcom/taobao/accs/utl/RomInfoCollecter;->getCollecter()Lcom/taobao/accs/utl/RomInfoCollecter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/taobao/accs/utl/RomInfoCollecter;->collect()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->build()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/taobao/accs/data/Message;->exts:Ljava/lang/String;

    .line 654
    const-string/jumbo v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 655
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    :goto_1
    iput-object v3, v1, Lcom/taobao/accs/data/Message;->imei:Ljava/lang/String;

    .line 656
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    :goto_2
    iput-object v3, v1, Lcom/taobao/accs/data/Message;->imsi:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 658
    .end local v2    # "tm":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v0

    .line 659
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 655
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 656
    :cond_2
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public static buildBindApp(Lcom/taobao/accs/net/BaseConnection;Landroid/content/Context;Landroid/content/Intent;)Lcom/taobao/accs/data/Message;
    .locals 13
    .param p0, "connection"    # Lcom/taobao/accs/net/BaseConnection;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 593
    const/4 v11, 0x0

    .line 595
    .local v11, "message":Lcom/taobao/accs/data/Message;
    :try_start_0
    const-string/jumbo v0, "packageName"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 597
    .local v4, "packageName":Ljava/lang/String;
    const-string/jumbo v0, "userInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 599
    .local v8, "userId":Ljava/lang/String;
    const-string/jumbo v0, "appKey"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 601
    .local v2, "appkey":Ljava/lang/String;
    const-string/jumbo v0, "ttid"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 602
    .local v5, "ttid":Ljava/lang/String;
    const-string/jumbo v0, "sid"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 603
    .local v7, "sid":Ljava/lang/String;
    const-string/jumbo v0, "anti_brush_cookie"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 604
    .local v9, "cookie":Ljava/lang/String;
    const-string/jumbo v0, "appVersion"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 605
    .local v6, "appversion":Ljava/lang/String;
    const-string/jumbo v0, "app_sercet"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 606
    .local v3, "appSecret":Ljava/lang/String;
    iget-object v1, p0, Lcom/taobao/accs/net/BaseConnection;->mConfigTag:Ljava/lang/String;

    move-object v0, p1

    invoke-static/range {v0 .. v9}, Lcom/taobao/accs/data/Message;->buildBindApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/data/Message;

    move-result-object v11

    .line 619
    invoke-static {p0, p1, v11}, Lcom/taobao/accs/data/Message;->setControlHost(Lcom/taobao/accs/net/BaseConnection;Landroid/content/Context;Lcom/taobao/accs/data/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 624
    .end local v2    # "appkey":Ljava/lang/String;
    .end local v3    # "appSecret":Ljava/lang/String;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "ttid":Ljava/lang/String;
    .end local v6    # "appversion":Ljava/lang/String;
    .end local v7    # "sid":Ljava/lang/String;
    .end local v8    # "userId":Ljava/lang/String;
    .end local v9    # "cookie":Ljava/lang/String;
    :goto_0
    return-object v11

    .line 620
    :catch_0
    move-exception v10

    .line 621
    .local v10, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "Msg_"

    const-string/jumbo v1, "buildBindApp"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v0, v1, v10, v12}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 622
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static buildBindService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/data/Message;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "serviceId"    # Ljava/lang/String;
    .param p4, "sid"    # Ljava/lang/String;
    .param p5, "user_id"    # Ljava/lang/String;
    .param p6, "cookie"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 742
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 743
    :cond_0
    const/4 v0, 0x0

    .line 758
    :goto_0
    return-object v0

    .line 745
    :cond_1
    new-instance v0, Lcom/taobao/accs/data/Message;

    invoke-direct {v0}, Lcom/taobao/accs/data/Message;-><init>()V

    .line 746
    .local v0, "message":Lcom/taobao/accs/data/Message;
    iput v2, v0, Lcom/taobao/accs/data/Message;->node:I

    .line 747
    sget-object v1, Lcom/taobao/accs/data/Message$ReqType;->DATA:Lcom/taobao/accs/data/Message$ReqType;

    invoke-direct {v0, v2, v1, v2}, Lcom/taobao/accs/data/Message;->type(ILcom/taobao/accs/data/Message$ReqType;I)V

    .line 748
    iput-object p1, v0, Lcom/taobao/accs/data/Message;->packageName:Ljava/lang/String;

    .line 749
    iput-object p3, v0, Lcom/taobao/accs/data/Message;->serviceId:Ljava/lang/String;

    .line 750
    const-string/jumbo v1, "3|dm|"

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->target:Ljava/lang/String;

    .line 751
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    .line 752
    iput-object p1, v0, Lcom/taobao/accs/data/Message;->packageName:Ljava/lang/String;

    .line 754
    iput-object p3, v0, Lcom/taobao/accs/data/Message;->serviceId:Ljava/lang/String;

    .line 755
    const/16 v1, 0xdd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->sdkVersion:Ljava/lang/Integer;

    .line 756
    const-string/jumbo v1, "ctrl_bindservice"

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->cunstomDataId:Ljava/lang/String;

    goto :goto_0
.end method

.method public static buildBindService(Lcom/taobao/accs/net/BaseConnection;Landroid/content/Context;Landroid/content/Intent;)Lcom/taobao/accs/data/Message;
    .locals 11
    .param p0, "connection"    # Lcom/taobao/accs/net/BaseConnection;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 716
    const/4 v8, 0x0

    .line 718
    .local v8, "message":Lcom/taobao/accs/data/Message;
    :try_start_0
    const-string/jumbo v0, "packageName"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 720
    .local v1, "packageName":Ljava/lang/String;
    const-string/jumbo v0, "serviceId"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 722
    .local v3, "serviceId":Ljava/lang/String;
    const-string/jumbo v0, "userInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 724
    .local v5, "userId":Ljava/lang/String;
    const-string/jumbo v0, "appKey"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 726
    .local v2, "appkey":Ljava/lang/String;
    const-string/jumbo v0, "sid"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 727
    .local v4, "sid":Ljava/lang/String;
    const-string/jumbo v0, "anti_brush_cookie"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "cookie":Ljava/lang/String;
    move-object v0, p1

    .line 728
    invoke-static/range {v0 .. v6}, Lcom/taobao/accs/data/Message;->buildBindService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/data/Message;

    move-result-object v8

    .line 730
    iget-object v0, p0, Lcom/taobao/accs/net/BaseConnection;->mConfigTag:Ljava/lang/String;

    iput-object v0, v8, Lcom/taobao/accs/data/Message;->tag:Ljava/lang/String;

    .line 733
    invoke-static {p0, p1, v8}, Lcom/taobao/accs/data/Message;->setControlHost(Lcom/taobao/accs/net/BaseConnection;Landroid/content/Context;Lcom/taobao/accs/data/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 738
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "appkey":Ljava/lang/String;
    .end local v3    # "serviceId":Ljava/lang/String;
    .end local v4    # "sid":Ljava/lang/String;
    .end local v5    # "userId":Ljava/lang/String;
    .end local v6    # "cookie":Ljava/lang/String;
    :goto_0
    return-object v8

    .line 734
    :catch_0
    move-exception v7

    .line 735
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "Msg_"

    const-string/jumbo v9, "buildBindService"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v0, v9, v7, v10}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 736
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static buildBindUser(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/data/Message;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "sid"    # Ljava/lang/String;
    .param p4, "userId"    # Ljava/lang/String;
    .param p5, "cookie"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 834
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 835
    :cond_0
    const/4 v0, 0x0

    .line 850
    :goto_0
    return-object v0

    .line 837
    :cond_1
    new-instance v0, Lcom/taobao/accs/data/Message;

    invoke-direct {v0}, Lcom/taobao/accs/data/Message;-><init>()V

    .line 838
    .local v0, "message":Lcom/taobao/accs/data/Message;
    iput v2, v0, Lcom/taobao/accs/data/Message;->node:I

    .line 839
    sget-object v1, Lcom/taobao/accs/data/Message$ReqType;->DATA:Lcom/taobao/accs/data/Message$ReqType;

    invoke-direct {v0, v2, v1, v2}, Lcom/taobao/accs/data/Message;->type(ILcom/taobao/accs/data/Message$ReqType;I)V

    .line 840
    iput-object p1, v0, Lcom/taobao/accs/data/Message;->packageName:Ljava/lang/String;

    .line 842
    iput-object p4, v0, Lcom/taobao/accs/data/Message;->userinfo:Ljava/lang/String;

    .line 843
    const-string/jumbo v1, "3|dm|"

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->target:Ljava/lang/String;

    .line 844
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    .line 845
    iput-object p1, v0, Lcom/taobao/accs/data/Message;->packageName:Ljava/lang/String;

    .line 846
    iput-object p4, v0, Lcom/taobao/accs/data/Message;->userinfo:Ljava/lang/String;

    .line 847
    const/16 v1, 0xdd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->sdkVersion:Ljava/lang/Integer;

    .line 848
    const-string/jumbo v1, "ctrl_binduser"

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->cunstomDataId:Ljava/lang/String;

    goto :goto_0
.end method

.method public static buildBindUser(Lcom/taobao/accs/net/BaseConnection;Landroid/content/Context;Landroid/content/Intent;)Lcom/taobao/accs/data/Message;
    .locals 10
    .param p0, "connection"    # Lcom/taobao/accs/net/BaseConnection;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 810
    const/4 v7, 0x0

    .line 812
    .local v7, "message":Lcom/taobao/accs/data/Message;
    :try_start_0
    const-string/jumbo v0, "packageName"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 814
    .local v1, "packageName":Ljava/lang/String;
    const-string/jumbo v0, "userInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 816
    .local v4, "userId":Ljava/lang/String;
    const-string/jumbo v0, "appKey"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 818
    .local v2, "appkey":Ljava/lang/String;
    const-string/jumbo v0, "sid"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 819
    .local v3, "sid":Ljava/lang/String;
    const-string/jumbo v0, "anti_brush_cookie"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "cookie":Ljava/lang/String;
    move-object v0, p1

    .line 820
    invoke-static/range {v0 .. v5}, Lcom/taobao/accs/data/Message;->buildBindUser(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/data/Message;

    move-result-object v7

    .line 822
    iget-object v0, p0, Lcom/taobao/accs/net/BaseConnection;->mConfigTag:Ljava/lang/String;

    iput-object v0, v7, Lcom/taobao/accs/data/Message;->tag:Ljava/lang/String;

    .line 825
    invoke-static {p0, p1, v7}, Lcom/taobao/accs/data/Message;->setControlHost(Lcom/taobao/accs/net/BaseConnection;Landroid/content/Context;Lcom/taobao/accs/data/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 830
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "appkey":Ljava/lang/String;
    .end local v3    # "sid":Ljava/lang/String;
    .end local v4    # "userId":Ljava/lang/String;
    .end local v5    # "cookie":Ljava/lang/String;
    :goto_0
    return-object v7

    .line 826
    :catch_0
    move-exception v6

    .line 827
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "Msg_"

    const-string/jumbo v8, "buildBindUser"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v0, v8, v6, v9}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 828
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static buildElection(Ljava/lang/String;Ljava/util/Map;)Lcom/taobao/accs/data/Message;
    .locals 9
    .param p0, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/taobao/accs/data/Message;"
        }
    .end annotation

    .prologue
    .line 896
    .local p1, "electionPkgs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez p1, :cond_0

    .line 897
    const/4 v4, 0x0

    .line 920
    :goto_0
    return-object v4

    .line 899
    :cond_0
    new-instance v4, Lcom/taobao/accs/data/Message;

    invoke-direct {v4}, Lcom/taobao/accs/data/Message;-><init>()V

    .line 901
    .local v4, "message":Lcom/taobao/accs/data/Message;
    const/4 v6, 0x1

    :try_start_0
    sget-object v7, Lcom/taobao/accs/data/Message$ReqType;->DATA:Lcom/taobao/accs/data/Message$ReqType;

    const/4 v8, 0x1

    invoke-direct {v4, v6, v7, v8}, Lcom/taobao/accs/data/Message;->type(ILcom/taobao/accs/data/Message$ReqType;I)V

    .line 902
    const/4 v6, 0x1

    iput v6, v4, Lcom/taobao/accs/data/Message;->node:I

    .line 903
    iput-object p0, v4, Lcom/taobao/accs/data/Message;->packageName:Ljava/lang/String;

    .line 904
    const-string/jumbo v6, "4|sal|el"

    iput-object v6, v4, Lcom/taobao/accs/data/Message;->target:Ljava/lang/String;

    .line 905
    const/16 v6, 0x69

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v4, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    .line 907
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 908
    .local v2, "jarray":Lorg/json/JSONArray;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 909
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 910
    .local v3, "jobject":Lorg/json/JSONObject;
    const-string/jumbo v6, "pkg"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 911
    const-string/jumbo v6, "sdkv"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 912
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 917
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "jarray":Lorg/json/JSONArray;
    .end local v3    # "jobject":Lorg/json/JSONObject;
    :catch_0
    move-exception v5

    .line 918
    .local v5, "t":Ljava/lang/Throwable;
    const-string/jumbo v6, "Msg_"

    const-string/jumbo v7, "buildElection"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v5, v8}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 914
    .end local v5    # "t":Ljava/lang/Throwable;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "jarray":Lorg/json/JSONArray;
    :cond_1
    :try_start_1
    new-instance v6, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;

    invoke-direct {v6}, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;-><init>()V

    const-string/jumbo v7, "sdkv"

    const/16 v8, 0xdd

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;

    move-result-object v6

    const-string/jumbo v7, "packs"

    invoke-virtual {v6, v7, v2}, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->put(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->build()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "utf-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    iput-object v6, v4, Lcom/taobao/accs/data/Message;->data:[B
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static buildHandshake(Ljava/lang/String;)Lcom/taobao/accs/data/Message;
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 583
    new-instance v0, Lcom/taobao/accs/data/Message;

    invoke-direct {v0}, Lcom/taobao/accs/data/Message;-><init>()V

    .line 584
    .local v0, "message":Lcom/taobao/accs/data/Message;
    const/4 v1, 0x3

    sget-object v2, Lcom/taobao/accs/data/Message$ReqType;->DATA:Lcom/taobao/accs/data/Message$ReqType;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/taobao/accs/data/Message;->type(ILcom/taobao/accs/data/Message$ReqType;I)V

    .line 585
    iput-object p0, v0, Lcom/taobao/accs/data/Message;->packageName:Ljava/lang/String;

    .line 586
    const-string/jumbo v1, "3|dm|"

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->target:Ljava/lang/String;

    .line 587
    const/16 v1, 0xc8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    .line 588
    return-object v0
.end method

.method public static buildParameterError(Ljava/lang/String;I)Lcom/taobao/accs/data/Message;
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "command"    # I

    .prologue
    .line 1137
    new-instance v0, Lcom/taobao/accs/data/Message;

    invoke-direct {v0}, Lcom/taobao/accs/data/Message;-><init>()V

    .line 1138
    .local v0, "message":Lcom/taobao/accs/data/Message;
    const/4 v1, 0x1

    sget-object v2, Lcom/taobao/accs/data/Message$ReqType;->ACK:Lcom/taobao/accs/data/Message$ReqType;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/taobao/accs/data/Message;->type(ILcom/taobao/accs/data/Message$ReqType;I)V

    .line 1139
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    .line 1140
    iput-object p0, v0, Lcom/taobao/accs/data/Message;->packageName:Ljava/lang/String;

    .line 1141
    return-object v0
.end method

.method public static buildPushAck(Lcom/taobao/accs/net/BaseConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZSLjava/lang/String;Ljava/util/Map;)Lcom/taobao/accs/data/Message;
    .locals 7
    .param p0, "connection"    # Lcom/taobao/accs/net/BaseConnection;
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "dataId"    # Ljava/lang/String;
    .param p4, "businessAck"    # Z
    .param p5, "flags"    # S
    .param p6, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/accs/net/BaseConnection;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZS",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/taobao/accs/data/Message;"
        }
    .end annotation

    .prologue
    .local p7, "extHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v3, 0x1

    .line 1104
    new-instance v1, Lcom/taobao/accs/data/Message;

    invoke-direct {v1}, Lcom/taobao/accs/data/Message;-><init>()V

    .line 1105
    .local v1, "message":Lcom/taobao/accs/data/Message;
    iput v3, v1, Lcom/taobao/accs/data/Message;->node:I

    .line 1107
    invoke-direct {v1, p5, p4}, Lcom/taobao/accs/data/Message;->setPushAckFlag(SZ)V

    .line 1108
    iput-object p1, v1, Lcom/taobao/accs/data/Message;->source:Ljava/lang/String;

    .line 1109
    iput-object p2, v1, Lcom/taobao/accs/data/Message;->target:Ljava/lang/String;

    .line 1110
    iput-object p3, v1, Lcom/taobao/accs/data/Message;->dataId:Ljava/lang/String;

    .line 1111
    iput-boolean v3, v1, Lcom/taobao/accs/data/Message;->isAck:Z

    .line 1112
    iput-object p7, v1, Lcom/taobao/accs/data/Message;->extHeader:Ljava/util/Map;

    .line 1114
    :try_start_0
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1115
    new-instance v3, Ljava/net/URL;

    invoke-static {}, Lcom/taobao/accs/client/GlobalClientInfo;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/taobao/accs/net/BaseConnection;->getHost(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v3, v1, Lcom/taobao/accs/data/Message;->host:Ljava/net/URL;

    .line 1120
    :goto_0
    iget-object v3, p0, Lcom/taobao/accs/net/BaseConnection;->mConfigTag:Ljava/lang/String;

    iput-object v3, v1, Lcom/taobao/accs/data/Message;->tag:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1124
    iget-object v3, v1, Lcom/taobao/accs/data/Message;->host:Ljava/net/URL;

    if-nez v3, :cond_0

    .line 1126
    :try_start_1
    new-instance v3, Ljava/net/URL;

    invoke-static {}, Lcom/taobao/accs/client/GlobalClientInfo;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/taobao/accs/net/BaseConnection;->getHost(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v3, v1, Lcom/taobao/accs/data/Message;->host:Ljava/net/URL;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1133
    :cond_0
    :goto_1
    return-object v1

    .line 1118
    :cond_1
    :try_start_2
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v3, v1, Lcom/taobao/accs/data/Message;->host:Ljava/net/URL;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1121
    :catch_0
    move-exception v2

    .line 1122
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_3
    const-string/jumbo v3, "Msg_"

    const-string/jumbo v4, "buildPushAck"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v2, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1124
    iget-object v3, v1, Lcom/taobao/accs/data/Message;->host:Ljava/net/URL;

    if-nez v3, :cond_0

    .line 1126
    :try_start_4
    new-instance v3, Ljava/net/URL;

    invoke-static {}, Lcom/taobao/accs/client/GlobalClientInfo;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/taobao/accs/net/BaseConnection;->getHost(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v3, v1, Lcom/taobao/accs/data/Message;->host:Ljava/net/URL;
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 1128
    :catch_1
    move-exception v0

    .line 1129
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_1

    .line 1128
    .end local v0    # "e":Ljava/net/MalformedURLException;
    .end local v2    # "t":Ljava/lang/Throwable;
    :catch_2
    move-exception v0

    .line 1129
    .restart local v0    # "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_1

    .line 1124
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :catchall_0
    move-exception v3

    iget-object v4, v1, Lcom/taobao/accs/data/Message;->host:Ljava/net/URL;

    if-nez v4, :cond_2

    .line 1126
    :try_start_5
    new-instance v4, Ljava/net/URL;

    invoke-static {}, Lcom/taobao/accs/client/GlobalClientInfo;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/taobao/accs/net/BaseConnection;->getHost(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v4, v1, Lcom/taobao/accs/data/Message;->host:Ljava/net/URL;
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1130
    :cond_2
    :goto_2
    throw v3

    .line 1128
    :catch_3
    move-exception v0

    .line 1129
    .restart local v0    # "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_2
.end method

.method public static buildRequest(Lcom/taobao/accs/net/BaseConnection;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/ACCSManager$AccsRequest;)Lcom/taobao/accs/data/Message;
    .locals 6
    .param p0, "connection"    # Lcom/taobao/accs/net/BaseConnection;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "appKey"    # Ljava/lang/String;
    .param p4, "requstInfo"    # Lcom/taobao/accs/ACCSManager$AccsRequest;

    .prologue
    .line 1034
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/taobao/accs/data/Message;->buildRequest(Lcom/taobao/accs/net/BaseConnection;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/ACCSManager$AccsRequest;Z)Lcom/taobao/accs/data/Message;

    move-result-object v0

    return-object v0
.end method

.method public static buildRequest(Lcom/taobao/accs/net/BaseConnection;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/ACCSManager$AccsRequest;Z)Lcom/taobao/accs/data/Message;
    .locals 8
    .param p0, "connection"    # Lcom/taobao/accs/net/BaseConnection;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "appKey"    # Ljava/lang/String;
    .param p4, "requstInfo"    # Lcom/taobao/accs/ACCSManager$AccsRequest;
    .param p5, "needSetUnit"    # Z

    .prologue
    const/4 v5, 0x1

    .line 989
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 990
    const/4 v1, 0x0

    .line 1030
    :goto_0
    return-object v1

    .line 992
    :cond_0
    new-instance v1, Lcom/taobao/accs/data/Message;

    invoke-direct {v1}, Lcom/taobao/accs/data/Message;-><init>()V

    .line 993
    .local v1, "message":Lcom/taobao/accs/data/Message;
    iput v5, v1, Lcom/taobao/accs/data/Message;->node:I

    .line 994
    sget-object v0, Lcom/taobao/accs/data/Message$ReqType;->REQ:Lcom/taobao/accs/data/Message$ReqType;

    invoke-direct {v1, v5, v0, v5}, Lcom/taobao/accs/data/Message;->type(ILcom/taobao/accs/data/Message$ReqType;I)V

    .line 995
    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    .line 996
    iput-object p2, v1, Lcom/taobao/accs/data/Message;->packageName:Ljava/lang/String;

    .line 997
    iget-object v0, p4, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    iput-object v0, v1, Lcom/taobao/accs/data/Message;->serviceId:Ljava/lang/String;

    .line 998
    iget-object v0, p4, Lcom/taobao/accs/ACCSManager$AccsRequest;->userId:Ljava/lang/String;

    iput-object v0, v1, Lcom/taobao/accs/data/Message;->userinfo:Ljava/lang/String;

    .line 1000
    iget-object v0, p4, Lcom/taobao/accs/ACCSManager$AccsRequest;->data:[B

    iput-object v0, v1, Lcom/taobao/accs/data/Message;->data:[B

    .line 1001
    iget-object v0, p4, Lcom/taobao/accs/ACCSManager$AccsRequest;->targetServiceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v7, p4, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    .line 1002
    .local v7, "targetServiceName":Ljava/lang/String;
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "2|"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, "|"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, p4, Lcom/taobao/accs/ACCSManager$AccsRequest;->target:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string/jumbo v0, ""

    :goto_2
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/taobao/accs/data/Message;->target:Ljava/lang/String;

    .line 1004
    iget-object v0, p4, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    iput-object v0, v1, Lcom/taobao/accs/data/Message;->cunstomDataId:Ljava/lang/String;

    .line 1005
    iget-object v0, p4, Lcom/taobao/accs/ACCSManager$AccsRequest;->businessId:Ljava/lang/String;

    iput-object v0, v1, Lcom/taobao/accs/data/Message;->bizId:Ljava/lang/String;

    .line 1006
    iget-object v0, p0, Lcom/taobao/accs/net/BaseConnection;->mConfigTag:Ljava/lang/String;

    iput-object v0, v1, Lcom/taobao/accs/data/Message;->tag:Ljava/lang/String;

    .line 1007
    iget v0, p4, Lcom/taobao/accs/ACCSManager$AccsRequest;->timeout:I

    if-lez v0, :cond_1

    .line 1008
    iget v0, p4, Lcom/taobao/accs/ACCSManager$AccsRequest;->timeout:I

    iput v0, v1, Lcom/taobao/accs/data/Message;->timeout:I

    .line 1011
    :cond_1
    if-eqz p5, :cond_4

    .line 1012
    invoke-static {p0, p1, v1, p4}, Lcom/taobao/accs/data/Message;->setUnit(Lcom/taobao/accs/net/BaseConnection;Landroid/content/Context;Lcom/taobao/accs/data/Message;Lcom/taobao/accs/ACCSManager$AccsRequest;)V

    .line 1017
    :goto_3
    invoke-static {p1}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object v0

    iget-object v5, p0, Lcom/taobao/accs/net/BaseConnection;->mConfigTag:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/taobao/accs/client/GlobalClientInfo;->getUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1018
    .local v3, "user_id":Ljava/lang/String;
    invoke-static {p1}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object v0

    iget-object v5, p0, Lcom/taobao/accs/net/BaseConnection;->mConfigTag:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/taobao/accs/client/GlobalClientInfo;->getSid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1020
    .local v2, "sid":Ljava/lang/String;
    sget-object v4, Lcom/taobao/accs/client/GlobalClientInfo;->mCookieSec:Ljava/lang/String;

    .line 1021
    .local v4, "cookie":Ljava/lang/String;
    iget-object v5, p4, Lcom/taobao/accs/ACCSManager$AccsRequest;->businessId:Ljava/lang/String;

    iget-object v6, p4, Lcom/taobao/accs/ACCSManager$AccsRequest;->tag:Ljava/lang/String;

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/taobao/accs/data/Message;->fillExtHeader(Landroid/content/Context;Lcom/taobao/accs/data/Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    new-instance v0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    invoke-direct {v0}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;-><init>()V

    iput-object v0, v1, Lcom/taobao/accs/data/Message;->netPerformanceMonitor:Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    .line 1024
    iget-object v0, v1, Lcom/taobao/accs/data/Message;->netPerformanceMonitor:Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    iget-object v5, p4, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setDataId(Ljava/lang/String;)V

    .line 1025
    iget-object v0, v1, Lcom/taobao/accs/data/Message;->netPerformanceMonitor:Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    iget-object v5, p4, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setServiceId(Ljava/lang/String;)V

    .line 1026
    iget-object v0, v1, Lcom/taobao/accs/data/Message;->netPerformanceMonitor:Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    iget-object v5, v1, Lcom/taobao/accs/data/Message;->host:Ljava/net/URL;

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setHost(Ljava/lang/String;)V

    .line 1027
    iget-object v0, p0, Lcom/taobao/accs/net/BaseConnection;->mConfigTag:Ljava/lang/String;

    iput-object v0, v1, Lcom/taobao/accs/data/Message;->tag:Ljava/lang/String;

    goto/16 :goto_0

    .line 1001
    .end local v2    # "sid":Ljava/lang/String;
    .end local v3    # "user_id":Ljava/lang/String;
    .end local v4    # "cookie":Ljava/lang/String;
    .end local v7    # "targetServiceName":Ljava/lang/String;
    :cond_2
    iget-object v7, p4, Lcom/taobao/accs/ACCSManager$AccsRequest;->targetServiceName:Ljava/lang/String;

    goto/16 :goto_1

    .line 1002
    .restart local v7    # "targetServiceName":Ljava/lang/String;
    :cond_3
    iget-object v0, p4, Lcom/taobao/accs/ACCSManager$AccsRequest;->target:Ljava/lang/String;

    goto :goto_2

    .line 1014
    :cond_4
    iget-object v0, p4, Lcom/taobao/accs/ACCSManager$AccsRequest;->host:Ljava/net/URL;

    iput-object v0, v1, Lcom/taobao/accs/data/Message;->host:Ljava/net/URL;

    goto :goto_3
.end method

.method public static buildSendData(Lcom/taobao/accs/net/BaseConnection;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/ACCSManager$AccsRequest;)Lcom/taobao/accs/data/Message;
    .locals 6
    .param p0, "connection"    # Lcom/taobao/accs/net/BaseConnection;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "appKey"    # Ljava/lang/String;
    .param p4, "dataInfo"    # Lcom/taobao/accs/ACCSManager$AccsRequest;

    .prologue
    .line 940
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/taobao/accs/data/Message;->buildSendData(Lcom/taobao/accs/net/BaseConnection;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/ACCSManager$AccsRequest;Z)Lcom/taobao/accs/data/Message;

    move-result-object v0

    return-object v0
.end method

.method public static buildSendData(Lcom/taobao/accs/net/BaseConnection;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/ACCSManager$AccsRequest;Z)Lcom/taobao/accs/data/Message;
    .locals 8
    .param p0, "connection"    # Lcom/taobao/accs/net/BaseConnection;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "appKey"    # Ljava/lang/String;
    .param p4, "dataInfo"    # Lcom/taobao/accs/ACCSManager$AccsRequest;
    .param p5, "needSetUnit"    # Z

    .prologue
    const/4 v5, 0x1

    .line 945
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 946
    const/4 v1, 0x0

    .line 984
    :goto_0
    return-object v1

    .line 948
    :cond_0
    new-instance v1, Lcom/taobao/accs/data/Message;

    invoke-direct {v1}, Lcom/taobao/accs/data/Message;-><init>()V

    .line 949
    .local v1, "message":Lcom/taobao/accs/data/Message;
    iput v5, v1, Lcom/taobao/accs/data/Message;->node:I

    .line 950
    sget-object v0, Lcom/taobao/accs/data/Message$ReqType;->DATA:Lcom/taobao/accs/data/Message$ReqType;

    invoke-direct {v1, v5, v0, v5}, Lcom/taobao/accs/data/Message;->type(ILcom/taobao/accs/data/Message$ReqType;I)V

    .line 951
    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    .line 952
    iput-object p2, v1, Lcom/taobao/accs/data/Message;->packageName:Ljava/lang/String;

    .line 954
    iget-object v0, p4, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    iput-object v0, v1, Lcom/taobao/accs/data/Message;->serviceId:Ljava/lang/String;

    .line 955
    iget-object v0, p4, Lcom/taobao/accs/ACCSManager$AccsRequest;->userId:Ljava/lang/String;

    iput-object v0, v1, Lcom/taobao/accs/data/Message;->userinfo:Ljava/lang/String;

    .line 956
    iget-object v0, p4, Lcom/taobao/accs/ACCSManager$AccsRequest;->data:[B

    iput-object v0, v1, Lcom/taobao/accs/data/Message;->data:[B

    .line 957
    iget-object v0, p4, Lcom/taobao/accs/ACCSManager$AccsRequest;->targetServiceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v7, p4, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    .line 958
    .local v7, "targetServiceName":Ljava/lang/String;
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "2|"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, "|"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, p4, Lcom/taobao/accs/ACCSManager$AccsRequest;->target:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string/jumbo v0, ""

    :goto_2
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/taobao/accs/data/Message;->target:Ljava/lang/String;

    .line 960
    iget-object v0, p4, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    iput-object v0, v1, Lcom/taobao/accs/data/Message;->cunstomDataId:Ljava/lang/String;

    .line 961
    iget-object v0, p4, Lcom/taobao/accs/ACCSManager$AccsRequest;->businessId:Ljava/lang/String;

    iput-object v0, v1, Lcom/taobao/accs/data/Message;->bizId:Ljava/lang/String;

    .line 962
    iget v0, p4, Lcom/taobao/accs/ACCSManager$AccsRequest;->timeout:I

    if-lez v0, :cond_1

    .line 963
    iget v0, p4, Lcom/taobao/accs/ACCSManager$AccsRequest;->timeout:I

    iput v0, v1, Lcom/taobao/accs/data/Message;->timeout:I

    .line 966
    :cond_1
    if-eqz p5, :cond_4

    .line 967
    invoke-static {p0, p1, v1, p4}, Lcom/taobao/accs/data/Message;->setUnit(Lcom/taobao/accs/net/BaseConnection;Landroid/content/Context;Lcom/taobao/accs/data/Message;Lcom/taobao/accs/ACCSManager$AccsRequest;)V

    .line 972
    :goto_3
    invoke-static {p1}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object v0

    iget-object v5, p0, Lcom/taobao/accs/net/BaseConnection;->mConfigTag:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/taobao/accs/client/GlobalClientInfo;->getUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 973
    .local v3, "user_id":Ljava/lang/String;
    invoke-static {p1}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object v0

    iget-object v5, p0, Lcom/taobao/accs/net/BaseConnection;->mConfigTag:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/taobao/accs/client/GlobalClientInfo;->getSid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 974
    .local v2, "sid":Ljava/lang/String;
    sget-object v4, Lcom/taobao/accs/client/GlobalClientInfo;->mCookieSec:Ljava/lang/String;

    .line 975
    .local v4, "cookie":Ljava/lang/String;
    iget-object v5, p4, Lcom/taobao/accs/ACCSManager$AccsRequest;->businessId:Ljava/lang/String;

    iget-object v6, p4, Lcom/taobao/accs/ACCSManager$AccsRequest;->tag:Ljava/lang/String;

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/taobao/accs/data/Message;->fillExtHeader(Landroid/content/Context;Lcom/taobao/accs/data/Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    new-instance v0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    invoke-direct {v0}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;-><init>()V

    iput-object v0, v1, Lcom/taobao/accs/data/Message;->netPerformanceMonitor:Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    .line 978
    iget-object v0, v1, Lcom/taobao/accs/data/Message;->netPerformanceMonitor:Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    iget-object v5, p4, Lcom/taobao/accs/ACCSManager$AccsRequest;->dataId:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setDataId(Ljava/lang/String;)V

    .line 979
    iget-object v0, v1, Lcom/taobao/accs/data/Message;->netPerformanceMonitor:Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    iget-object v5, p4, Lcom/taobao/accs/ACCSManager$AccsRequest;->serviceId:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setServiceId(Ljava/lang/String;)V

    .line 980
    iget-object v0, v1, Lcom/taobao/accs/data/Message;->netPerformanceMonitor:Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    iget-object v5, v1, Lcom/taobao/accs/data/Message;->host:Ljava/net/URL;

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->setHost(Ljava/lang/String;)V

    .line 981
    iget-object v0, p0, Lcom/taobao/accs/net/BaseConnection;->mConfigTag:Ljava/lang/String;

    iput-object v0, v1, Lcom/taobao/accs/data/Message;->tag:Ljava/lang/String;

    goto/16 :goto_0

    .line 957
    .end local v2    # "sid":Ljava/lang/String;
    .end local v3    # "user_id":Ljava/lang/String;
    .end local v4    # "cookie":Ljava/lang/String;
    .end local v7    # "targetServiceName":Ljava/lang/String;
    :cond_2
    iget-object v7, p4, Lcom/taobao/accs/ACCSManager$AccsRequest;->targetServiceName:Ljava/lang/String;

    goto/16 :goto_1

    .line 958
    .restart local v7    # "targetServiceName":Ljava/lang/String;
    :cond_3
    iget-object v0, p4, Lcom/taobao/accs/ACCSManager$AccsRequest;->target:Ljava/lang/String;

    goto :goto_2

    .line 969
    :cond_4
    iget-object v0, p4, Lcom/taobao/accs/ACCSManager$AccsRequest;->host:Ljava/net/URL;

    iput-object v0, v1, Lcom/taobao/accs/data/Message;->host:Ljava/net/URL;

    goto :goto_3
.end method

.method public static buildStatist(Ljava/lang/String;[B)Lcom/taobao/accs/data/Message;
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "data"    # [B

    .prologue
    const/4 v2, 0x1

    .line 925
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 926
    :cond_0
    const/4 v0, 0x0

    .line 936
    :goto_0
    return-object v0

    .line 929
    :cond_1
    new-instance v0, Lcom/taobao/accs/data/Message;

    invoke-direct {v0}, Lcom/taobao/accs/data/Message;-><init>()V

    .line 930
    .local v0, "message":Lcom/taobao/accs/data/Message;
    sget-object v1, Lcom/taobao/accs/data/Message$ReqType;->DATA:Lcom/taobao/accs/data/Message$ReqType;

    invoke-direct {v0, v2, v1, v2}, Lcom/taobao/accs/data/Message;->type(ILcom/taobao/accs/data/Message$ReqType;I)V

    .line 931
    iput v2, v0, Lcom/taobao/accs/data/Message;->node:I

    .line 932
    iput-object p1, v0, Lcom/taobao/accs/data/Message;->data:[B

    .line 933
    iput-object p0, v0, Lcom/taobao/accs/data/Message;->packageName:Ljava/lang/String;

    .line 934
    const-string/jumbo v1, "4|sal|st"

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->target:Ljava/lang/String;

    .line 935
    const/16 v1, 0x66

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public static buildUnbindApp(Lcom/taobao/accs/net/BaseConnection;Landroid/content/Context;Landroid/content/Intent;)Lcom/taobao/accs/data/Message;
    .locals 10
    .param p0, "connection"    # Lcom/taobao/accs/net/BaseConnection;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    .line 666
    const/4 v7, 0x0

    .line 667
    .local v7, "message":Lcom/taobao/accs/data/Message;
    const-string/jumbo v0, "Msg_"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "buildUnbindApp1"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v8, Ljava/lang/Exception;

    invoke-direct {v8}, Ljava/lang/Exception;-><init>()V

    invoke-static {v8}, Lcom/taobao/accs/utl/UtilityImpl;->getStackMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v0, v1, v8}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 669
    :try_start_0
    const-string/jumbo v0, "packageName"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 671
    .local v2, "packageName":Ljava/lang/String;
    const-string/jumbo v0, "userInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 673
    .local v4, "userId":Ljava/lang/String;
    const-string/jumbo v0, "sid"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 674
    .local v3, "sid":Ljava/lang/String;
    const-string/jumbo v0, "anti_brush_cookie"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "cookie":Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    .line 675
    invoke-static/range {v0 .. v5}, Lcom/taobao/accs/data/Message;->buildUnbindApp(Lcom/taobao/accs/net/BaseConnection;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/data/Message;

    move-result-object v7

    .line 678
    invoke-static {p0, p1, v7}, Lcom/taobao/accs/data/Message;->setControlHost(Lcom/taobao/accs/net/BaseConnection;Landroid/content/Context;Lcom/taobao/accs/data/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 684
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "sid":Ljava/lang/String;
    .end local v4    # "userId":Ljava/lang/String;
    .end local v5    # "cookie":Ljava/lang/String;
    :goto_0
    return-object v7

    .line 680
    :catch_0
    move-exception v6

    .line 681
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "Msg_"

    const-string/jumbo v1, "buildUnbindApp1"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v0, v1, v6, v8}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 682
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static buildUnbindApp(Lcom/taobao/accs/net/BaseConnection;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/data/Message;
    .locals 7
    .param p0, "connection"    # Lcom/taobao/accs/net/BaseConnection;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "sid"    # Ljava/lang/String;
    .param p4, "user_id"    # Ljava/lang/String;
    .param p5, "cookie"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 688
    const/4 v1, 0x0

    .line 690
    .local v1, "message":Lcom/taobao/accs/data/Message;
    :try_start_0
    const-string/jumbo v3, "Msg_"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "buildUnbindApp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5}, Ljava/lang/Exception;-><init>()V

    invoke-static {v5}, Lcom/taobao/accs/utl/UtilityImpl;->getStackMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 691
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 692
    const/4 v3, 0x0

    .line 711
    :goto_0
    return-object v3

    .line 694
    :cond_0
    new-instance v2, Lcom/taobao/accs/data/Message;

    invoke-direct {v2}, Lcom/taobao/accs/data/Message;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 695
    .end local v1    # "message":Lcom/taobao/accs/data/Message;
    .local v2, "message":Lcom/taobao/accs/data/Message;
    const/4 v3, 0x1

    :try_start_1
    iput v3, v2, Lcom/taobao/accs/data/Message;->node:I

    .line 696
    const/4 v3, 0x1

    sget-object v4, Lcom/taobao/accs/data/Message$ReqType;->DATA:Lcom/taobao/accs/data/Message$ReqType;

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lcom/taobao/accs/data/Message;->type(ILcom/taobao/accs/data/Message$ReqType;I)V

    .line 697
    iput-object p2, v2, Lcom/taobao/accs/data/Message;->packageName:Ljava/lang/String;

    .line 698
    const-string/jumbo v3, "3|dm|"

    iput-object v3, v2, Lcom/taobao/accs/data/Message;->target:Ljava/lang/String;

    .line 699
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    .line 700
    iput-object p2, v2, Lcom/taobao/accs/data/Message;->packageName:Ljava/lang/String;

    .line 701
    const/16 v3, 0xdd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/taobao/accs/data/Message;->sdkVersion:Ljava/lang/Integer;

    .line 702
    const-string/jumbo v3, "ctrl_unbindapp"

    iput-object v3, v2, Lcom/taobao/accs/data/Message;->cunstomDataId:Ljava/lang/String;

    .line 705
    invoke-static {p0, p1, v2}, Lcom/taobao/accs/data/Message;->setControlHost(Lcom/taobao/accs/net/BaseConnection;Landroid/content/Context;Lcom/taobao/accs/data/Message;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .end local v2    # "message":Lcom/taobao/accs/data/Message;
    .restart local v1    # "message":Lcom/taobao/accs/data/Message;
    :goto_1
    move-object v3, v1

    .line 711
    goto :goto_0

    .line 707
    :catch_0
    move-exception v0

    .line 708
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    const-string/jumbo v3, "Msg_"

    const-string/jumbo v4, "buildUnbindApp"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v0, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 709
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 707
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "message":Lcom/taobao/accs/data/Message;
    .restart local v2    # "message":Lcom/taobao/accs/data/Message;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "message":Lcom/taobao/accs/data/Message;
    .restart local v1    # "message":Lcom/taobao/accs/data/Message;
    goto :goto_2
.end method

.method public static buildUnbindService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/data/Message;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "serviceId"    # Ljava/lang/String;
    .param p4, "sid"    # Ljava/lang/String;
    .param p5, "user_id"    # Ljava/lang/String;
    .param p6, "cookie"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 789
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 790
    :cond_0
    const/4 v0, 0x0

    .line 805
    :goto_0
    return-object v0

    .line 792
    :cond_1
    new-instance v0, Lcom/taobao/accs/data/Message;

    invoke-direct {v0}, Lcom/taobao/accs/data/Message;-><init>()V

    .line 793
    .local v0, "message":Lcom/taobao/accs/data/Message;
    iput v2, v0, Lcom/taobao/accs/data/Message;->node:I

    .line 794
    sget-object v1, Lcom/taobao/accs/data/Message$ReqType;->DATA:Lcom/taobao/accs/data/Message$ReqType;

    invoke-direct {v0, v2, v1, v2}, Lcom/taobao/accs/data/Message;->type(ILcom/taobao/accs/data/Message$ReqType;I)V

    .line 795
    iput-object p1, v0, Lcom/taobao/accs/data/Message;->packageName:Ljava/lang/String;

    .line 797
    iput-object p3, v0, Lcom/taobao/accs/data/Message;->serviceId:Ljava/lang/String;

    .line 798
    const-string/jumbo v1, "3|dm|"

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->target:Ljava/lang/String;

    .line 799
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    .line 800
    iput-object p1, v0, Lcom/taobao/accs/data/Message;->packageName:Ljava/lang/String;

    .line 801
    iput-object p3, v0, Lcom/taobao/accs/data/Message;->serviceId:Ljava/lang/String;

    .line 802
    const/16 v1, 0xdd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->sdkVersion:Ljava/lang/Integer;

    .line 803
    const-string/jumbo v1, "ctrl_unbindservice"

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->cunstomDataId:Ljava/lang/String;

    goto :goto_0
.end method

.method public static buildUnbindService(Lcom/taobao/accs/net/BaseConnection;Landroid/content/Context;Landroid/content/Intent;)Lcom/taobao/accs/data/Message;
    .locals 11
    .param p0, "connection"    # Lcom/taobao/accs/net/BaseConnection;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 763
    const/4 v8, 0x0

    .line 765
    .local v8, "message":Lcom/taobao/accs/data/Message;
    :try_start_0
    const-string/jumbo v0, "packageName"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 767
    .local v1, "packageName":Ljava/lang/String;
    const-string/jumbo v0, "serviceId"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 769
    .local v3, "serviceId":Ljava/lang/String;
    const-string/jumbo v0, "userInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 771
    .local v5, "userId":Ljava/lang/String;
    const-string/jumbo v0, "appKey"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 773
    .local v2, "appkey":Ljava/lang/String;
    const-string/jumbo v0, "sid"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 774
    .local v4, "sid":Ljava/lang/String;
    const-string/jumbo v0, "anti_brush_cookie"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "cookie":Ljava/lang/String;
    move-object v0, p1

    .line 775
    invoke-static/range {v0 .. v6}, Lcom/taobao/accs/data/Message;->buildUnbindService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/data/Message;

    move-result-object v8

    .line 777
    iget-object v0, p0, Lcom/taobao/accs/net/BaseConnection;->mConfigTag:Ljava/lang/String;

    iput-object v0, v8, Lcom/taobao/accs/data/Message;->tag:Ljava/lang/String;

    .line 780
    invoke-static {p0, p1, v8}, Lcom/taobao/accs/data/Message;->setControlHost(Lcom/taobao/accs/net/BaseConnection;Landroid/content/Context;Lcom/taobao/accs/data/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 785
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "appkey":Ljava/lang/String;
    .end local v3    # "serviceId":Ljava/lang/String;
    .end local v4    # "sid":Ljava/lang/String;
    .end local v5    # "userId":Ljava/lang/String;
    .end local v6    # "cookie":Ljava/lang/String;
    :goto_0
    return-object v8

    .line 781
    :catch_0
    move-exception v7

    .line 782
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "Msg_"

    const-string/jumbo v9, "buildUnbindService"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v0, v9, v7, v10}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 783
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static buildUnbindUser(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/data/Message;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "sid"    # Ljava/lang/String;
    .param p4, "user_id"    # Ljava/lang/String;
    .param p5, "cookie"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 878
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 879
    const/4 v0, 0x0

    .line 891
    :goto_0
    return-object v0

    .line 881
    :cond_0
    new-instance v0, Lcom/taobao/accs/data/Message;

    invoke-direct {v0}, Lcom/taobao/accs/data/Message;-><init>()V

    .line 882
    .local v0, "message":Lcom/taobao/accs/data/Message;
    iput v2, v0, Lcom/taobao/accs/data/Message;->node:I

    .line 883
    sget-object v1, Lcom/taobao/accs/data/Message$ReqType;->DATA:Lcom/taobao/accs/data/Message$ReqType;

    invoke-direct {v0, v2, v1, v2}, Lcom/taobao/accs/data/Message;->type(ILcom/taobao/accs/data/Message$ReqType;I)V

    .line 884
    iput-object p1, v0, Lcom/taobao/accs/data/Message;->packageName:Ljava/lang/String;

    .line 886
    const-string/jumbo v1, "3|dm|"

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->target:Ljava/lang/String;

    .line 887
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    .line 888
    const/16 v1, 0xdd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->sdkVersion:Ljava/lang/Integer;

    .line 889
    const-string/jumbo v1, "ctrl_unbinduser"

    iput-object v1, v0, Lcom/taobao/accs/data/Message;->cunstomDataId:Ljava/lang/String;

    goto :goto_0
.end method

.method public static buildUnbindUser(Lcom/taobao/accs/net/BaseConnection;Landroid/content/Context;Landroid/content/Intent;)Lcom/taobao/accs/data/Message;
    .locals 10
    .param p0, "connection"    # Lcom/taobao/accs/net/BaseConnection;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 854
    const/4 v7, 0x0

    .line 856
    .local v7, "message":Lcom/taobao/accs/data/Message;
    :try_start_0
    const-string/jumbo v0, "packageName"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 858
    .local v1, "packageName":Ljava/lang/String;
    const-string/jumbo v0, "userInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 860
    .local v4, "userId":Ljava/lang/String;
    const-string/jumbo v0, "appKey"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 862
    .local v2, "appkey":Ljava/lang/String;
    const-string/jumbo v0, "sid"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 863
    .local v3, "sid":Ljava/lang/String;
    const-string/jumbo v0, "anti_brush_cookie"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "cookie":Ljava/lang/String;
    move-object v0, p1

    .line 864
    invoke-static/range {v0 .. v5}, Lcom/taobao/accs/data/Message;->buildUnbindUser(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/data/Message;

    move-result-object v7

    .line 866
    iget-object v0, p0, Lcom/taobao/accs/net/BaseConnection;->mConfigTag:Ljava/lang/String;

    iput-object v0, v7, Lcom/taobao/accs/data/Message;->tag:Ljava/lang/String;

    .line 869
    invoke-static {p0, p1, v7}, Lcom/taobao/accs/data/Message;->setControlHost(Lcom/taobao/accs/net/BaseConnection;Landroid/content/Context;Lcom/taobao/accs/data/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 874
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "appkey":Ljava/lang/String;
    .end local v3    # "sid":Ljava/lang/String;
    .end local v4    # "userId":Ljava/lang/String;
    .end local v5    # "cookie":Ljava/lang/String;
    :goto_0
    return-object v7

    .line 870
    :catch_0
    move-exception v6

    .line 871
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "Msg_"

    const-string/jumbo v8, "buildUnbindUser"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v0, v8, v6, v9}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 872
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static fillExtHeader(Landroid/content/Context;Lcom/taobao/accs/data/Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Lcom/taobao/accs/data/Message;
    .param p2, "sid"    # Ljava/lang/String;
    .param p3, "user_id"    # Ljava/lang/String;
    .param p4, "cookie"    # Ljava/lang/String;
    .param p5, "businessId"    # Ljava/lang/String;
    .param p6, "extTag"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x3ff

    .line 1145
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p4, :cond_5

    .line 1150
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p1, Lcom/taobao/accs/data/Message;->extHeader:Ljava/util/Map;

    .line 1151
    if-eqz p5, :cond_1

    invoke-static {p5}, Lcom/taobao/accs/utl/UtilityImpl;->getByteLen(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v2, :cond_1

    .line 1152
    iget-object v0, p1, Lcom/taobao/accs/data/Message;->extHeader:Ljava/util/Map;

    sget-object v1, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_BUSINESS:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    invoke-virtual {v1}, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1154
    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p2}, Lcom/taobao/accs/utl/UtilityImpl;->getByteLen(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v2, :cond_2

    .line 1155
    iget-object v0, p1, Lcom/taobao/accs/data/Message;->extHeader:Ljava/util/Map;

    sget-object v1, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_SID:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    invoke-virtual {v1}, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1157
    :cond_2
    if-eqz p3, :cond_3

    invoke-static {p3}, Lcom/taobao/accs/utl/UtilityImpl;->getByteLen(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v2, :cond_3

    .line 1158
    iget-object v0, p1, Lcom/taobao/accs/data/Message;->extHeader:Ljava/util/Map;

    sget-object v1, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_USERID:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    invoke-virtual {v1}, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1160
    :cond_3
    if-eqz p6, :cond_4

    invoke-static {p6}, Lcom/taobao/accs/utl/UtilityImpl;->getByteLen(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v2, :cond_4

    .line 1161
    iget-object v0, p1, Lcom/taobao/accs/data/Message;->extHeader:Ljava/util/Map;

    sget-object v1, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_TAG:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    invoke-virtual {v1}, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1163
    :cond_4
    if-eqz p4, :cond_5

    invoke-static {p4}, Lcom/taobao/accs/utl/UtilityImpl;->getByteLen(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v2, :cond_5

    .line 1164
    iget-object v0, p1, Lcom/taobao/accs/data/Message;->extHeader:Ljava/util/Map;

    sget-object v1, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->TYPE_COOKIE:Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;

    invoke-virtual {v1}, Lcom/taobao/accs/base/TaoBaseService$ExtHeaderType;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1168
    :cond_5
    return-void
.end method

.method private getTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Msg_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/accs/data/Message;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static setControlHost(Lcom/taobao/accs/net/BaseConnection;Landroid/content/Context;Lcom/taobao/accs/data/Message;)V
    .locals 5
    .param p0, "connection"    # Lcom/taobao/accs/net/BaseConnection;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Lcom/taobao/accs/data/Message;

    .prologue
    .line 1096
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/taobao/accs/net/BaseConnection;->getHost(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1097
    .local v1, "url":Ljava/lang/String;
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v2, p2, Lcom/taobao/accs/data/Message;->host:Ljava/net/URL;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1101
    .end local v1    # "url":Ljava/lang/String;
    :goto_0
    return-void

    .line 1098
    :catch_0
    move-exception v0

    .line 1099
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "Msg_"

    const-string/jumbo v3, "setControlHost"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v0, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static setControlUnit(Lcom/taobao/accs/net/BaseConnection;Landroid/content/Context;Lcom/taobao/accs/data/Message;)V
    .locals 5
    .param p0, "connection"    # Lcom/taobao/accs/net/BaseConnection;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Lcom/taobao/accs/data/Message;

    .prologue
    .line 1084
    :try_start_0
    invoke-static {}, Lc8/SK;->getInstance()Lc8/MK;

    move-result-object v2

    invoke-static {p1}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/taobao/accs/net/BaseConnection;->mConfigTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/taobao/accs/client/GlobalClientInfo;->getUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/taobao/accs/utl/UtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lc8/MK;->getUnitPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/taobao/accs/net/BaseConnection;->getHost(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1087
    .local v1, "url":Ljava/lang/String;
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v2, p2, Lcom/taobao/accs/data/Message;->host:Ljava/net/URL;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1091
    .end local v1    # "url":Ljava/lang/String;
    :goto_0
    return-void

    .line 1088
    :catch_0
    move-exception v0

    .line 1089
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "Msg_"

    const-string/jumbo v3, "setControlUnit"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v0, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private setPushAckFlag(SZ)V
    .locals 1
    .param p1, "flag"    # S
    .param p2, "businessAck"    # Z

    .prologue
    .line 1185
    const/4 v0, 0x1

    iput v0, p0, Lcom/taobao/accs/data/Message;->type:I

    .line 1187
    iput-short p1, p0, Lcom/taobao/accs/data/Message;->flags:S

    .line 1188
    iget-short v0, p0, Lcom/taobao/accs/data/Message;->flags:S

    and-int/lit16 v0, v0, -0x4001

    int-to-short v0, v0

    iput-short v0, p0, Lcom/taobao/accs/data/Message;->flags:S

    .line 1189
    iget-short v0, p0, Lcom/taobao/accs/data/Message;->flags:S

    or-int/lit16 v0, v0, 0x2000

    int-to-short v0, v0

    iput-short v0, p0, Lcom/taobao/accs/data/Message;->flags:S

    .line 1190
    iget-short v0, p0, Lcom/taobao/accs/data/Message;->flags:S

    and-int/lit16 v0, v0, -0x801

    int-to-short v0, v0

    iput-short v0, p0, Lcom/taobao/accs/data/Message;->flags:S

    .line 1191
    iget-short v0, p0, Lcom/taobao/accs/data/Message;->flags:S

    and-int/lit8 v0, v0, -0x41

    int-to-short v0, v0

    iput-short v0, p0, Lcom/taobao/accs/data/Message;->flags:S

    .line 1194
    if-eqz p2, :cond_0

    .line 1195
    iget-short v0, p0, Lcom/taobao/accs/data/Message;->flags:S

    or-int/lit8 v0, v0, 0x20

    int-to-short v0, v0

    iput-short v0, p0, Lcom/taobao/accs/data/Message;->flags:S

    .line 1197
    :cond_0
    return-void
.end method

.method private static setUnit(Lcom/taobao/accs/net/BaseConnection;Landroid/content/Context;Lcom/taobao/accs/data/Message;Lcom/taobao/accs/ACCSManager$AccsRequest;)V
    .locals 4
    .param p0, "connection"    # Lcom/taobao/accs/net/BaseConnection;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Lcom/taobao/accs/data/Message;
    .param p3, "requstInfo"    # Lcom/taobao/accs/ACCSManager$AccsRequest;

    .prologue
    .line 1062
    iget-object v1, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->host:Ljava/net/URL;

    if-nez v1, :cond_0

    .line 1064
    :try_start_0
    new-instance v1, Ljava/net/URL;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/taobao/accs/net/BaseConnection;->getHost(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p2, Lcom/taobao/accs/data/Message;->host:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1074
    :goto_0
    return-void

    .line 1066
    :catch_0
    move-exception v0

    .line 1067
    .local v0, "e":Ljava/net/MalformedURLException;
    const-string/jumbo v1, "Msg_"

    const-string/jumbo v2, "setUnit"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 1068
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 1071
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :cond_0
    iget-object v1, p3, Lcom/taobao/accs/ACCSManager$AccsRequest;->host:Ljava/net/URL;

    iput-object v1, p2, Lcom/taobao/accs/data/Message;->host:Ljava/net/URL;

    goto :goto_0
.end method

.method private type(ILcom/taobao/accs/data/Message$ReqType;I)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "req"    # Lcom/taobao/accs/data/Message$ReqType;
    .param p3, "res"    # I

    .prologue
    .line 1170
    iput p1, p0, Lcom/taobao/accs/data/Message;->type:I

    .line 1171
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 1172
    and-int/lit8 v0, p1, 0x1

    shl-int/lit8 v0, v0, 0x4

    invoke-virtual {p2}, Lcom/taobao/accs/data/Message$ReqType;->ordinal()I

    move-result v1

    shl-int/lit8 v1, v1, 0x2

    or-int/2addr v0, v1

    or-int/2addr v0, p3

    shl-int/lit8 v0, v0, 0xb

    int-to-short v0, v0

    iput-short v0, p0, Lcom/taobao/accs/data/Message;->flags:S

    .line 1174
    :cond_0
    return-void
.end method


# virtual methods
.method public build(Landroid/content/Context;I)[B
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "connectionType"    # I

    .prologue
    .line 317
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/taobao/accs/data/Message;->buildData(Landroid/content/Context;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    .line 325
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/data/Message;->data:[B

    move-object/from16 v17, v0

    if-eqz v17, :cond_d

    .line 326
    new-instance v12, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/data/Message;->data:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Ljava/lang/String;-><init>([B)V

    .line 331
    .local v12, "oriData":Ljava/lang/String;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/accs/data/Message;->compressData()V

    .line 333
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/taobao/accs/data/Message;->isAck:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    .line 334
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 335
    .local v4, "builder":Ljava/lang/StringBuilder;
    invoke-static/range {p1 .. p1}, Lcom/taobao/accs/utl/UtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "|"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/data/Message;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "|"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/data/Message;->serviceId:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_e

    const-string/jumbo v17, ""

    :goto_2
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "|"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/data/Message;->userinfo:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_f

    const-string/jumbo v17, ""

    :goto_3
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/taobao/accs/data/Message;->source:Ljava/lang/String;

    .line 344
    .end local v4    # "builder":Ljava/lang/StringBuilder;
    :cond_0
    :try_start_1
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/data/Message;->dataId:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "utf-8"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 345
    .local v3, "bDataId":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/data/Message;->source:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string/jumbo v18, "utf-8"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v17

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-byte v0, v1, Lcom/taobao/accs/data/Message;->sourceLength:B

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/data/Message;->target:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string/jumbo v18, "utf-8"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v17

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-byte v0, v1, Lcom/taobao/accs/data/Message;->targetLength:B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 356
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/data/Message;->extHeader:Ljava/util/Map;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/taobao/accs/data/Message;->getExtHeaderLen(Ljava/util/Map;)S

    move-result v8

    .line 358
    .local v8, "extHeaderLen":S
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/taobao/accs/data/Message;->targetLength:B

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x3

    add-int/lit8 v17, v17, 0x1

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/taobao/accs/data/Message;->sourceLength:B

    move/from16 v18, v0

    add-int v17, v17, v18

    add-int/lit8 v17, v17, 0x1

    array-length v0, v3

    move/from16 v18, v0

    add-int v18, v18, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/data/Message;->data:[B

    move-object/from16 v17, v0

    if-nez v17, :cond_10

    const/16 v17, 0x0

    :goto_5
    add-int v17, v17, v18

    add-int v17, v17, v8

    add-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    int-to-short v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-short v0, v1, Lcom/taobao/accs/data/Message;->dataLength:S

    .line 360
    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/taobao/accs/data/Message;->dataLength:S

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    int-to-short v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-short v0, v1, Lcom/taobao/accs/data/Message;->totalLength:S

    .line 362
    new-instance v13, Lcom/taobao/accs/utl/MessageStreamBuilder;

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/taobao/accs/data/Message;->totalLength:S

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x2

    add-int/lit8 v17, v17, 0x4

    move/from16 v0, v17

    invoke-direct {v13, v0}, Lcom/taobao/accs/utl/MessageStreamBuilder;-><init>(I)V

    .line 364
    .local v13, "os":Lcom/taobao/accs/utl/MessageStreamBuilder;
    invoke-direct/range {p0 .. p0}, Lcom/taobao/accs/data/Message;->getTag()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "Build Message"

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 372
    :try_start_2
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/taobao/accs/data/Message;->compress:B

    move/from16 v17, v0

    or-int/lit8 v17, v17, 0x20

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/taobao/accs/utl/MessageStreamBuilder;->writeByte(B)Lcom/taobao/accs/utl/MessageStreamBuilder;

    .line 373
    sget-object v17, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static/range {v17 .. v17}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 374
    invoke-direct/range {p0 .. p0}, Lcom/taobao/accs/data/Message;->getTag()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "\tversion:2 compress:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/taobao/accs/data/Message;->compress:B

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 376
    :cond_1
    if-nez p2, :cond_11

    .line 377
    const/16 v17, -0x80

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/taobao/accs/utl/MessageStreamBuilder;->writeByte(B)Lcom/taobao/accs/utl/MessageStreamBuilder;

    .line 378
    invoke-direct/range {p0 .. p0}, Lcom/taobao/accs/data/Message;->getTag()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "\tflag: 0x80"

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 385
    :goto_6
    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/taobao/accs/data/Message;->totalLength:S

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/taobao/accs/utl/MessageStreamBuilder;->writeShort(S)Lcom/taobao/accs/utl/MessageStreamBuilder;

    .line 386
    sget-object v17, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static/range {v17 .. v17}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 387
    invoke-direct/range {p0 .. p0}, Lcom/taobao/accs/data/Message;->getTag()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "\ttotalLength:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/taobao/accs/data/Message;->totalLength:S

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 389
    :cond_2
    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/taobao/accs/data/Message;->dataLength:S

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/taobao/accs/utl/MessageStreamBuilder;->writeShort(S)Lcom/taobao/accs/utl/MessageStreamBuilder;

    .line 390
    sget-object v17, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static/range {v17 .. v17}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 391
    invoke-direct/range {p0 .. p0}, Lcom/taobao/accs/data/Message;->getTag()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "\tdataLength:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/taobao/accs/data/Message;->dataLength:S

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 393
    :cond_3
    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/taobao/accs/data/Message;->flags:S

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/taobao/accs/utl/MessageStreamBuilder;->writeShort(S)Lcom/taobao/accs/utl/MessageStreamBuilder;

    .line 395
    sget-object v17, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static/range {v17 .. v17}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 396
    invoke-direct/range {p0 .. p0}, Lcom/taobao/accs/data/Message;->getTag()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "\tflags:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/taobao/accs/data/Message;->flags:S

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 399
    :cond_4
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/taobao/accs/data/Message;->targetLength:B

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/taobao/accs/utl/MessageStreamBuilder;->writeByte(B)Lcom/taobao/accs/utl/MessageStreamBuilder;

    .line 401
    sget-object v17, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static/range {v17 .. v17}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 402
    invoke-direct/range {p0 .. p0}, Lcom/taobao/accs/data/Message;->getTag()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "\ttargetLength:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/taobao/accs/data/Message;->targetLength:B

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 405
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/data/Message;->target:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string/jumbo v18, "utf-8"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/taobao/accs/utl/MessageStreamBuilder;->write([B)V

    .line 406
    sget-object v17, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static/range {v17 .. v17}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 407
    invoke-direct/range {p0 .. p0}, Lcom/taobao/accs/data/Message;->getTag()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "\ttarget:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    new-instance v19, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/data/Message;->target:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 410
    :cond_6
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/taobao/accs/data/Message;->sourceLength:B

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/taobao/accs/utl/MessageStreamBuilder;->writeByte(B)Lcom/taobao/accs/utl/MessageStreamBuilder;

    .line 411
    sget-object v17, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static/range {v17 .. v17}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 412
    invoke-direct/range {p0 .. p0}, Lcom/taobao/accs/data/Message;->getTag()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "\tsourceLength:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/taobao/accs/data/Message;->sourceLength:B

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 415
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/data/Message;->source:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string/jumbo v18, "utf-8"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/taobao/accs/utl/MessageStreamBuilder;->write([B)V

    .line 416
    sget-object v17, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static/range {v17 .. v17}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 417
    invoke-direct/range {p0 .. p0}, Lcom/taobao/accs/data/Message;->getTag()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "\tsource:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    new-instance v19, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/data/Message;->source:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 421
    :cond_8
    array-length v0, v3

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/taobao/accs/utl/MessageStreamBuilder;->writeByte(B)Lcom/taobao/accs/utl/MessageStreamBuilder;

    .line 422
    sget-object v17, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static/range {v17 .. v17}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 423
    invoke-direct/range {p0 .. p0}, Lcom/taobao/accs/data/Message;->getTag()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "\tdataIdLength:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    array-length v0, v3

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 427
    :cond_9
    invoke-virtual {v13, v3}, Lcom/taobao/accs/utl/MessageStreamBuilder;->write([B)V

    .line 428
    sget-object v17, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static/range {v17 .. v17}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 429
    invoke-direct/range {p0 .. p0}, Lcom/taobao/accs/data/Message;->getTag()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "\tdataId:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    new-instance v19, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 432
    :cond_a
    invoke-virtual {v13, v8}, Lcom/taobao/accs/utl/MessageStreamBuilder;->writeShort(S)Lcom/taobao/accs/utl/MessageStreamBuilder;

    .line 433
    sget-object v17, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static/range {v17 .. v17}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 434
    invoke-direct/range {p0 .. p0}, Lcom/taobao/accs/data/Message;->getTag()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "\textHeader len:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 437
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/data/Message;->extHeader:Ljava/util/Map;

    move-object/from16 v17, v0

    if-eqz v17, :cond_12

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/data/Message;->extHeader:Ljava/util/Map;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_c
    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_12

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 439
    .local v15, "type":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/data/Message;->extHeader:Ljava/util/Map;

    move-object/from16 v17, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 440
    .local v16, "value":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_c

    .line 441
    int-to-short v10, v15

    .line 442
    .local v10, "key":S
    const-string/jumbo v17, "utf-8"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v17

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x3ff

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-short v11, v0

    .line 443
    .local v11, "len":S
    shl-int/lit8 v17, v10, 0xa

    or-int v17, v17, v11

    move/from16 v0, v17

    int-to-short v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/taobao/accs/utl/MessageStreamBuilder;->writeShort(S)Lcom/taobao/accs/utl/MessageStreamBuilder;

    .line 444
    const-string/jumbo v17, "utf-8"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/taobao/accs/utl/MessageStreamBuilder;->write([B)V

    .line 445
    sget-object v17, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static/range {v17 .. v17}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 446
    invoke-direct/range {p0 .. p0}, Lcom/taobao/accs/data/Message;->getTag()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "\textHeader key:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " value:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_7

    .line 463
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "key":S
    .end local v11    # "len":S
    .end local v15    # "type":I
    .end local v16    # "value":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 464
    .local v6, "e1":Ljava/io/IOException;
    invoke-direct/range {p0 .. p0}, Lcom/taobao/accs/data/Message;->getTag()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "build4"

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v6, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 467
    .end local v6    # "e1":Ljava/io/IOException;
    :goto_8
    invoke-virtual {v13}, Lcom/taobao/accs/utl/MessageStreamBuilder;->toByteArray()[B

    move-result-object v14

    .line 469
    .local v14, "result":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/taobao/accs/data/Message;->printByte([B)V

    .line 472
    :try_start_3
    invoke-virtual {v13}, Lcom/taobao/accs/utl/MessageStreamBuilder;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 476
    :goto_9
    return-object v14

    .line 318
    .end local v3    # "bDataId":[B
    .end local v8    # "extHeaderLen":S
    .end local v12    # "oriData":Ljava/lang/String;
    .end local v13    # "os":Lcom/taobao/accs/utl/MessageStreamBuilder;
    .end local v14    # "result":[B
    :catch_1
    move-exception v7

    .line 319
    .local v7, "e2":Lorg/json/JSONException;
    invoke-direct/range {p0 .. p0}, Lcom/taobao/accs/data/Message;->getTag()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "build1"

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v7, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 320
    .end local v7    # "e2":Lorg/json/JSONException;
    :catch_2
    move-exception v5

    .line 321
    .local v5, "e":Ljava/io/UnsupportedEncodingException;
    invoke-direct/range {p0 .. p0}, Lcom/taobao/accs/data/Message;->getTag()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "build2"

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v5, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 328
    .end local v5    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_d
    const-string/jumbo v12, ""

    .restart local v12    # "oriData":Ljava/lang/String;
    goto/16 :goto_1

    .line 335
    .restart local v4    # "builder":Ljava/lang/StringBuilder;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/data/Message;->serviceId:Ljava/lang/String;

    move-object/from16 v17, v0

    goto/16 :goto_2

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/data/Message;->userinfo:Ljava/lang/String;

    move-object/from16 v17, v0

    goto/16 :goto_3

    .line 347
    .end local v4    # "builder":Ljava/lang/StringBuilder;
    :catch_3
    move-exception v7

    .line 348
    .local v7, "e2":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 349
    invoke-direct/range {p0 .. p0}, Lcom/taobao/accs/data/Message;->getTag()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "build3"

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v7, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 350
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/data/Message;->dataId:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 351
    .restart local v3    # "bDataId":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/data/Message;->source:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-byte v0, v1, Lcom/taobao/accs/data/Message;->sourceLength:B

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/data/Message;->target:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-byte v0, v1, Lcom/taobao/accs/data/Message;->targetLength:B

    goto/16 :goto_4

    .line 358
    .end local v7    # "e2":Ljava/lang/Exception;
    .restart local v8    # "extHeaderLen":S
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/data/Message;->data:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    goto/16 :goto_5

    .line 380
    .restart local v13    # "os":Lcom/taobao/accs/utl/MessageStreamBuilder;
    :cond_11
    const/16 v17, 0x40

    :try_start_4
    move/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/taobao/accs/utl/MessageStreamBuilder;->writeByte(B)Lcom/taobao/accs/utl/MessageStreamBuilder;

    .line 381
    invoke-direct/range {p0 .. p0}, Lcom/taobao/accs/data/Message;->getTag()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "\tflag: 0x40"

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 453
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/data/Message;->data:[B

    move-object/from16 v17, v0

    if-eqz v17, :cond_13

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/accs/data/Message;->data:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/taobao/accs/utl/MessageStreamBuilder;->write([B)V

    .line 457
    :cond_13
    sget-object v17, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static/range {v17 .. v17}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v17

    if-eqz v17, :cond_14

    .line 458
    invoke-direct/range {p0 .. p0}, Lcom/taobao/accs/data/Message;->getTag()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "\toriData:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 462
    :cond_14
    invoke-virtual {v13}, Lcom/taobao/accs/utl/MessageStreamBuilder;->flush()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_8

    .line 473
    .restart local v14    # "result":[B
    :catch_4
    move-exception v5

    .line 474
    .local v5, "e":Ljava/io/IOException;
    invoke-direct/range {p0 .. p0}, Lcom/taobao/accs/data/Message;->getTag()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "build5"

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v5, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_9
.end method

.method buildData(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x64

    .line 533
    iget-object v0, p0, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x66

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x69

    if-ne v0, v1, :cond_1

    .line 557
    :cond_0
    :goto_0
    return-void

    .line 537
    :cond_1
    new-instance v1, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;

    invoke-direct {v1}, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;-><init>()V

    const-string/jumbo v2, "command"

    iget-object v0, p0, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;

    move-result-object v0

    const-string/jumbo v1, "appKey"

    iget-object v2, p0, Lcom/taobao/accs/data/Message;->appKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;

    move-result-object v0

    const-string/jumbo v1, "osType"

    iget-object v2, p0, Lcom/taobao/accs/data/Message;->osType:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;

    move-result-object v0

    const-string/jumbo v1, "sign"

    iget-object v2, p0, Lcom/taobao/accs/data/Message;->appSign:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;

    move-result-object v0

    const-string/jumbo v1, "sdkVersion"

    iget-object v2, p0, Lcom/taobao/accs/data/Message;->sdkVersion:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;

    move-result-object v0

    const-string/jumbo v1, "appVersion"

    iget-object v2, p0, Lcom/taobao/accs/data/Message;->appVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;

    move-result-object v0

    const-string/jumbo v1, "ttid"

    iget-object v2, p0, Lcom/taobao/accs/data/Message;->ttid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;

    move-result-object v0

    const-string/jumbo v1, "model"

    iget-object v2, p0, Lcom/taobao/accs/data/Message;->model:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;

    move-result-object v0

    const-string/jumbo v1, "brand"

    iget-object v2, p0, Lcom/taobao/accs/data/Message;->brand:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;

    move-result-object v0

    const-string/jumbo v1, "imei"

    iget-object v2, p0, Lcom/taobao/accs/data/Message;->imei:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;

    move-result-object v0

    const-string/jumbo v1, "imsi"

    iget-object v2, p0, Lcom/taobao/accs/data/Message;->imsi:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;

    move-result-object v0

    const-string/jumbo v1, "os"

    iget-object v2, p0, Lcom/taobao/accs/data/Message;->osVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;

    move-result-object v0

    const-string/jumbo v1, "exts"

    iget-object v2, p0, Lcom/taobao/accs/data/Message;->exts:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/accs/utl/JsonUtility$JsonObjectBuilder;->build()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "utf-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/accs/data/Message;->data:[B

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/taobao/accs/data/Message;->command:Ljava/lang/Integer;

    goto/16 :goto_1
.end method

.method compressData()V
    .locals 8

    .prologue
    .line 499
    const/4 v0, 0x0

    .line 500
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    .line 502
    .local v4, "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    :try_start_0
    iget-object v6, p0, Lcom/taobao/accs/data/Message;->data:[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_2

    .line 520
    if-eqz v4, :cond_0

    .line 521
    :try_start_1
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 523
    :cond_0
    if-eqz v0, :cond_1

    .line 524
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 529
    :cond_1
    :goto_0
    return-void

    .line 505
    :cond_2
    :try_start_2
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 506
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    :try_start_3
    new-instance v5, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v5, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 507
    .end local v4    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .local v5, "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    :try_start_4
    iget-object v6, p0, Lcom/taobao/accs/data/Message;->data:[B

    invoke-virtual {v5, v6}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 508
    invoke-virtual {v5}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 510
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 511
    .local v2, "dataCompress":[B
    if-eqz v2, :cond_3

    array-length v6, v2

    iget-object v7, p0, Lcom/taobao/accs/data/Message;->data:[B

    array-length v7, v7

    if-ge v6, v7, :cond_3

    .line 512
    iput-object v2, p0, Lcom/taobao/accs/data/Message;->data:[B

    .line 513
    const/4 v6, 0x1

    iput-byte v6, p0, Lcom/taobao/accs/data/Message;->compress:B
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 520
    :cond_3
    if-eqz v5, :cond_4

    .line 521
    :try_start_5
    invoke-virtual {v5}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 523
    :cond_4
    if-eqz v1, :cond_5

    .line 524
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :cond_5
    move-object v4, v5

    .end local v5    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v4    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    move-object v0, v1

    .line 528
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    goto :goto_0

    .line 529
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    :catch_0
    move-exception v6

    move-object v4, v5

    .end local v5    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v4    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    move-object v0, v1

    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    goto :goto_0

    .line 515
    .end local v2    # "dataCompress":[B
    :catch_1
    move-exception v3

    .line 516
    .local v3, "e":Ljava/lang/Throwable;
    :goto_1
    :try_start_6
    invoke-direct {p0}, Lcom/taobao/accs/data/Message;->getTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 520
    if-eqz v4, :cond_6

    .line 521
    :try_start_7
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 523
    :cond_6
    if-eqz v0, :cond_1

    .line 524
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_0

    .line 529
    :catch_2
    move-exception v6

    goto :goto_0

    .line 519
    .end local v3    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v6

    .line 520
    :goto_2
    if-eqz v4, :cond_7

    .line 521
    :try_start_8
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 523
    :cond_7
    if-eqz v0, :cond_8

    .line 524
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 528
    :cond_8
    :goto_3
    throw v6

    :catch_3
    move-exception v7

    goto :goto_3

    .line 519
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    goto :goto_2

    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    :catchall_2
    move-exception v6

    move-object v4, v5

    .end local v5    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v4    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    move-object v0, v1

    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    goto :goto_2

    .line 515
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    :catch_4
    move-exception v3

    move-object v0, v1

    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    goto :goto_1

    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    :catch_5
    move-exception v3

    move-object v4, v5

    .end local v5    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    .restart local v4    # "gzipOutputStream":Ljava/util/zip/GZIPOutputStream;
    move-object v0, v1

    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    goto :goto_1

    .line 528
    :catch_6
    move-exception v6

    goto :goto_0
.end method

.method public getDataId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/taobao/accs/data/Message;->dataId:Ljava/lang/String;

    return-object v0
.end method

.method public getDelyTime()J
    .locals 2

    .prologue
    .line 290
    iget-wide v0, p0, Lcom/taobao/accs/data/Message;->delyTime:J

    return-wide v0
.end method

.method getExtHeaderLen(Ljava/util/Map;)S
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)S"
        }
    .end annotation

    .prologue
    .line 480
    .local p1, "extHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 482
    .local v1, "extHeaderLen":S
    if-eqz p1, :cond_1

    .line 483
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 484
    .local v4, "type":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 485
    .local v5, "value":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 486
    const-string/jumbo v6, "utf-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    array-length v6, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v6, v6, 0x3ff

    int-to-short v3, v6

    .line 487
    .local v3, "len":S
    add-int/lit8 v6, v3, 0x2

    add-int/2addr v6, v1

    int-to-short v1, v6

    goto :goto_0

    .line 491
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "len":S
    .end local v4    # "type":I
    .end local v5    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 492
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 495
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return v1
.end method

.method public getIntDataId()I
    .locals 4

    .prologue
    .line 264
    const/4 v0, -0x1

    .line 266
    .local v0, "ret":I
    :try_start_0
    iget-boolean v1, p0, Lcom/taobao/accs/data/Message;->isAck:Z

    if-nez v1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/taobao/accs/data/Message;->dataId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 275
    :goto_0
    return v0

    .line 269
    :cond_0
    sget-wide v2, Lcom/taobao/accs/data/Message;->baseMessageId:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v1, v2

    neg-int v0, v1

    goto :goto_0

    .line 273
    :catch_0
    move-exception v1

    const-string/jumbo v1, "Msg_"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "parse int dataId error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/accs/data/Message;->dataId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getNetPermanceMonitor()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/taobao/accs/data/Message;->netPerformanceMonitor:Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    return-object v0
.end method

.method public getNode()I
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lcom/taobao/accs/data/Message;->node:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/taobao/accs/data/Message;->packageName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/accs/data/Message;->packageName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getRetryTimes()I
    .locals 1

    .prologue
    .line 294
    iget v0, p0, Lcom/taobao/accs/data/Message;->retryTimes:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Lcom/taobao/accs/data/Message;->type:I

    return v0
.end method

.method public isControlFrame()Z
    .locals 2

    .prologue
    .line 260
    const-string/jumbo v0, "3|dm|"

    iget-object v1, p0, Lcom/taobao/accs/data/Message;->target:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isTimeOut()Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 305
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/taobao/accs/data/Message;->startSendTime:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/taobao/accs/data/Message;->delyTime:J

    add-long/2addr v2, v4

    iget v4, p0, Lcom/taobao/accs/data/Message;->timeout:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    const/4 v0, 0x1

    .line 306
    .local v0, "result":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 307
    invoke-direct {p0}, Lcom/taobao/accs/data/Message;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "delay time:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/taobao/accs/data/Message;->delyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " beforeSendTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/taobao/accs/data/Message;->startSendTime:J

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " timeout"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/taobao/accs/data/Message;->timeout:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 311
    :cond_0
    return v0

    .end local v0    # "result":Z
    :cond_1
    move v0, v1

    .line 305
    goto :goto_0
.end method

.method printByte([B)V
    .locals 6
    .param p1, "bytes"    # [B

    .prologue
    const/4 v5, 0x0

    .line 560
    const-string/jumbo v1, ""

    .line 561
    .local v1, "str":Ljava/lang/String;
    sget-object v2, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v2}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 562
    invoke-direct {p0}, Lcom/taobao/accs/data/Message;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "len:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 563
    array-length v2, p1

    const/16 v3, 0x200

    if-ge v2, v3, :cond_1

    .line 564
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 565
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 564
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 567
    :cond_0
    invoke-direct {p0}, Lcom/taobao/accs/data/Message;->getTag()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 571
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public setSendTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 279
    iput-wide p1, p0, Lcom/taobao/accs/data/Message;->sendTime:J

    .line 280
    return-void
.end method
