.class public Lc8/KLj;
.super Landroid/app/Application;
.source "Youku.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/GLj;,
        Lc8/HLj;,
        Lc8/ILj;,
        Lc8/JLj;
    }
.end annotation


# static fields
.field private static final ACCS_YOUKU_TAG:Ljava/lang/String; = "youku"

.field private static final DAILY_APP_KEY:Ljava/lang/String; = "60032872"

.field private static final DELAY_LONG:J = 0x4e20L

.field private static final DELAY_MEDIUM:J = 0x2710L

.field private static final DELAY_RIGHT_NOW:J = 0x0L

.field private static final DELAY_SHORT:J = 0x1388L

.field private static final MONITOR_SERVER_ID:Ljava/lang/String; = "pmmonitor-youku"

.field private static final MSG_DELAY_LONG:I = 0x5

.field private static final MSG_DELAY_MEDIUM:I = 0x4

.field private static final MSG_DELAY_RIGHT_NOW:I = 0x2

.field private static final MSG_DELAY_SHORT:I = 0x3

.field private static final MSG_EXIT:I = 0x1

.field private static final MSG_SEND_DELAY_MSG:I = 0x6

.field private static final POWER_SERVER_ID:Ljava/lang/String; = "powermsg-youku"

.field private static final RELEASE_APP_KEY:Ljava/lang/String; = "23570660"

.field private static final SERVICES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "YKGLOBAL.Youku"

.field private static final TAG_ACCS:Ljava/lang/String; = "YKAccs.init"

.field private static final VIP_SERVER_ID:Ljava/lang/String; = "VIPDynamicPushService"

.field private static final YOUKU_SERVICES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private internalHandler:Landroid/os/Handler;

.field private volatile isRegistered:Z

.field private mAlreadySendDelayMessage:Z

.field private mAppAttachEndTime:J

.field private mAppAttachStartTime:J

.field private mAppCreateEndTime:J

.field private mAppCreateStartTime:J

.field public mHomeCreateEndTime:J

.field public mHomeCreateStartTime:J

.field private mPackageInfo:Landroid/content/pm/PackageInfo;

.field public mWelCreateEndTime:J

.field public mWelCreateStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 767
    new-instance v0, Lcom/youku/phone/Youku$12;

    invoke-direct {v0}, Lcom/youku/phone/Youku$12;-><init>()V

    sput-object v0, Lc8/KLj;->YOUKU_SERVICES:Ljava/util/Map;

    .line 775
    new-instance v0, Lcom/youku/phone/Youku$13;

    invoke-direct {v0}, Lcom/youku/phone/Youku$13;-><init>()V

    sput-object v0, Lc8/KLj;->SERVICES:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 165
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 1487
    new-instance v0, Lc8/tLj;

    invoke-direct {v0, p0}, Lc8/tLj;-><init>(Lc8/KLj;)V

    iput-object v0, p0, Lc8/KLj;->internalHandler:Landroid/os/Handler;

    return-void
.end method

