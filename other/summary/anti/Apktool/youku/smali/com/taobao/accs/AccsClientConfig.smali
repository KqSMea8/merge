.class public Lcom/taobao/accs/AccsClientConfig;
.super Ljava/lang/Object;
.source "AccsClientConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/accs/AccsClientConfig$Builder;,
        Lcom/taobao/accs/AccsClientConfig$ENV;,
        Lcom/taobao/accs/AccsClientConfig$SECURITY_TYPE;
    }
.end annotation


# static fields
.field public static final DEFAULT_CENTER_HOSTS:[Ljava/lang/String;

.field private static DEFAULT_CHANNEL_HOSTS:[Ljava/lang/String; = null

.field public static final DEFAULT_CONFIGTAG:Ljava/lang/String; = "default"

.field public static final SECURITY_OFF:I = 0x2

.field public static final SECURITY_OPEN:I = 0x1

.field public static final SECURITY_TAOBAO:I

.field public static loadedStaticConfig:Z

.field private static mContext:Landroid/content/Context;

.field private static mDebugConfigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/accs/AccsClientConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static mEnv:I
    .annotation build Lcom/taobao/accs/AccsClientConfig$ENV;
    .end annotation
.end field

.field private static mPreviewConfigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/accs/AccsClientConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static mReleaseConfigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/accs/AccsClientConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAppKey:Ljava/lang/String;

.field private mAppSecret:Ljava/lang/String;

.field private mAuthCode:Ljava/lang/String;

.field private mAutoUnit:Z

.field private mChannelHost:Ljava/lang/String;

.field private mChannelPubKey:I

.field private mConfigEnv:I

.field private mDisableChannel:Z

.field private mInappHost:Ljava/lang/String;

.field private mInappPubKey:I

.field private mKeepalive:Z

.field private mSecurity:I

.field private mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 29

    .prologue
    .line 27
    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string/jumbo v26, "msgacs.m.taobao.com"

    aput-object v26, v24, v25

    const/16 v25, 0x1

    const-string/jumbo v26, "msgacs.wapa.taobao.com"

    aput-object v26, v24, v25

    const/16 v25, 0x2

    const-string/jumbo v26, "msgacs.waptest.taobao.com"

    aput-object v26, v24, v25

    sput-object v24, Lcom/taobao/accs/AccsClientConfig;->DEFAULT_CENTER_HOSTS:[Ljava/lang/String;

    .line 29
    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-string/jumbo v26, "accscdn.m.taobao.com"

    aput-object v26, v24, v25

    const/16 v25, 0x1

    const-string/jumbo v26, "acs.wapa.taobao.com"

    aput-object v26, v24, v25

    const/16 v25, 0x2

    const-string/jumbo v26, "acs.waptest.taobao.com"

    aput-object v26, v24, v25

    sput-object v24, Lcom/taobao/accs/AccsClientConfig;->DEFAULT_CHANNEL_HOSTS:[Ljava/lang/String;

    .line 32
    const/16 v24, 0x0

    sput v24, Lcom/taobao/accs/AccsClientConfig;->mEnv:I

    .line 36
    new-instance v24, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v25, 0x1

    invoke-direct/range {v24 .. v25}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v24, Lcom/taobao/accs/AccsClientConfig;->mReleaseConfigs:Ljava/util/Map;

    .line 37
    new-instance v24, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v25, 0x1

    invoke-direct/range {v24 .. v25}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v24, Lcom/taobao/accs/AccsClientConfig;->mPreviewConfigs:Ljava/util/Map;

    .line 38
    new-instance v24, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v25, 0x1

    invoke-direct/range {v24 .. v25}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v24, Lcom/taobao/accs/AccsClientConfig;->mDebugConfigs:Ljava/util/Map;

    .line 42
    const/16 v24, 0x0

    sput-boolean v24, Lcom/taobao/accs/AccsClientConfig;->loadedStaticConfig:Z

    .line 46
    :try_start_0
    invoke-static {}, Lcom/taobao/accs/AccsClientConfig;->getContext()Landroid/content/Context;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/taobao/accs/utl/Utils;->getMetaInfo(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v9

    .line 47
    .local v9, "bundle":Landroid/os/Bundle;
    if-eqz v9, :cond_4

    .line 48
    const-string/jumbo v24, "accsConfigTags"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 49
    .local v23, "tags":Ljava/lang/String;
    const-string/jumbo v24, "AccsClientConfig"

    const-string/jumbo v25, "init config from xml"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const-string/jumbo v28, "configtags"

    aput-object v28, v26, v27

    const/16 v27, 0x1

    aput-object v23, v26, v27

    invoke-static/range {v24 .. v26}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_4

    .line 52
    const-string/jumbo v24, "\\|"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 54
    .local v13, "configTags":[Ljava/lang/String;
    if-nez v13, :cond_0

    .line 55
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v13, v0, [Ljava/lang/String;

    .end local v13    # "configTags":[Ljava/lang/String;
    const/16 v24, 0x0

    aput-object v23, v13, v24

    .line 58
    .restart local v13    # "configTags":[Ljava/lang/String;
    :cond_0
    move-object v6, v13

    .local v6, "arr$":[Ljava/lang/String;
    array-length v0, v13

    move/from16 v20, v0

    .local v20, "len$":I
    const/4 v15, 0x0

    .local v15, "i$":I
    :goto_0
    move/from16 v0, v20

    if-ge v15, v0, :cond_3

    aget-object v22, v6, v15

    .line 60
    .local v22, "tag":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_1

    .line 65
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "_accsAppkey"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, -0x1

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v19

    .line 66
    .local v19, "key":I
    if-gez v19, :cond_2

    const/4 v4, 0x0

    .line 67
    .local v4, "appKey":Ljava/lang/String;
    :goto_1
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "_accsAppSecret"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 68
    .local v5, "appSecret":Ljava/lang/String;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "_authCode"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 69
    .local v7, "authCode":Ljava/lang/String;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "_keepAlive"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    .line 70
    .local v18, "keepAlive":Z
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "_autoUnit"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 71
    .local v8, "autoUnit":Z
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "_inappPubkey"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, -0x1

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v17

    .line 72
    .local v17, "inappPubkey":I
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "_channelPubkey"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, -0x1

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 73
    .local v11, "channelPubkey":I
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "_inappHost"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 74
    .local v16, "inappHost":Ljava/lang/String;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "_channelHost"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 75
    .local v10, "channelHost":Ljava/lang/String;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "_configEnv"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 76
    .local v12, "configEnv":I
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "_disableChannel"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    .line 78
    .local v14, "disableChannel":Z
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_1

    .line 79
    new-instance v24, Lcom/taobao/accs/AccsClientConfig$Builder;

    invoke-direct/range {v24 .. v24}, Lcom/taobao/accs/AccsClientConfig$Builder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/taobao/accs/AccsClientConfig$Builder;->setTag(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/taobao/accs/AccsClientConfig$Builder;->setAppKey(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Lcom/taobao/accs/AccsClientConfig$Builder;->setAppSecret(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Lcom/taobao/accs/AccsClientConfig$Builder;->setAutoCode(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/taobao/accs/AccsClientConfig$Builder;->setKeepAlive(Z)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Lcom/taobao/accs/AccsClientConfig$Builder;->setAutoUnit(Z)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/taobao/accs/AccsClientConfig$Builder;->setInappPubKey(I)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Lcom/taobao/accs/AccsClientConfig$Builder;->setChannelPubKey(I)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/taobao/accs/AccsClientConfig$Builder;->setInappHost(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Lcom/taobao/accs/AccsClientConfig$Builder;->setChannelHost(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Lcom/taobao/accs/AccsClientConfig$Builder;->setConfigEnv(I)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Lcom/taobao/accs/AccsClientConfig$Builder;->setDisableChannel(Z)Lcom/taobao/accs/AccsClientConfig$Builder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/taobao/accs/AccsClientConfig$Builder;->build()Lcom/taobao/accs/AccsClientConfig;

    .line 92
    const-string/jumbo v24, "AccsClientConfig"

    const-string/jumbo v25, "init config from xml"

    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    invoke-static/range {v24 .. v26}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    .end local v4    # "appKey":Ljava/lang/String;
    .end local v5    # "appSecret":Ljava/lang/String;
    .end local v7    # "authCode":Ljava/lang/String;
    .end local v8    # "autoUnit":Z
    .end local v10    # "channelHost":Ljava/lang/String;
    .end local v11    # "channelPubkey":I
    .end local v12    # "configEnv":I
    .end local v14    # "disableChannel":Z
    .end local v16    # "inappHost":Ljava/lang/String;
    .end local v17    # "inappPubkey":I
    .end local v18    # "keepAlive":Z
    .end local v19    # "key":I
    :cond_1
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 66
    .restart local v19    # "key":I
    :cond_2
    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 95
    .end local v19    # "key":I
    .end local v22    # "tag":Ljava/lang/String;
    :cond_3
    const/16 v24, 0x1

    sput-boolean v24, Lcom/taobao/accs/AccsClientConfig;->loadedStaticConfig:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v13    # "configTags":[Ljava/lang/String;
    .end local v15    # "i$":I
    .end local v20    # "len$":I
    .end local v23    # "tags":Ljava/lang/String;
    :cond_4
    :goto_2
    return-void

    .line 98
    :catch_0
    move-exception v21

    .line 99
    .local v21, "t":Ljava/lang/Throwable;
    const-string/jumbo v24, "AccsClientConfig"

    const-string/jumbo v25, "init config from xml"

    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v21

    move-object/from16 v3, v26

    invoke-static {v0, v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
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

.method private static _2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    new-instance v0, Lcom/ali/mobisecenhance/Invocation;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/ali/mobisecenhance/Invocation;-><init>(I)V

    move-object v2, p0

    invoke-virtual {v0, v2}, Lcom/ali/mobisecenhance/Invocation;->initThis(Ljava/lang/Object;)V

    const/4 v1, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    const/4 v1, 0x1

    move-object v2, p2

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->before_Method_invoke(Lcom/ali/mobisecenhance/Invocation;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Object;

    move-object p1, v2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object p2, v2

    :cond_0
    const/4 v3, 0x0

    const/4 v1, 0x0

    if-eqz v4, :cond_1

    :try_start_0
    invoke-virtual/range {p0 .. p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    :cond_1
    :goto_0
    invoke-static {v0, v1, v3}, Lcom/ali/mobisecenhance/ReflectMap;->after_Method_invoke(Lcom/ali/mobisecenhance/Invocation;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method static synthetic access$000(Lcom/taobao/accs/AccsClientConfig;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/accs/AccsClientConfig;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/taobao/accs/AccsClientConfig;->mAppKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/taobao/accs/AccsClientConfig;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/taobao/accs/AccsClientConfig;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/taobao/accs/AccsClientConfig;->mAppKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/taobao/accs/AccsClientConfig;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/accs/AccsClientConfig;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/taobao/accs/AccsClientConfig;->mAppSecret:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/taobao/accs/AccsClientConfig;)I
    .locals 1
    .param p0, "x0"    # Lcom/taobao/accs/AccsClientConfig;

    .prologue
    .line 21
    iget v0, p0, Lcom/taobao/accs/AccsClientConfig;->mConfigEnv:I

    return v0
.end method

.method static synthetic access$1002(Lcom/taobao/accs/AccsClientConfig;I)I
    .locals 0
    .param p0, "x0"    # Lcom/taobao/accs/AccsClientConfig;
    .param p1, "x1"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/taobao/accs/AccsClientConfig;->mConfigEnv:I

    return p1
.end method

.method static synthetic access$102(Lcom/taobao/accs/AccsClientConfig;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/taobao/accs/AccsClientConfig;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/taobao/accs/AccsClientConfig;->mAppSecret:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/taobao/accs/AccsClientConfig;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/taobao/accs/AccsClientConfig;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/taobao/accs/AccsClientConfig;->mDisableChannel:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/taobao/accs/AccsClientConfig;I)I
    .locals 0
    .param p0, "x0"    # Lcom/taobao/accs/AccsClientConfig;
    .param p1, "x1"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/taobao/accs/AccsClientConfig;->mSecurity:I

    return p1
.end method

.method static synthetic access$1300()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/taobao/accs/AccsClientConfig;->DEFAULT_CHANNEL_HOSTS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400()Ljava/util/Map;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/taobao/accs/AccsClientConfig;->mPreviewConfigs:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1500()Ljava/util/Map;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/taobao/accs/AccsClientConfig;->mDebugConfigs:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1600()Ljava/util/Map;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/taobao/accs/AccsClientConfig;->mReleaseConfigs:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$202(Lcom/taobao/accs/AccsClientConfig;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/taobao/accs/AccsClientConfig;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/taobao/accs/AccsClientConfig;->mAuthCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/taobao/accs/AccsClientConfig;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/taobao/accs/AccsClientConfig;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/taobao/accs/AccsClientConfig;->mKeepalive:Z

    return p1
.end method

.method static synthetic access$402(Lcom/taobao/accs/AccsClientConfig;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/taobao/accs/AccsClientConfig;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/taobao/accs/AccsClientConfig;->mAutoUnit:Z

    return p1
.end method

.method static synthetic access$502(Lcom/taobao/accs/AccsClientConfig;I)I
    .locals 0
    .param p0, "x0"    # Lcom/taobao/accs/AccsClientConfig;
    .param p1, "x1"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/taobao/accs/AccsClientConfig;->mInappPubKey:I

    return p1
.end method

.method static synthetic access$602(Lcom/taobao/accs/AccsClientConfig;I)I
    .locals 0
    .param p0, "x0"    # Lcom/taobao/accs/AccsClientConfig;
    .param p1, "x1"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/taobao/accs/AccsClientConfig;->mChannelPubKey:I

    return p1
.end method

.method static synthetic access$700(Lcom/taobao/accs/AccsClientConfig;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/accs/AccsClientConfig;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/taobao/accs/AccsClientConfig;->mInappHost:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/taobao/accs/AccsClientConfig;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/taobao/accs/AccsClientConfig;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/taobao/accs/AccsClientConfig;->mInappHost:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/taobao/accs/AccsClientConfig;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/accs/AccsClientConfig;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/taobao/accs/AccsClientConfig;->mChannelHost:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/taobao/accs/AccsClientConfig;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/taobao/accs/AccsClientConfig;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/taobao/accs/AccsClientConfig;->mChannelHost:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/taobao/accs/AccsClientConfig;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/accs/AccsClientConfig;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/taobao/accs/AccsClientConfig;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/taobao/accs/AccsClientConfig;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/taobao/accs/AccsClientConfig;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/taobao/accs/AccsClientConfig;->mTag:Ljava/lang/String;

    return-object p1
.end method

.method public static getConfig(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig;
    .locals 6
    .param p0, "appkey"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 140
    sget v3, Lcom/taobao/accs/AccsClientConfig;->mEnv:I

    packed-switch v3, :pswitch_data_0

    .line 148
    sget-object v1, Lcom/taobao/accs/AccsClientConfig;->mReleaseConfigs:Ljava/util/Map;

    .line 151
    .local v1, "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/accs/AccsClientConfig;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/accs/AccsClientConfig;

    .line 152
    .local v0, "config":Lcom/taobao/accs/AccsClientConfig;
    iget-object v3, v0, Lcom/taobao/accs/AccsClientConfig;->mAppKey:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, v0, Lcom/taobao/accs/AccsClientConfig;->mConfigEnv:I

    sget v4, Lcom/taobao/accs/AccsClientConfig;->mEnv:I

    if-ne v3, v4, :cond_0

    .line 157
    .end local v0    # "config":Lcom/taobao/accs/AccsClientConfig;
    :goto_1
    return-object v0

    .line 142
    .end local v1    # "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/accs/AccsClientConfig;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :pswitch_0
    sget-object v1, Lcom/taobao/accs/AccsClientConfig;->mPreviewConfigs:Ljava/util/Map;

    .line 143
    .restart local v1    # "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/accs/AccsClientConfig;>;"
    goto :goto_0

    .line 145
    .end local v1    # "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/accs/AccsClientConfig;>;"
    :pswitch_1
    sget-object v1, Lcom/taobao/accs/AccsClientConfig;->mDebugConfigs:Ljava/util/Map;

    .line 146
    .restart local v1    # "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/accs/AccsClientConfig;>;"
    goto :goto_0

    .line 156
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    const-string/jumbo v3, "AccsClientConfig"

    const-string/jumbo v4, "getConfig null!"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    const/4 v0, 0x0

    goto :goto_1

    .line 140
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getConfigByTag(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig;
    .locals 5
    .param p0, "configTag"    # Ljava/lang/String;

    .prologue
    .line 162
    sget v2, Lcom/taobao/accs/AccsClientConfig;->mEnv:I

    packed-switch v2, :pswitch_data_0

    .line 170
    sget-object v1, Lcom/taobao/accs/AccsClientConfig;->mReleaseConfigs:Ljava/util/Map;

    .line 174
    .local v1, "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/accs/AccsClientConfig;>;"
    :goto_0
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/accs/AccsClientConfig;

    .line 175
    .local v0, "config":Lcom/taobao/accs/AccsClientConfig;
    if-nez v0, :cond_0

    .line 176
    const-string/jumbo v2, "AccsClientConfig"

    const-string/jumbo v3, "getConfig null!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    :cond_0
    return-object v0

    .line 164
    .end local v0    # "config":Lcom/taobao/accs/AccsClientConfig;
    .end local v1    # "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/accs/AccsClientConfig;>;"
    :pswitch_0
    sget-object v1, Lcom/taobao/accs/AccsClientConfig;->mPreviewConfigs:Ljava/util/Map;

    .line 165
    .restart local v1    # "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/accs/AccsClientConfig;>;"
    goto :goto_0

    .line 167
    .end local v1    # "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/accs/AccsClientConfig;>;"
    :pswitch_1
    sget-object v1, Lcom/taobao/accs/AccsClientConfig;->mDebugConfigs:Ljava/util/Map;

    .line 168
    .restart local v1    # "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/taobao/accs/AccsClientConfig;>;"
    goto :goto_0

    .line 162
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getContext()Landroid/content/Context;
    .locals 7

    .prologue
    .line 105
    sget-object v3, Lcom/taobao/accs/AccsClientConfig;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    .line 106
    sget-object v3, Lcom/taobao/accs/AccsClientConfig;->mContext:Landroid/content/Context;

    .line 119
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v3

    .line 108
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    const-class v4, Lcom/taobao/accs/AccsClientConfig;

    monitor-enter v4

    .line 109
    :try_start_0
    sget-object v3, Lcom/taobao/accs/AccsClientConfig;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_1

    .line 110
    sget-object v3, Lcom/taobao/accs/AccsClientConfig;->mContext:Landroid/content/Context;

    monitor-exit v4

    goto :goto_0

    .line 120
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 113
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    :try_start_1
    const-string/jumbo v3, "android.app.ActivityThread"

    invoke-static {v3}, Lcom/taobao/accs/AccsClientConfig;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 114
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v3, "currentActivityThread"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v0, v5}, Lcom/taobao/accs/AccsClientConfig;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 115
    .local v2, "object":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v5, "getApplication"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v2, v5}, Lcom/taobao/accs/AccsClientConfig;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    sput-object v3, Lcom/taobao/accs/AccsClientConfig;->mContext:Landroid/content/Context;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    .end local v2    # "object":Ljava/lang/Object;
    :goto_1
    :try_start_2
    sget-object v3, Lcom/taobao/accs/AccsClientConfig;->mContext:Landroid/content/Context;

    monitor-exit v4

    goto :goto_0

    .line 116
    :catch_0
    move-exception v1

    .line 117
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public getAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/taobao/accs/AccsClientConfig;->mAppKey:Ljava/lang/String;

    return-object v0
.end method

.method public getAppSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/taobao/accs/AccsClientConfig;->mAppSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/taobao/accs/AccsClientConfig;->mAuthCode:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/taobao/accs/AccsClientConfig;->mChannelHost:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelPubKey()I
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lcom/taobao/accs/AccsClientConfig;->mChannelPubKey:I

    return v0
.end method

.method public getConfigEnv()I
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Lcom/taobao/accs/AccsClientConfig;->mConfigEnv:I

    return v0
.end method

.method public getDisableChannel()Z
    .locals 1

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/taobao/accs/AccsClientConfig;->mDisableChannel:Z

    return v0
.end method

.method public getInappHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/taobao/accs/AccsClientConfig;->mInappHost:Ljava/lang/String;

    return-object v0
.end method

.method public getInappPubKey()I
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lcom/taobao/accs/AccsClientConfig;->mInappPubKey:I

    return v0
.end method

.method public getSecurity()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/taobao/accs/AccsClientConfig;->mSecurity:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/taobao/accs/AccsClientConfig;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public isAutoUnit()Z
    .locals 1

    .prologue
    .line 237
    iget-boolean v0, p0, Lcom/taobao/accs/AccsClientConfig;->mAutoUnit:Z

    return v0
.end method

.method public isKeepalive()Z
    .locals 1

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/taobao/accs/AccsClientConfig;->mKeepalive:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AccsClientConfig{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mAppKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/accs/AccsClientConfig;->mAppKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mAppSecret="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/accs/AccsClientConfig;->mAppSecret:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mInappHost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/accs/AccsClientConfig;->mInappHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mChannelHost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/accs/AccsClientConfig;->mChannelHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mSecurity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/taobao/accs/AccsClientConfig;->mSecurity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mAuthCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/accs/AccsClientConfig;->mAuthCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mInappPubKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/taobao/accs/AccsClientConfig;->mInappPubKey:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mChannelPubKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/taobao/accs/AccsClientConfig;->mChannelPubKey:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mKeepalive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/taobao/accs/AccsClientConfig;->mKeepalive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mAutoUnit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/taobao/accs/AccsClientConfig;->mAutoUnit:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mConfigEnv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/taobao/accs/AccsClientConfig;->mConfigEnv:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/accs/AccsClientConfig;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mDisableChannel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/taobao/accs/AccsClientConfig;->mDisableChannel:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