.method private InitHotFixManagerAndQueryNewHotPatch()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 659
    invoke-static {}, Lc8/tUf;->getInstance()Lc8/tUf;

    move-result-object v0

    invoke-static {p0}, Lc8/WHg;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1, v2, v2}, Lc8/tUf;->appendInit(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lc8/tUf;

    .line 660
    invoke-static {}, Lc8/yRf;->getInstance()Lc8/yRf;

    move-result-object v0

    const-string/jumbo v1, "hotpatch"

    new-instance v2, Lc8/xUf;

    invoke-direct {v2}, Lc8/xUf;-><init>()V

    invoke-virtual {v0, v1, v2}, Lc8/yRf;->registerListener(Ljava/lang/String;Lc8/zRf;)V

    .line 662
    invoke-static {}, Lc8/tUf;->getInstance()Lc8/tUf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/tUf;->startHotPatch()V

    .line 663
    return-void
.end method

.method private static _1forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    invoke-static/range {p0 .. p0}, Lcom/ali/mobisecenhance/ReflectMap;->genRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$000(Lc8/KLj;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lc8/KLj;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 165
    invoke-direct {p0, p1, p2}, Lc8/KLj;->initAccsWithTlog(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$100(Lc8/KLj;)V
    .locals 0
    .param p0, "x0"    # Lc8/KLj;

    .prologue
    .line 165
    invoke-direct {p0}, Lc8/KLj;->initOrange()V

    return-void
.end method

.method static synthetic access$1200(Lc8/KLj;)V
    .locals 0
    .param p0, "x0"    # Lc8/KLj;

    .prologue
    .line 165
    invoke-direct {p0}, Lc8/KLj;->registerPassportListener()V

    return-void
.end method

.method static synthetic access$1400()Ljava/util/Map;
    .locals 1

    .prologue
    .line 165
    sget-object v0, Lc8/KLj;->YOUKU_SERVICES:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1500()Ljava/util/Map;
    .locals 1

    .prologue
    .line 165
    sget-object v0, Lc8/KLj;->SERVICES:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1600(Lc8/KLj;)V
    .locals 0
    .param p0, "x0"    # Lc8/KLj;

    .prologue
    .line 165
    invoke-direct {p0}, Lc8/KLj;->mtopLocation()V

    return-void
.end method

.method static synthetic access$1700(Lc8/KLj;)V
    .locals 0
    .param p0, "x0"    # Lc8/KLj;

    .prologue
    .line 165
    invoke-direct {p0}, Lc8/KLj;->initThirdPartyPush()V

    return-void
.end method

.method static synthetic access$1800(Lc8/KLj;)V
    .locals 0
    .param p0, "x0"    # Lc8/KLj;

    .prologue
    .line 165
    invoke-direct {p0}, Lc8/KLj;->initNetworkConfig()V

    return-void
.end method

.method static synthetic access$200(Lc8/KLj;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lc8/KLj;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 165
    invoke-direct {p0, p1, p2}, Lc8/KLj;->initTLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lc8/KLj;)V
    .locals 0
    .param p0, "x0"    # Lc8/KLj;

    .prologue
    .line 165
    invoke-direct {p0}, Lc8/KLj;->InitHotFixManagerAndQueryNewHotPatch()V

    return-void
.end method

.method static synthetic access$400(Lc8/KLj;)V
    .locals 0
    .param p0, "x0"    # Lc8/KLj;

    .prologue
    .line 165
    invoke-direct {p0}, Lc8/KLj;->initPhenix()V

    return-void
.end method

.method static synthetic access$500(Lc8/KLj;)V
    .locals 0
    .param p0, "x0"    # Lc8/KLj;

    .prologue
    .line 165
    invoke-direct {p0}, Lc8/KLj;->sendDelayMessage()V

    return-void
.end method

.method static synthetic access$600(Lc8/KLj;)J
    .locals 2
    .param p0, "x0"    # Lc8/KLj;

    .prologue
    .line 165
    iget-wide v0, p0, Lc8/KLj;->mAppAttachStartTime:J

    return-wide v0
.end method

.method static synthetic access$700(Lc8/KLj;)J
    .locals 2
    .param p0, "x0"    # Lc8/KLj;

    .prologue
    .line 165
    iget-wide v0, p0, Lc8/KLj;->mAppAttachEndTime:J

    return-wide v0
.end method

.method static synthetic access$800(Lc8/KLj;)J
    .locals 2
    .param p0, "x0"    # Lc8/KLj;

    .prologue
    .line 165
    iget-wide v0, p0, Lc8/KLj;->mAppCreateStartTime:J

    return-wide v0
.end method

.method static synthetic access$900(Lc8/KLj;)J
    .locals 2
    .param p0, "x0"    # Lc8/KLj;

    .prologue
    .line 165
    iget-wide v0, p0, Lc8/KLj;->mAppCreateEndTime:J

    return-wide v0
.end method

.method private acsNetworkConfig(Ljava/lang/String;I)V
    .locals 9
    .param p1, "appkey"    # Ljava/lang/String;
    .param p2, "env"    # I

    .prologue
    const/4 v1, 0x1

    .line 1456
    if-nez p2, :cond_0

    .line 1457
    :try_start_0
    const-string/jumbo v0, "acs.youku.com"

    .line 1467
    .local v0, "host":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lc8/jL;->getInstance()Lc8/jL;

    move-result-object v1

    const-string/jumbo v2, "http2"

    const-string/jumbo v3, "0rtt"

    const-string/jumbo v4, "open"

    const/4 v5, 0x0

    .line 1468
    invoke-static {v2, v3, v4, v5}, Lanet/channel/strategy/ConnProtocol;->valueOf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lanet/channel/strategy/ConnProtocol;

    move-result-object v2

    .line 1467
    invoke-virtual {v1, v0, v2}, Lc8/jL;->registerConnProtocol(Ljava/lang/String;Lanet/channel/strategy/ConnProtocol;)V

    .line 1469
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lc8/cJ;->create(Ljava/lang/String;ZZLc8/UI;Lc8/NJ;Lc8/SI;)Lc8/cJ;

    move-result-object v8

    .line 1470
    .local v8, "sessionInfo":Lc8/cJ;
    new-instance v1, Lc8/QI;

    invoke-direct {v1}, Lc8/QI;-><init>()V

    invoke-virtual {v1, p1}, Lc8/QI;->setAppkey(Ljava/lang/String;)Lc8/QI;

    move-result-object v1

    invoke-static {p2}, Lanet/channel/entity/ENV;->valueOf(I)Lanet/channel/entity/ENV;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc8/QI;->setEnv(Lanet/channel/entity/ENV;)Lc8/QI;

    move-result-object v1

    invoke-virtual {v1}, Lc8/QI;->build()Lc8/RI;

    move-result-object v6

    .line 1471
    .local v6, "config":Lc8/RI;
    invoke-static {v6}, Lanet/channel/SessionCenter;->getInstance(Lc8/RI;)Lanet/channel/SessionCenter;

    move-result-object v1

    invoke-virtual {v1, v8}, Lanet/channel/SessionCenter;->registerSessionInfo(Lc8/cJ;)V

    .line 1475
    .end local v0    # "host":Ljava/lang/String;
    .end local v6    # "config":Lc8/RI;
    .end local v8    # "sessionInfo":Lc8/cJ;
    :goto_1
    return-void

    .line 1458
    :cond_0
    if-ne p2, v1, :cond_1

    .line 1459
    const-string/jumbo v0, "pre-acs.youku.com"

    .restart local v0    # "host":Ljava/lang/String;
    goto :goto_0

    .line 1460
    .end local v0    # "host":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    .line 1461
    const-string/jumbo v0, "daily-acs.youku.com"

    .restart local v0    # "host":Ljava/lang/String;
    goto :goto_0

    .line 1462
    .end local v0    # "host":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lc8/Gyo;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1463
    const-string/jumbo v0, "daily-acs.youku.com"

    .restart local v0    # "host":Ljava/lang/String;
    goto :goto_0

    .line 1465
    .end local v0    # "host":Ljava/lang/String;
    :cond_3
    const-string/jumbo v0, "acs.youku.com"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v0    # "host":Ljava/lang/String;
    goto :goto_0

    .line 1472
    .end local v0    # "host":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 1473
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private createNetworkAnalyzer()Lc8/Pwf;
    .locals 1

    .prologue
    .line 1247
    new-instance v0, Lc8/qLj;

    invoke-direct {v0, p0}, Lc8/qLj;-><init>(Lc8/KLj;)V

    return-object v0
.end method

.method public static getAppkey(I)Ljava/lang/String;
    .locals 4
    .param p0, "env"    # I

    .prologue
    .line 1184
    const/4 v2, 0x2

    if-ne p0, v2, :cond_0

    .line 1185
    const-string/jumbo v0, "60032872"

    .local v0, "appkey":Ljava/lang/String;
    move-object v1, v0

    .line 1200
    .end local v0    # "appkey":Ljava/lang/String;
    .local v1, "appkey":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1187
    .end local v1    # "appkey":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x1

    if-ne p0, v2, :cond_1

    .line 1188
    const-string/jumbo v0, "23570660"

    .restart local v0    # "appkey":Ljava/lang/String;
    move-object v1, v0

    .line 1189
    .end local v0    # "appkey":Ljava/lang/String;
    .restart local v1    # "appkey":Ljava/lang/String;
    goto :goto_0

    .line 1190
    .end local v1    # "appkey":Ljava/lang/String;
    :cond_1
    if-nez p0, :cond_2

    .line 1191
    const-string/jumbo v0, "23570660"

    .restart local v0    # "appkey":Ljava/lang/String;
    move-object v1, v0

    .line 1192
    .end local v0    # "appkey":Ljava/lang/String;
    .restart local v1    # "appkey":Ljava/lang/String;
    goto :goto_0

    .line 1194
    .end local v1    # "appkey":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setApi().Debuggable.isDebug():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lc8/Gyo;->isDebug()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1195
    invoke-static {}, Lc8/Gyo;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1196
    const-string/jumbo v0, "60032872"

    .restart local v0    # "appkey":Ljava/lang/String;
    move-object v1, v0

    .line 1197
    .end local v0    # "appkey":Ljava/lang/String;
    .restart local v1    # "appkey":Ljava/lang/String;
    goto :goto_0

    .line 1199
    .end local v1    # "appkey":Ljava/lang/String;
    :cond_3
    const-string/jumbo v0, "23570660"

    .restart local v0    # "appkey":Ljava/lang/String;
    move-object v1, v0

    .line 1200
    .end local v0    # "appkey":Ljava/lang/String;
    .restart local v1    # "appkey":Ljava/lang/String;
    goto :goto_0
.end method

.method private getChannelHost(I)Ljava/lang/String;
    .locals 2
    .param p1, "env"    # I

    .prologue
    .line 1140
    if-nez p1, :cond_0

    .line 1141
    const-string/jumbo v0, "youku-jmacs.m.taobao.com"

    .line 1149
    .local v0, "channelHost":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1142
    .end local v0    # "channelHost":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 1143
    const-string/jumbo v0, "youku-jmacs.wapa.taobao.com"

    .restart local v0    # "channelHost":Ljava/lang/String;
    goto :goto_0

    .line 1144
    .end local v0    # "channelHost":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 1145
    const-string/jumbo v0, "youku-jmacs.waptest.taobao.com"

    .restart local v0    # "channelHost":Ljava/lang/String;
    goto :goto_0

    .line 1147
    .end local v0    # "channelHost":Ljava/lang/String;
    :cond_2
    const-string/jumbo v0, "youku-jmacs.m.taobao.com"

    .restart local v0    # "channelHost":Ljava/lang/String;
    goto :goto_0
.end method

.method private getInAppHost(I)Ljava/lang/String;
    .locals 2
    .param p1, "env"    # I

    .prologue
    .line 1126
    if-nez p1, :cond_0

    .line 1127
    const-string/jumbo v0, "youku-acs.m.taobao.com"

    .line 1135
    .local v0, "inappHost":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1128
    .end local v0    # "inappHost":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 1129
    const-string/jumbo v0, "youku-acs.wapa.taobao.com"

    .restart local v0    # "inappHost":Ljava/lang/String;
    goto :goto_0

    .line 1130
    .end local v0    # "inappHost":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 1131
    const-string/jumbo v0, "youku-acs.waptest.taobao.com"

    .restart local v0    # "inappHost":Ljava/lang/String;
    goto :goto_0

    .line 1133
    .end local v0    # "inappHost":Ljava/lang/String;
    :cond_2
    const-string/jumbo v0, "youku-acs.m.taobao.com"

    .restart local v0    # "inappHost":Ljava/lang/String;
    goto :goto_0
.end method

.method private getPubKey(I)I
    .locals 2
    .param p1, "env"    # I

    .prologue
    .line 1170
    if-nez p1, :cond_0

    .line 1171
    const/16 v0, 0xb

    .line 1179
    .local v0, "pubkey":I
    :goto_0
    return v0

    .line 1172
    .end local v0    # "pubkey":I
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 1173
    const/16 v0, 0xb

    .restart local v0    # "pubkey":I
    goto :goto_0

    .line 1174
    .end local v0    # "pubkey":I
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 1175
    const/4 v0, 0x0

    .restart local v0    # "pubkey":I
    goto :goto_0

    .line 1177
    .end local v0    # "pubkey":I
    :cond_2
    const/16 v0, 0xb

    .restart local v0    # "pubkey":I
    goto :goto_0
.end method

.method public static getYkInappHost(I)Ljava/lang/String;
    .locals 2
    .param p0, "env"    # I

    .prologue
    .line 1154
    if-nez p0, :cond_0

    .line 1155
    const-string/jumbo v0, "msgacs.youku.com"

    .line 1165
    .local v0, "inappHost":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1156
    .end local v0    # "inappHost":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    .line 1157
    const-string/jumbo v0, "pre-msgacs.youku.com"

    .restart local v0    # "inappHost":Ljava/lang/String;
    goto :goto_0

    .line 1158
    .end local v0    # "inappHost":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x2

    if-ne p0, v1, :cond_2

    .line 1159
    const-string/jumbo v0, "daily-msgacs.youku.com"

    .restart local v0    # "inappHost":Ljava/lang/String;
    goto :goto_0

    .line 1160
    .end local v0    # "inappHost":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lc8/Gyo;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1161
    const-string/jumbo v0, "daily-msgacs.youku.com"

    .restart local v0    # "inappHost":Ljava/lang/String;
    goto :goto_0

    .line 1163
    .end local v0    # "inappHost":Ljava/lang/String;
    :cond_3
    const-string/jumbo v0, "msgacs.youku.com"

    .restart local v0    # "inappHost":Ljava/lang/String;
    goto :goto_0
.end method

.method private initABTest()V
    .locals 3

    .prologue
    .line 1118
    :try_start_0
    invoke-static {}, Lc8/Tng;->getInstance()Lc8/Sng;

    move-result-object v0

    sget-object v1, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    sget-object v2, Lcom/tmall/wireless/ant/lifecycle/FetchModel;->PULL:Lcom/tmall/wireless/ant/lifecycle/FetchModel;

    invoke-interface {v0, v1, v2}, Lc8/Sng;->init(Landroid/app/Application;Lcom/tmall/wireless/ant/lifecycle/FetchModel;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1122
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private initAccsWithTlog(Ljava/lang/String;Z)V
    .locals 17
    .param p1, "ttid"    # Ljava/lang/String;
    .param p2, "isMainProcess"    # Z

    .prologue
    .line 786
    sget v10, Lc8/Dfh;->envType:I

    .line 788
    .local v10, "env":I
    invoke-static {v10}, Lc8/KLj;->getAppkey(I)Ljava/lang/String;

    move-result-object v3

    .line 790
    .local v3, "appkey":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 791
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v10}, Lc8/KLj;->acsNetworkConfig(Ljava/lang/String;I)V

    .line 795
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/taobao/accs/utl/ALog;->setPrintLog(Z)V

    .line 796
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/taobao/accs/utl/ALog;->setUseTlog(Z)V

    .line 797
    const/4 v1, 0x1

    invoke-static {v1}, Lc8/KL;->setPrintLog(Z)V

    .line 798
    const/4 v1, 0x1

    invoke-static {v1}, Lc8/KL;->setUseTlog(Z)V

    .line 801
    sget-object v1, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/taobao/accs/client/GlobalConfig;->setEnableForground(Landroid/content/Context;Z)V

    .line 802
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/taobao/accs/client/GlobalConfig;->setChannelReuse(ZLcom/taobao/accs/client/AccsConfig$ACCS_GROUP;)V

    .line 805
    const-string/jumbo v1, "EEBBK"

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 806
    const/4 v1, 0x0

    sput-boolean v1, Lcom/taobao/accs/client/GlobalConfig;->enableCookie:Z

    .line 809
    :cond_1
    sget-object v1, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-static {v1, v10}, Lcom/taobao/accs/ACCSClient;->setEnvironment(Landroid/content/Context;I)V

    .line 813
    :try_start_0
    new-instance v1, Lc8/kLj;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lc8/kLj;-><init>(Lc8/KLj;)V

    invoke-static {v1}, Lc8/msf;->registerOnlineNotify(Lc8/jsf;)Z

    .line 825
    sget-object v1, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-static {v1, v3, v10}, Lcom/taobao/accs/ACCSManager;->setAppkey(Landroid/content/Context;Ljava/lang/String;I)V

    .line 830
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lc8/KLj;->getInAppHost(I)Ljava/lang/String;

    move-result-object v11

    .line 832
    .local v11, "inappHost":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lc8/KLj;->getChannelHost(I)Ljava/lang/String;

    move-result-object v9

    .line 833
    .local v9, "channelHost":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lc8/KLj;->getPubKey(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result v12

    .line 837
    .local v12, "pubkey":I
    :try_start_1
    new-instance v8, Lcom/taobao/accs/AccsClientConfig$Builder;

    invoke-direct {v8}, Lcom/taobao/accs/AccsClientConfig$Builder;-><init>()V

    .line 838
    .local v8, "builder":Lcom/taobao/accs/AccsClientConfig$Builder;
    invoke-virtual {v8, v11}, Lcom/taobao/accs/AccsClientConfig$Builder;->setInappHost(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object v1

    .line 839
    invoke-virtual {v1, v12}, Lcom/taobao/accs/AccsClientConfig$Builder;->setInappPubKey(I)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object v1

    .line 840
    invoke-virtual {v1, v9}, Lcom/taobao/accs/AccsClientConfig$Builder;->setChannelHost(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object v1

    .line 841
    invoke-virtual {v1, v12}, Lcom/taobao/accs/AccsClientConfig$Builder;->setChannelPubKey(I)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object v1

    .line 842
    invoke-virtual {v1, v10}, Lcom/taobao/accs/AccsClientConfig$Builder;->setConfigEnv(I)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object v1

    .line 843
    invoke-virtual {v1, v3}, Lcom/taobao/accs/AccsClientConfig$Builder;->setAppKey(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object v1

    const-string/jumbo v2, "default"

    .line 844
    invoke-virtual {v1, v2}, Lcom/taobao/accs/AccsClientConfig$Builder;->setTag(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig$Builder;

    .line 845
    sget-object v1, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v8}, Lcom/taobao/accs/AccsClientConfig$Builder;->build()Lcom/taobao/accs/AccsClientConfig;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/accs/ACCSClient;->init(Landroid/content/Context;Lcom/taobao/accs/AccsClientConfig;)Ljava/lang/String;

    .line 846
    const-string/jumbo v1, "default"

    invoke-static {v1}, Lcom/taobao/accs/ACCSClient;->getAccsClient(Ljava/lang/String;)Lcom/taobao/accs/ACCSClient;

    move-result-object v13

    .line 849
    .local v13, "tbAccsClient":Lcom/taobao/accs/ACCSClient;
    const-string/jumbo v1, "23570660"

    sget-object v2, Lc8/VLj;->versionName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lc8/KLj;->initTLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    new-instance v1, Lc8/HLj;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lc8/HLj;-><init>(Lc8/uLj;)V

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v1}, Lcom/taobao/accs/ACCSClient;->bindApp(Ljava/lang/String;Lcom/taobao/accs/IAppReceiver;)V
    :try_end_1
    .catch Lcom/taobao/accs/AccsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 856
    :try_start_2
    sget-object v1, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    const-string/jumbo v2, "default"

    const/4 v4, 0x0

    new-instance v6, Lc8/mLj;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lc8/mLj;-><init>(Lc8/KLj;)V

    move-object/from16 v5, p1

    invoke-static/range {v1 .. v6}, Lc8/qXe;->register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/mXe;)V
    :try_end_2
    .catch Lcom/taobao/accs/AccsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 898
    .end local v8    # "builder":Lcom/taobao/accs/AccsClientConfig$Builder;
    .end local v13    # "tbAccsClient":Lcom/taobao/accs/ACCSClient;
    :goto_0
    :try_start_3
    invoke-static {v10}, Lc8/KLj;->getYkInappHost(I)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v11

    .line 899
    const/4 v9, 0x0

    .line 903
    :try_start_4
    new-instance v16, Lcom/taobao/accs/AccsClientConfig$Builder;

    invoke-direct/range {v16 .. v16}, Lcom/taobao/accs/AccsClientConfig$Builder;-><init>()V

    .line 904
    .local v16, "youkuBuilder":Lcom/taobao/accs/AccsClientConfig$Builder;
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lcom/taobao/accs/AccsClientConfig$Builder;->setInappHost(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object v1

    .line 905
    invoke-virtual {v1, v12}, Lcom/taobao/accs/AccsClientConfig$Builder;->setInappPubKey(I)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object v1

    .line 906
    invoke-virtual {v1, v9}, Lcom/taobao/accs/AccsClientConfig$Builder;->setChannelHost(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object v1

    .line 907
    invoke-virtual {v1, v12}, Lcom/taobao/accs/AccsClientConfig$Builder;->setChannelPubKey(I)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object v1

    .line 908
    invoke-virtual {v1, v10}, Lcom/taobao/accs/AccsClientConfig$Builder;->setConfigEnv(I)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object v1

    .line 909
    invoke-virtual {v1, v3}, Lcom/taobao/accs/AccsClientConfig$Builder;->setAppKey(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 911
    invoke-virtual {v1, v2}, Lcom/taobao/accs/AccsClientConfig$Builder;->setDisableChannel(Z)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object v1

    const-string/jumbo v2, "youku"

    .line 912
    invoke-virtual {v1, v2}, Lcom/taobao/accs/AccsClientConfig$Builder;->setTag(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig$Builder;

    .line 913
    sget-object v1, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual/range {v16 .. v16}, Lcom/taobao/accs/AccsClientConfig$Builder;->build()Lcom/taobao/accs/AccsClientConfig;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/accs/ACCSClient;->init(Landroid/content/Context;Lcom/taobao/accs/AccsClientConfig;)Ljava/lang/String;

    .line 914
    const-string/jumbo v1, "youku"

    invoke-static {v1}, Lcom/taobao/accs/ACCSClient;->getAccsClient(Ljava/lang/String;)Lcom/taobao/accs/ACCSClient;

    move-result-object v15

    .line 915
    .local v15, "ykAccsClient":Lcom/taobao/accs/ACCSClient;
    new-instance v1, Lc8/ILj;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lc8/ILj;-><init>(Lc8/uLj;)V

    move-object/from16 v0, p1

    invoke-virtual {v15, v0, v1}, Lcom/taobao/accs/ACCSClient;->bindApp(Ljava/lang/String;Lcom/taobao/accs/IAppReceiver;)V
    :try_end_4
    .catch Lcom/taobao/accs/AccsException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    .line 922
    .end local v9    # "channelHost":Ljava/lang/String;
    .end local v11    # "inappHost":Ljava/lang/String;
    .end local v12    # "pubkey":I
    .end local v15    # "ykAccsClient":Lcom/taobao/accs/ACCSClient;
    .end local v16    # "youkuBuilder":Lcom/taobao/accs/AccsClientConfig$Builder;
    :goto_1
    return-void

    .line 888
    .restart local v8    # "builder":Lcom/taobao/accs/AccsClientConfig$Builder;
    .restart local v9    # "channelHost":Ljava/lang/String;
    .restart local v11    # "inappHost":Ljava/lang/String;
    .restart local v12    # "pubkey":I
    .restart local v13    # "tbAccsClient":Lcom/taobao/accs/ACCSClient;
    :catch_0
    move-exception v7

    .line 889
    .local v7, "accsEx":Lcom/taobao/accs/AccsException;
    :try_start_5
    const-string/jumbo v1, "YKAccs.init"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Accs-Taobao register AccsException "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/wHf;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Lcom/taobao/accs/AccsException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 891
    .end local v7    # "accsEx":Lcom/taobao/accs/AccsException;
    .end local v8    # "builder":Lcom/taobao/accs/AccsClientConfig$Builder;
    .end local v13    # "tbAccsClient":Lcom/taobao/accs/ACCSClient;
    :catch_1
    move-exception v7

    .line 892
    .restart local v7    # "accsEx":Lcom/taobao/accs/AccsException;
    :try_start_6
    const-string/jumbo v1, "YKAccs.init"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "init Accs-Taobao AccsException "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/wHf;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    .line 919
    .end local v7    # "accsEx":Lcom/taobao/accs/AccsException;
    .end local v9    # "channelHost":Ljava/lang/String;
    .end local v11    # "inappHost":Ljava/lang/String;
    .end local v12    # "pubkey":I
    :catch_2
    move-exception v14

    .line 920
    .local v14, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v1, "YKAccs.init"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "init Accs Exception "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/wHf;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 916
    .end local v14    # "throwable":Ljava/lang/Throwable;
    .restart local v9    # "channelHost":Ljava/lang/String;
    .restart local v11    # "inappHost":Ljava/lang/String;
    .restart local v12    # "pubkey":I
    :catch_3
    move-exception v7

    .line 917
    .restart local v7    # "accsEx":Lcom/taobao/accs/AccsException;
    :try_start_7
    const-string/jumbo v1, "YKAccs.init"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "init Accs-Youku AccsException "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/wHf;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_1
.end method

.method private initApplink(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1024
    invoke-static {p0}, Lc8/dpf;->getClipboardUtils(Landroid/app/Application;)Lc8/dpf;

    .line 1026
    new-instance v0, Lc8/oLj;

    invoke-direct {v0, p0}, Lc8/oLj;-><init>(Lc8/KLj;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1052
    return-void
.end method

.method private initMotuCrashReporter(Ljava/lang/String;)V
    .locals 2
    .param p1, "ttid"    # Ljava/lang/String;

    .prologue
    .line 585
    invoke-static {}, Lc8/XSb;->getInstance()Lc8/XSb;

    move-result-object v0

    invoke-static {}, Lc8/Iin;->getTTID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/XSb;->setTTid(Ljava/lang/String;)V

    .line 586
    invoke-static {}, Lc8/XSb;->getInstance()Lc8/XSb;

    move-result-object v0

    new-instance v1, Lc8/ALj;

    invoke-direct {v1, p0}, Lc8/ALj;-><init>(Lc8/KLj;)V

    .line 587
    invoke-virtual {v0, v1}, Lc8/XSb;->setCrashCaughtListener(Lc8/SSb;)V

    .line 609
    return-void
.end method

.method private initNetworkConfig()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 741
    sget-object v3, Lc8/hap;->EGG_DIALOG_SPDY_KEY:Ljava/lang/String;

    invoke-static {p0, v3}, Lc8/hap;->getPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 742
    .local v1, "spdy":Ljava/lang/String;
    sget-object v3, Lc8/hap;->EGG_DIALOG_SSL_KEY:Ljava/lang/String;

    invoke-static {p0, v3}, Lc8/hap;->getPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 743
    .local v2, "ssl":Ljava/lang/String;
    sget-object v3, Lc8/hap;->EGG_DIALOG_HTTPS_VALIDATION_KEY:Ljava/lang/String;

    invoke-static {p0, v3}, Lc8/hap;->getPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 744
    .local v0, "httpsValidation":Ljava/lang/String;
    sget-object v3, Lc8/hap;->EGG_DIALOG_PC_NO:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 745
    invoke-static {v6}, Lc8/qN;->setSpdyEnabled(Z)V

    .line 747
    :cond_0
    sget-object v3, Lc8/hap;->EGG_DIALOG_PC_NO:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 748
    invoke-static {v6}, Lc8/qN;->setSSLEnabled(Z)V

    .line 750
    :cond_1
    sget-object v3, Lc8/hap;->EGG_DIALOG_PC_NO:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 751
    invoke-static {v6}, Lc8/qN;->setHttpsValidationEnabled(Z)V

    .line 754
    :cond_2
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "network_http_ip_retry_new"

    aput-object v5, v4, v6

    new-instance v5, Lc8/jLj;

    invoke-direct {v5, p0}, Lc8/jLj;-><init>(Lc8/KLj;)V

    invoke-virtual {v3, v4, v5}, Lc8/ctf;->registerListener([Ljava/lang/String;Lcom/taobao/orange/OrangeConfigListenerV1;)V

    .line 765
    return-void
.end method

.method private initOrange()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1076
    sget v3, Lc8/Dfh;->envType:I

    invoke-static {v3}, Lc8/KLj;->getAppkey(I)Ljava/lang/String;

    move-result-object v0

    .line 1077
    .local v0, "appkey":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1078
    .local v2, "env":I
    sget v3, Lc8/Dfh;->envType:I

    if-ne v3, v8, :cond_1

    .line 1079
    const/4 v2, 0x2

    .line 1084
    :cond_0
    :goto_0
    invoke-static {v6}, Lc8/buf;->setUseTlog(Z)V

    .line 1085
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Appkey: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1086
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "env: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1088
    new-instance v3, Lc8/Msf;

    invoke-direct {v3}, Lc8/Msf;-><init>()V

    .line 1089
    invoke-virtual {v3, v2}, Lc8/Msf;->setEnv(I)Lc8/Msf;

    move-result-object v3

    .line 1090
    invoke-virtual {v3, v0}, Lc8/Msf;->setAppKey(Ljava/lang/String;)Lc8/Msf;

    move-result-object v3

    sget-object v4, Lc8/VLj;->versionName:Ljava/lang/String;

    .line 1091
    invoke-virtual {v3, v4}, Lc8/Msf;->setAppVersion(Ljava/lang/String;)Lc8/Msf;

    move-result-object v3

    sget-object v4, Lcom/taobao/orange/OConstant$SERVER;->YOUKU:Lcom/taobao/orange/OConstant$SERVER;

    .line 1092
    invoke-virtual {v4}, Lcom/taobao/orange/OConstant$SERVER;->ordinal()I

    move-result v4

    invoke-virtual {v3, v4}, Lc8/Msf;->setServerType(I)Lc8/Msf;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "acs.youku.com"

    aput-object v5, v4, v6

    const-string/jumbo v5, "pre-acs.youku.com"

    aput-object v5, v4, v7

    const-string/jumbo v5, "daily-acs.youku.com"

    aput-object v5, v4, v8

    .line 1093
    invoke-virtual {v3, v4}, Lc8/Msf;->setProbeHosts([Ljava/lang/String;)Lc8/Msf;

    move-result-object v3

    sget-object v4, Lcom/taobao/orange/OConstant$UPDMODE;->O_ALL:Lcom/taobao/orange/OConstant$UPDMODE;

    .line 1094
    invoke-virtual {v4}, Lcom/taobao/orange/OConstant$UPDMODE;->ordinal()I

    move-result v4

    invoke-virtual {v3, v4}, Lc8/Msf;->setIndexUpdateMode(I)Lc8/Msf;

    move-result-object v3

    .line 1095
    invoke-virtual {v3}, Lc8/Msf;->build()Lc8/Nsf;

    move-result-object v1

    .line 1096
    .local v1, "config":Lc8/Nsf;
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v3

    invoke-virtual {v3, p0, v1}, Lc8/ctf;->init(Landroid/content/Context;Lc8/Nsf;)V

    .line 1097
    invoke-virtual {p0}, Lc8/KLj;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lc8/iOf;->init(Landroid/content/Context;)V

    .line 1098
    invoke-direct {p0}, Lc8/KLj;->registerOrangeListener()V

    .line 1099
    return-void

    .line 1080
    .end local v1    # "config":Lc8/Nsf;
    :cond_1
    sget v3, Lc8/Dfh;->envType:I

    if-ne v3, v7, :cond_0

    .line 1081
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method private initPhenix()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1211
    sget-object v0, Lcom/youku/phone/phenix/PhenixUtil;->getInstance:Lcom/youku/phone/phenix/PhenixUtil;

    invoke-virtual {v0, p0}, Lcom/youku/phone/phenix/PhenixUtil;->init(Landroid/content/Context;)V

    .line 1213
    invoke-static {}, Lc8/ixf;->instance()Lc8/ixf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc8/ixf;->with(Landroid/content/Context;)Lc8/ixf;

    .line 1215
    invoke-static {}, Lc8/ixf;->instance()Lc8/ixf;

    move-result-object v0

    invoke-virtual {v0, v3}, Lc8/ixf;->skipGenericTypeCheck(Z)V

    .line 1217
    sget-boolean v0, Lc8/FWc;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1218
    const/4 v0, 0x6

    invoke-static {v0}, Lc8/qwf;->setMinLevel(I)V

    .line 1221
    :cond_0
    invoke-static {v3, v3}, Lc8/Dwf;->setupScheduler(ZZ)V

    .line 1223
    invoke-static {p0}, Lc8/Cwf;->setupHttpLoader(Landroid/content/Context;)V

    .line 1225
    invoke-static {}, Lc8/ixf;->instance()Lc8/ixf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/ixf;->diskCacheBuilder()Lc8/vvf;

    move-result-object v0

    new-instance v1, Lc8/wwf;

    invoke-direct {v1}, Lc8/wwf;-><init>()V

    invoke-virtual {v0, v1}, Lc8/vvf;->with(Lc8/Mvf;)Lc8/vvf;

    .line 1227
    sget-object v0, Lcom/youku/phone/phenix/PhenixUtil;->getInstance:Lcom/youku/phone/phenix/PhenixUtil;

    invoke-virtual {v0}, Lcom/youku/phone/phenix/PhenixUtil;->isCustomCacheKey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1228
    sget-object v0, Lcom/youku/phone/phenix/PhenixUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "****** \u652f\u6301\u81ea\u5b9a\u4e49\u7f13\u5b58key"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lc8/qwf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1230
    invoke-static {}, Lc8/ixf;->instance()Lc8/ixf;

    move-result-object v0

    new-instance v1, Lc8/szk;

    invoke-direct {v1}, Lc8/szk;-><init>()V

    invoke-virtual {v0, v1}, Lc8/ixf;->setCacheKeyInspector(Lc8/Dvf;)V

    .line 1233
    :cond_1
    invoke-static {}, Lc8/ixf;->instance()Lc8/ixf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/ixf;->build()V

    .line 1235
    invoke-static {}, Lc8/ixf;->instance()Lc8/ixf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/ixf;->bytesPoolBuilder()Lc8/tvf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/tvf;->build()Lc8/JNf;

    move-result-object v0

    invoke-static {v0}, Lc8/nuf;->setBytesPool(Lc8/JNf;)V

    .line 1237
    invoke-static {p0}, Lc8/nuf;->prepare(Landroid/content/Context;)V

    .line 1239
    invoke-direct {p0}, Lc8/KLj;->createNetworkAnalyzer()Lc8/Pwf;

    move-result-object v0

    const/16 v1, 0x14

    const/high16 v2, 0x100000

    invoke-static {p0, v0, v1, v2}, Lc8/zwf;->setupFlowMonitor(Landroid/content/Context;Lc8/Pwf;II)V

    .line 1241
    invoke-static {v3}, Lc8/DOf;->skipAutoSizeGlobally(Z)V

    .line 1243
    new-instance v0, Lc8/tzk;

    invoke-direct {v0}, Lc8/tzk;-><init>()V

    invoke-static {v0}, Lc8/DOf;->setGlobalFinalUrlInspector(Lc8/COf;)V

    .line 1244
    return-void
.end method

.method private initStaticConstants()V
    .locals 4

    .prologue
    .line 537
    iget-object v1, p0, Lc8/KLj;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_0

    .line 538
    iget-object v1, p0, Lc8/KLj;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v1, Lc8/VLj;->versionCode:I

    .line 539
    iget-object v1, p0, Lc8/KLj;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v1, Lc8/VLj;->versionName:Ljava/lang/String;

    .line 541
    :cond_0
    invoke-static {p0}, Lc8/Myo;->setApplication(Landroid/app/Application;)V

    .line 542
    invoke-static {p0}, Lc8/Gyo;->init(Landroid/app/Application;)V

    .line 543
    sget-object v1, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    sput-object v1, Lc8/VLj;->context:Landroid/content/Context;

    .line 544
    sget-object v1, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lc8/KLj;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_preferences"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 546
    sput-object v1, Lc8/VLj;->s:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sput-object v1, Lc8/VLj;->e:Landroid/content/SharedPreferences$Editor;

    .line 547
    sget-object v1, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    sput-object v1, Lc8/KWc;->mContext:Landroid/content/Context;

    .line 548
    sget-object v1, Lc8/VLj;->s:Landroid/content/SharedPreferences;

    sput-object v1, Lc8/tSh;->s:Landroid/content/SharedPreferences;

    .line 549
    sget-object v1, Lc8/VLj;->e:Landroid/content/SharedPreferences$Editor;

    sput-object v1, Lc8/tSh;->e:Landroid/content/SharedPreferences$Editor;

    .line 550
    sget-object v1, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    sput-object v1, Lc8/oSh;->mContext:Landroid/content/Context;

    .line 551
    sget-object v1, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    sput-object v1, Lc8/ddn;->context:Landroid/content/Context;

    .line 552
    invoke-static {}, Lc8/edn;->getInstance()Lc8/ddn;

    .line 553
    invoke-static {}, Lc8/VLj;->setLog()V

    .line 557
    invoke-static {}, Lc8/VLj;->setApi()V

    .line 559
    sget-object v1, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-static {v1}, Lc8/WHg;->getGUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 560
    sput-object v1, Lc8/VLj;->GUID:Ljava/lang/String;

    sput-object v1, Lc8/Dfh;->GUID:Ljava/lang/String;

    .line 561
    sget-object v1, Lc8/VLj;->versionName:Ljava/lang/String;

    sput-object v1, Lc8/Dfh;->versionName:Ljava/lang/String;

    .line 562
    sget v1, Lc8/VLj;->versionCode:I

    sput v1, Lc8/Dfh;->versionCode:I

    .line 563
    invoke-static {}, Lc8/Iin;->isPad()Z

    move-result v1

    sput-boolean v1, Lc8/VLj;->isTablet:Z

    .line 564
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v1, Lc8/VLj;->isTablet:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "Youku HD;"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lc8/VLj;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";Android;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 566
    sput-object v1, Lc8/VLj;->User_Agent:Ljava/lang/String;

    sput-object v1, Lc8/Dfh;->User_Agent:Ljava/lang/String;

    .line 567
    sget-object v1, Lc8/VLj;->User_Agent:Ljava/lang/String;

    sput-object v1, Lc8/oSh;->User_Agent:Ljava/lang/String;

    .line 568
    sget-object v1, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-static {v1}, Lc8/Bfh;->getPid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lc8/Bfh;->Wireless_pid:Ljava/lang/String;

    .line 569
    invoke-static {}, Lc8/Iin;->getChannelID()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lc8/Bfh;->Wireless_channel_id:Ljava/lang/String;

    .line 570
    invoke-static {}, Lc8/thn;->getInstance()Lc8/thn;

    move-result-object v1

    invoke-virtual {v1}, Lc8/thn;->isLogin()Z

    move-result v1

    .line 571
    sput-boolean v1, Lc8/VLj;->isLogined:Z

    if-eqz v1, :cond_1

    .line 572
    invoke-static {}, Lc8/bzo;->getPassportCookie()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lc8/VLj;->COOKIE:Ljava/lang/String;

    .line 573
    const-string/jumbo v1, "userName"

    invoke-static {v1}, Lc8/VLj;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 574
    .local v0, "userName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 575
    sput-object v0, Lc8/VLj;->userName:Ljava/lang/String;

    .line 576
    sget-object v1, Lc8/VLj;->User_Agent:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 577
    const-string/jumbo v1, "uid"

    invoke-static {v1}, Lc8/VLj;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lc8/VLj;->uid:Ljava/lang/String;

    .line 581
    .end local v0    # "userName":Ljava/lang/String;
    :cond_1
    sget-object v1, Lc8/VLj;->User_Agent:Ljava/lang/String;

    sput-object v1, Lc8/KWc;->User_Agent:Ljava/lang/String;

    .line 582
    return-void

    .line 564
    :cond_2
    const-string/jumbo v1, "Youku;"

    goto :goto_0
.end method

.method private initTLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "appkey"    # Ljava/lang/String;
    .param p2, "appversion"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 667
    const/4 v1, 0x0

    .line 669
    .local v1, "publish_type":I
    :try_start_0
    invoke-virtual {p0}, Lc8/KLj;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/youku/phone/R$string;->publish_type:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 673
    :goto_0
    if-ne v1, v7, :cond_3

    .line 674
    invoke-static {}, Lc8/AHf;->getInstance()Lc8/AHf;

    move-result-object v4

    invoke-virtual {p0}, Lc8/KLj;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/youku/phone/R$string;->tlog_level:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lc8/AHf;->setLogLevel(Ljava/lang/String;)V

    .line 675
    invoke-virtual {p0}, Lc8/KLj;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/youku/phone/R$string;->tlog_switch:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 676
    .local v3, "tlog_switch":Ljava/lang/String;
    const-string/jumbo v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 677
    invoke-static {}, Lc8/AHf;->getInstance()Lc8/AHf;

    move-result-object v4

    invoke-virtual {v4, v7}, Lc8/AHf;->openLog(Z)V

    .line 682
    :goto_1
    invoke-virtual {p0}, Lc8/KLj;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/youku/phone/R$string;->tlog_auto_close:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 683
    .local v2, "tlog_auto_close":Ljava/lang/String;
    const-string/jumbo v4, "true"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 684
    invoke-static {}, Lc8/AHf;->getInstance()Lc8/AHf;

    move-result-object v4

    invoke-virtual {v4, v7}, Lc8/AHf;->openAutoClose(Z)V

    .line 689
    :goto_2
    invoke-virtual {p0}, Lc8/KLj;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/youku/phone/R$string;->tlog_module:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc8/IHf;->makeModule(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 690
    .local v0, "modules":Ljava/util/Map;
    invoke-static {}, Lc8/AHf;->getInstance()Lc8/AHf;

    move-result-object v4

    invoke-virtual {v4, v0}, Lc8/AHf;->setModuleFilter(Ljava/util/Map;)V

    .line 691
    invoke-static {}, Lc8/AHf;->getInstance()Lc8/AHf;

    move-result-object v4

    invoke-virtual {v4, p0}, Lc8/AHf;->init(Landroid/content/Context;)V

    .line 699
    .end local v0    # "modules":Ljava/util/Map;
    .end local v2    # "tlog_auto_close":Ljava/lang/String;
    .end local v3    # "tlog_switch":Ljava/lang/String;
    :goto_3
    sget-boolean v4, Lc8/VLj;->isShowLog:Z

    invoke-static {v4}, Lc8/EHf;->openConsole(Z)V

    .line 700
    invoke-static {p2}, Lc8/EHf;->setAppVersion(Ljava/lang/String;)V

    .line 701
    invoke-static {}, Lc8/bzo;->getUtdid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc8/EHf;->setUtdid(Ljava/lang/String;)V

    .line 702
    invoke-static {}, Lc8/AHf;->getInstance()Lc8/AHf;

    move-result-object v4

    invoke-static {v4}, Lc8/EHf;->setTLogController(Lc8/tHf;)V

    .line 703
    const-string/jumbo v4, "YouKu"

    invoke-static {p0, v9, v4, p1}, Lc8/EHf;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    invoke-static {}, Lc8/fWb;->sharedInstance()Lc8/fWb;

    move-result-object v4

    invoke-virtual {v4}, Lc8/fWb;->isInitialized()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 706
    const-string/jumbo v4, "remote-debug"

    new-instance v5, Lc8/JLj;

    invoke-direct {v5, p0, v9}, Lc8/JLj;-><init>(Lc8/KLj;Lc8/uLj;)V

    invoke-static {v4, v5}, Lc8/EHf;->registerCommandParser(Ljava/lang/String;Lc8/rHf;)V

    .line 708
    :cond_0
    return-void

    .line 679
    .restart local v3    # "tlog_switch":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lc8/AHf;->getInstance()Lc8/AHf;

    move-result-object v4

    invoke-virtual {v4, v8}, Lc8/AHf;->openLog(Z)V

    goto :goto_1

    .line 686
    .restart local v2    # "tlog_auto_close":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lc8/AHf;->getInstance()Lc8/AHf;

    move-result-object v4

    invoke-virtual {v4, v8}, Lc8/AHf;->openAutoClose(Z)V

    goto :goto_2

    .line 693
    .end local v2    # "tlog_auto_close":Ljava/lang/String;
    .end local v3    # "tlog_switch":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lc8/AHf;->getInstance()Lc8/AHf;

    move-result-object v4

    const-string/jumbo v5, "INFO"

    invoke-virtual {v4, v5}, Lc8/AHf;->setLogLevel(Ljava/lang/String;)V

    .line 694
    invoke-static {}, Lc8/AHf;->getInstance()Lc8/AHf;

    move-result-object v4

    invoke-virtual {v4, v7}, Lc8/AHf;->openLog(Z)V

    .line 695
    invoke-static {}, Lc8/AHf;->getInstance()Lc8/AHf;

    move-result-object v4

    invoke-virtual {v4, v8}, Lc8/AHf;->openAutoClose(Z)V

    .line 696
    invoke-static {}, Lc8/AHf;->getInstance()Lc8/AHf;

    move-result-object v4

    invoke-virtual {v4, p0}, Lc8/AHf;->init(Landroid/content/Context;)V

    goto :goto_3

    :catch_0
    move-exception v4

    goto/16 :goto_0
.end method

.method private initThirdPartyPush()V
    .locals 3

    .prologue
    .line 1058
    sget-object v0, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-static {v0}, Lc8/Hzk;->checkXiaomiDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1059
    const-string/jumbo v0, "YKAccs.init"

    const-string/jumbo v1, "Agoo MiPushRegistar register"

    invoke-static {v0, v1}, Lc8/wHf;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    sget-object v0, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    const-string/jumbo v1, "2882303761517133985"

    const-string/jumbo v2, "5301713335985"

    invoke-static {v0, v1, v2}, Lc8/sXp;->register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    :cond_0
    :goto_0
    return-void

    .line 1062
    :cond_1
    invoke-static {}, Lc8/Hzk;->checkHuaweiDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1063
    const-string/jumbo v0, "YKAccs.init"

    const-string/jumbo v1, "Agoo HuaWeiRegister register"

    invoke-static {v0, v1}, Lc8/wHf;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    sget-object v0, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-static {v0}, Lc8/XWp;->register(Landroid/content/Context;)V

    goto :goto_0

    .line 1065
    :cond_2
    invoke-static {}, Lc8/Hzk;->checkMeizuDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1066
    const-string/jumbo v0, "YKAccs.init"

    const-string/jumbo v1, "Agoo MeizuRegister register"

    invoke-static {v0, v1}, Lc8/wHf;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    sget-object v0, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    const-string/jumbo v1, "111543"

    const-string/jumbo v2, "78b50ff684ca435b81036e1d04b6dd81"

    invoke-static {v0, v1, v2}, Lc8/gXp;->register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private intiAVFS()V
    .locals 3

    .prologue
    .line 528
    invoke-static {}, Lc8/yXe;->getInstance()Lc8/yXe;

    move-result-object v1

    invoke-static {}, Lc8/Myo;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc8/yXe;->ensureInitialized(Landroid/app/Application;)V

    .line 530
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 531
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.taobao.alivfssdk.monitor.AVFSMonitorService"

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 532
    invoke-virtual {p0, v0}, Lc8/KLj;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 533
    return-void
.end method

.method private mtopLocation()V
    .locals 2

    .prologue
    .line 612
    new-instance v0, Lc8/CLj;

    invoke-direct {v0, p0}, Lc8/CLj;-><init>(Lc8/KLj;)V

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lc8/Vcf;->execute(Ljava/lang/Runnable;I)V

    .line 645
    return-void
.end method

.method private preInstallBundles()V
    .locals 7

    .prologue
    .line 711
    invoke-static {}, Lc8/dy;->getInstance()Lc8/dy;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "com.youku.phone.homecms"

    aput-object v6, v4, v5

    new-instance v5, Lc8/iLj;

    invoke-direct {v5, p0}, Lc8/iLj;-><init>(Lc8/KLj;)V

    invoke-virtual {v3, v4, v5}, Lc8/dy;->installBundleTransitivelyAsync([Ljava/lang/String;Lc8/ly;)V

    .line 718
    const-string/jumbo v0, "com.youku.android.player.container"

    .line 720
    .local v0, "adBundle":Ljava/lang/String;
    invoke-static {}, Lc8/dy;->getInstance()Lc8/dy;

    move-result-object v3

    invoke-virtual {v3, v0}, Lc8/dy;->installBundleWithDependency(Ljava/lang/String;)V

    .line 722
    invoke-static {}, Lc8/dy;->getInstance()Lc8/dy;

    move-result-object v3

    invoke-virtual {v3, v0}, Lc8/dy;->getBundle(Ljava/lang/String;)Lc8/Seq;

    move-result-object v2

    check-cast v2, Lc8/hy;

    .line 723
    .local v2, "impl":Lc8/hy;
    if-eqz v2, :cond_0

    .line 725
    :try_start_0
    invoke-virtual {v2}, Lc8/hy;->start()V

    .line 726
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " start\u6210\u529f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/osgi/framework/BundleException; {:try_start_0 .. :try_end_0} :catch_0

    .line 731
    :cond_0
    :goto_0
    return-void

    .line 727
    :catch_0
    move-exception v1

    .line 728
    .local v1, "e":Lorg/osgi/framework/BundleException;
    invoke-virtual {v1}, Lorg/osgi/framework/BundleException;->printStackTrace()V

    goto :goto_0
.end method

.method private registerOrangeListener()V
    .locals 4

    .prologue
    .line 1102
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "yk_mtop_switch_config"

    aput-object v3, v1, v2

    new-instance v2, Lc8/pLj;

    invoke-direct {v2, p0}, Lc8/pLj;-><init>(Lc8/KLj;)V

    invoke-virtual {v0, v1, v2}, Lc8/ctf;->registerListener([Ljava/lang/String;Lcom/taobao/orange/OrangeConfigListenerV1;)V

    .line 1114
    return-void
.end method

.method private registerPassportListener()V
    .locals 1

    .prologue
    .line 1430
    iget-boolean v0, p0, Lc8/KLj;->isRegistered:Z

    if-nez v0, :cond_0

    .line 1431
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/KLj;->isRegistered:Z

    .line 1433
    invoke-static {}, Lc8/GLj;->getInstance()Lc8/GLj;

    move-result-object v0

    invoke-static {v0}, Lc8/Gko;->registerListener(Lc8/lko;)V

    .line 1435
    :cond_0
    return-void
.end method

.method private sendDelayMessage()V
    .locals 4

    .prologue
    .line 1586
    iget-boolean v0, p0, Lc8/KLj;->mAlreadySendDelayMessage:Z

    if-nez v0, :cond_0

    .line 1587
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/KLj;->mAlreadySendDelayMessage:Z

    .line 1588
    iget-object v0, p0, Lc8/KLj;->internalHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1589
    iget-object v0, p0, Lc8/KLj;->internalHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1590
    iget-object v0, p0, Lc8/KLj;->internalHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1591
    iget-object v0, p0, Lc8/KLj;->internalHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1593
    :cond_0
    return-void
.end method

.method private startGameCenterCoreService()V
    .locals 2

    .prologue
    .line 649
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.aligame.gamecenter.core.GameCenterCoreService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 650
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lc8/KLj;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 651
    invoke-virtual {p0, v0}, Lc8/KLj;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 655
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private toggleArrayMapCache()V
    .locals 6

    .prologue
    .line 233
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v4, v5, :cond_0

    .line 235
    :try_start_0
    const-string/jumbo v4, "android.util.ArrayMap"

    invoke-static {v4}, Lc8/KLj;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 236
    .local v0, "arrayMap":Ljava/lang/Class;
    if-eqz v0, :cond_0

    .line 237
    const-string/jumbo v4, "mBaseCacheSize"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 238
    .local v1, "baseCacheSizeField":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 239
    const/4 v4, 0x0

    const v5, 0x5f5e100

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 241
    const-string/jumbo v4, "mTwiceBaseCacheSize"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 242
    .local v3, "twiceBaseSizeField":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 243
    const/4 v4, 0x0

    const v5, 0x5f5e100

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    .end local v0    # "arrayMap":Ljava/lang/Class;
    .end local v1    # "baseCacheSizeField":Ljava/lang/reflect/Field;
    .end local v3    # "twiceBaseSizeField":Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    return-void

    .line 245
    :catch_0
    move-exception v2

    .line 246
    .local v2, "e":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 8
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lc8/KLj;->mAppAttachStartTime:J

    .line 200
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 201
    .local v3, "packageName":Ljava/lang/String;
    invoke-static {p1}, Lc8/VLj;->getCurProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 202
    .local v2, "isMainProcess":Z
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 204
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v6, 0x80

    invoke-virtual {v4, v3, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iput-object v4, p0, Lc8/KLj;->mPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :goto_0
    if-eqz v2, :cond_0

    .line 212
    invoke-static {}, Lc8/fWb;->sharedInstance()Lc8/fWb;

    move-result-object v6

    const-string/jumbo v7, "23570660@android"

    iget-object v4, p0, Lc8/KLj;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lc8/KLj;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :goto_1
    invoke-virtual {v6, p0, v7, v4}, Lc8/fWb;->initialize(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-static {}, Lc8/fWb;->sharedInstance()Lc8/fWb;

    move-result-object v6

    iget-object v4, p0, Lc8/KLj;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lc8/KLj;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget v4, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    :goto_2
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lc8/fWb;->setBuildId(Ljava/lang/String;)V

    .line 216
    invoke-static {p1}, Lc8/KPg;->setup(Landroid/content/Context;)V

    .line 217
    invoke-direct {p0}, Lc8/KLj;->toggleArrayMapCache()V

    .line 220
    const/4 v4, 0x3

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v4, "com.youku.phone.ActivityWelcome"

    aput-object v4, v0, v5

    const/4 v4, 0x1

    const-string/jumbo v5, "com.youku.ui.activity.HomePageActivity"

    aput-object v5, v0, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "com.youku.HomePageEntry"

    aput-object v5, v0, v4

    .line 224
    .local v0, "bootActivityArray":[Ljava/lang/String;
    const-wide/16 v4, 0x0

    invoke-static {v0, v4, v5}, Lc8/Lef;->setBootPath([Ljava/lang/String;J)V

    .line 225
    invoke-static {p0, p1}, Lc8/Lef;->init(Landroid/app/Application;Landroid/content/Context;)V

    .line 229
    .end local v0    # "bootActivityArray":[Ljava/lang/String;
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lc8/KLj;->mAppAttachEndTime:J

    .line 230
    return-void

    .line 206
    :catch_0
    move-exception v1

    .line 207
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 212
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    const-string/jumbo v4, ""

    goto :goto_1

    :cond_2
    move v4, v5

    .line 214
    goto :goto_2
.end method

.method public cancelExit()V
    .locals 2

    .prologue
    .line 1599
    iget-object v0, p0, Lc8/KLj;->internalHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1600
    return-void
.end method

.method public delayExit()V
    .locals 4

    .prologue
    .line 1606
    iget-object v0, p0, Lc8/KLj;->internalHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1607
    return-void
.end method

.method public onCreate()V
    .locals 14
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 255
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lc8/KLj;->mAppCreateStartTime:J

    .line 256
    invoke-virtual {p0}, Lc8/KLj;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 258
    .local v10, "packageName":Ljava/lang/String;
    sget-object v0, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-static {v0}, Lc8/VLj;->getCurProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 259
    .local v6, "currentProcessName":Ljava/lang/String;
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 260
    .local v3, "isMainProcess":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":download"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 261
    .local v5, "isDownloadProcess":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":channel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 263
    .local v4, "isChannelProcess":Z
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 266
    sget-object v0, Lc8/VLj;->currentProcessName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v12, ":phone_monitor"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lc8/VLj;->currentProcessName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v12, ":PcdnVodService"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 267
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v5, :cond_1

    .line 269
    :cond_0
    invoke-static {}, Lc8/dy;->getInstance()Lc8/dy;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v13, "com.youku.phone.commonbundle"

    aput-object v13, v1, v12

    new-instance v12, Lc8/uLj;

    invoke-direct {v12, p0}, Lc8/uLj;-><init>(Lc8/KLj;)V

    invoke-virtual {v0, v1, v12}, Lc8/dy;->installBundleTransitivelyAsync([Ljava/lang/String;Lc8/ly;)V

    .line 287
    :cond_1
    if-nez v3, :cond_2

    if-nez v5, :cond_2

    if-nez v4, :cond_2

    .line 521
    :goto_0
    return-void

    .line 291
    :cond_2
    invoke-direct {p0}, Lc8/KLj;->initStaticConstants()V

    .line 294
    invoke-static {}, Lc8/lzb;->getInstance()Lc8/lzb;

    move-result-object v0

    const-string/jumbo v1, "23570660"

    invoke-virtual {v0, v1}, Lc8/lzb;->setAppKey(Ljava/lang/String;)V

    .line 295
    invoke-static {}, Lc8/lzb;->getInstance()Lc8/lzb;

    move-result-object v0

    sget-object v1, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v0, v1}, Lc8/lzb;->setContext(Landroid/content/Context;)V

    .line 296
    if-eqz v3, :cond_3

    .line 297
    sget-object v0, Lcom/youku/android/BootMonitorManager;->getInstance:Lcom/youku/android/BootMonitorManager;

    invoke-virtual {v0, p0}, Lcom/youku/android/BootMonitorManager;->init(Landroid/content/Context;)V

    .line 299
    invoke-direct {p0}, Lc8/KLj;->preInstallBundles()V

    .line 301
    invoke-static {}, Lc8/DIj;->registerPreprocessor()V

    .line 304
    :cond_3
    new-instance v9, Landroid/os/HandlerThread;

    const-string/jumbo v0, "application-startup"

    invoke-direct {v9, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 305
    .local v9, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v9}, Landroid/os/HandlerThread;->start()V

    .line 306
    const/16 v0, 0xa

    invoke-virtual {v9, v0}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 307
    new-instance v8, Landroid/os/Handler;

    invoke-virtual {v9}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v8, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 309
    .local v8, "handler":Landroid/os/Handler;
    invoke-static {}, Lc8/GWc;->apply()V

    .line 312
    if-eqz v3, :cond_4

    .line 313
    new-instance v0, Lcom/youku/phone/Youku$2;

    invoke-direct {v0, p0}, Lcom/youku/phone/Youku$2;-><init>(Lc8/KLj;)V

    invoke-static {v0}, Lc8/uL;->setInitHosts(Ljava/util/List;)V

    .line 318
    :cond_4
    invoke-static {}, Lc8/Iin;->getTTID()Ljava/lang/String;

    move-result-object v2

    .line 320
    .local v2, "ttid":Ljava/lang/String;
    new-instance v0, Lc8/vLj;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lc8/vLj;-><init>(Lc8/KLj;Ljava/lang/String;ZZZ)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 343
    sget-object v0, Landroid/taobao/atlas/runtime/RuntimeVariables;->delegateClassLoader:Lc8/Yy;

    invoke-static {v0}, Lc8/Jcf;->setSystemClassloader(Ljava/lang/ClassLoader;)V

    .line 347
    sget-object v0, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-static {v0}, Lc8/rin;->getInstance(Landroid/content/Context;)Lc8/rin;

    move-result-object v0

    sput-object v0, Lc8/VLj;->iStaticsManager:Lc8/rin;

    .line 350
    invoke-static {}, Lc8/lSh;->init()V

    .line 352
    if-eqz v3, :cond_5

    .line 353
    invoke-direct {p0, v2}, Lc8/KLj;->initMotuCrashReporter(Ljava/lang/String;)V

    .line 354
    new-instance v0, Lc8/wLj;

    invoke-direct {v0, p0}, Lc8/wLj;-><init>(Lc8/KLj;)V

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lc8/Vcf;->execute(Ljava/lang/Runnable;I)V

    .line 363
    invoke-static {}, Lc8/tLn;->getInstance()Lc8/tLn;

    move-result-object v0

    invoke-virtual {v0}, Lc8/tLn;->initUPasswordSDK()V

    .line 364
    new-instance v0, Lc8/xLj;

    invoke-direct {v0, p0}, Lc8/xLj;-><init>(Lc8/KLj;)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 389
    :cond_5
    invoke-static {}, Lc8/thn;->getInstance()Lc8/thn;

    move-result-object v0

    sget-object v1, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v0, v1, v3}, Lc8/thn;->initPassportSDK(Landroid/content/Context;Z)V

    .line 391
    if-eqz v3, :cond_6

    .line 392
    new-instance v0, Lc8/NLj;

    invoke-direct {v0}, Lc8/NLj;-><init>()V

    invoke-virtual {p0, v0}, Lc8/KLj;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 394
    invoke-direct {p0}, Lc8/KLj;->initABTest()V

    .line 398
    :try_start_0
    sget-object v0, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lc8/VZe;->init(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    :goto_1
    invoke-direct {p0, v8}, Lc8/KLj;->initApplink(Landroid/os/Handler;)V

    .line 412
    :cond_6
    :try_start_1
    const-string/jumbo v0, "android.os.AsyncTask"

    invoke-static {v0}, Lc8/KLj;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 415
    const-string/jumbo v0, "com.youku.network.YoukuAsyncTask"

    invoke-static {v0}, Lc8/KLj;->_1forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 421
    :goto_2
    if-eqz v3, :cond_7

    .line 423
    new-instance v0, Lc8/yLj;

    invoke-direct {v0, p0}, Lc8/yLj;-><init>(Lc8/KLj;)V

    invoke-static {v0}, Lc8/msf;->registerOnAccurateBootListener(Lc8/bsf;)Z

    .line 498
    :cond_7
    if-eqz v5, :cond_8

    .line 499
    invoke-direct {p0}, Lc8/KLj;->startGameCenterCoreService()V

    .line 502
    :cond_8
    invoke-static {}, Lc8/Gfn;->getInstance()Lc8/Gfn;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lc8/Gfn;->init(Landroid/content/Context;Lc8/uen;)V

    .line 503
    invoke-static {}, Lc8/Gfn;->getInstance()Lc8/Gfn;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc8/Gfn;->observePassportChange(Landroid/content/Context;)V

    .line 505
    new-instance v0, Lc8/zLj;

    invoke-direct {v0, p0, v9}, Lc8/zLj;-><init>(Lc8/KLj;Landroid/os/HandlerThread;)V

    const-wide/16 v12, 0x2710

    invoke-virtual {v8, v0, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 515
    invoke-direct {p0}, Lc8/KLj;->intiAVFS()V

    .line 516
    if-eqz v3, :cond_9

    .line 518
    iget-object v0, p0, Lc8/KLj;->internalHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    const-wide/16 v12, 0x2710

    invoke-virtual {v0, v1, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 520
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lc8/KLj;->mAppCreateEndTime:J

    goto/16 :goto_0

    .line 400
    :catch_0
    move-exception v11

    .line 401
    .local v11, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v0, "YKGLOBAL.Youku"

    invoke-static {v0, v11}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 416
    .end local v11    # "throwable":Ljava/lang/Throwable;
    :catch_1
    move-exception v7

    .line 417
    .local v7, "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v0, "YKGLOBAL.Youku"

    invoke-static {v0, v7}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 1017
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 1019
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1020
    return-void
.end method

.method public onVivoChannelIdEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "oldchannel_id"    # Ljava/lang/String;
    .param p2, "changedchannel_id"    # Ljava/lang/String;

    .prologue
    .line 1446
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1447
    .local v5, "args":Ljava/util/HashMap;
    const-string/jumbo v0, "eventType"

    const-string/jumbo v1, "changechannel_id"

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1448
    const-string/jumbo v0, "oldchannel_id"

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1449
    const-string/jumbo v0, "changedchannel_id"

    invoke-virtual {v5, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1450
    const-string/jumbo v0, ""

    const/16 v1, 0x4e1f

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    invoke-static/range {v0 .. v5}, Lc8/LHg;->utCustomEvent(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1451
    return-void
.end method

.method public onVivoPidEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "oldPid"    # Ljava/lang/String;
    .param p2, "changedPid"    # Ljava/lang/String;

    .prologue
    .line 1438
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1439
    .local v5, "args":Ljava/util/HashMap;
    const-string/jumbo v0, "eventType"

    const-string/jumbo v1, "changepid"

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1440
    const-string/jumbo v0, "oldpid"

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1441
    const-string/jumbo v0, "changedpid"

    invoke-virtual {v5, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1442
    const-string/jumbo v0, ""

    const/16 v1, 0x4e1f

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    invoke-static/range {v0 .. v5}, Lc8/LHg;->utCustomEvent(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1443
    return-void
.end method
