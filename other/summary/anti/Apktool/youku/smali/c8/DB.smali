.class public Lc8/DB;
.super Ljava/lang/Object;
.source "WVCommonConfig.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WVCommonConfig"

.field public static final commonConfig:Lc8/EB;

.field private static volatile instance:Lc8/DB;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lc8/EB;

    invoke-direct {v0}, Lc8/EB;-><init>()V

    sput-object v0, Lc8/DB;->commonConfig:Lc8/EB;

    .line 21
    const/4 v0, 0x0

    sput-object v0, Lc8/DB;->instance:Lc8/DB;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lc8/DB;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lc8/DB;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lc8/DB;->parseConfig(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getInstance()Lc8/DB;
    .locals 2

    .prologue
    .line 24
    sget-object v0, Lc8/DB;->instance:Lc8/DB;

    if-nez v0, :cond_1

    .line 25
    const-class v1, Lc8/DB;

    monitor-enter v1

    .line 26
    :try_start_0
    sget-object v0, Lc8/DB;->instance:Lc8/DB;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lc8/DB;

    invoke-direct {v0}, Lc8/DB;-><init>()V

    sput-object v0, Lc8/DB;->instance:Lc8/DB;

    .line 29
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :cond_1
    sget-object v0, Lc8/DB;->instance:Lc8/DB;

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private parseConfig(Ljava/lang/String;)I
    .locals 18
    .param p1, "config"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 94
    const/4 v14, 0x0

    .line 165
    :goto_0
    return v14

    .line 96
    :cond_0
    const/4 v4, 0x0

    .line 98
    .local v4, "jsonObj":Lorg/json/JSONObject;
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "jsonObj":Lorg/json/JSONObject;
    .local v5, "jsonObj":Lorg/json/JSONObject;
    move-object v4, v5

    .line 101
    .end local v5    # "jsonObj":Lorg/json/JSONObject;
    .restart local v4    # "jsonObj":Lorg/json/JSONObject;
    :goto_1
    if-eqz v4, :cond_5

    .line 102
    const-string/jumbo v14, "v"

    const-string/jumbo v15, ""

    invoke-virtual {v4, v14, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 103
    .local v12, "v":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 104
    const/4 v14, 0x0

    goto :goto_0

    .line 106
    :cond_1
    sget-object v14, Lc8/DB;->commonConfig:Lc8/EB;

    iput-object v12, v14, Lc8/EB;->v:Ljava/lang/String;

    .line 107
    const-string/jumbo v14, "configUpdateInterval"

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v4, v14, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 109
    .local v2, "configUpdateInterval":J
    const-wide/16 v14, 0x0

    cmp-long v14, v2, v14

    if-ltz v14, :cond_2

    .line 110
    sget-object v14, Lc8/DB;->commonConfig:Lc8/EB;

    iput-wide v2, v14, Lc8/EB;->updateInterval:J

    .line 111
    invoke-static {}, Lc8/KB;->getInstance()Lc8/KB;

    move-result-object v14

    invoke-virtual {v14, v2, v3}, Lc8/KB;->setUpdateInterval(J)V

    .line 113
    :cond_2
    sget-object v14, Lc8/DB;->commonConfig:Lc8/EB;

    const-string/jumbo v15, "packagePriorityWeight"

    const-wide v16, 0x3fb999999999999aL    # 0.1

    move-wide/from16 v0, v16

    invoke-virtual {v4, v15, v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v14, Lc8/EB;->packagePriorityWeight:D

    .line 114
    const-string/jumbo v14, "packageAppStatus"

    const/4 v15, 0x2

    invoke-virtual {v4, v14, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 115
    .local v7, "packageAppStatus":I
    sget-object v14, Lc8/DB;->commonConfig:Lc8/EB;

    iput v7, v14, Lc8/EB;->packageAppStatus:I

    .line 116
    const-string/jumbo v14, "monitorStatus"

    const/4 v15, 0x2

    invoke-virtual {v4, v14, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 117
    .local v6, "monitorStatus":I
    sget-object v14, Lc8/DB;->commonConfig:Lc8/EB;

    iput v6, v14, Lc8/EB;->monitorStatus:I

    .line 118
    const-string/jumbo v14, "urlRuleStatus"

    const/4 v15, 0x2

    invoke-virtual {v4, v14, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    .line 119
    .local v10, "urlRuleStatus":I
    sget-object v14, Lc8/DB;->commonConfig:Lc8/EB;

    iput v10, v14, Lc8/EB;->urlRuleStatus:I

    .line 120
    const-string/jumbo v14, "packageMaxAppCount"

    const/16 v15, 0x64

    invoke-virtual {v4, v14, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    .line 121
    .local v8, "packageMaxAppCount":I
    sget-object v14, Lc8/DB;->commonConfig:Lc8/EB;

    iput v8, v14, Lc8/EB;->packageMaxAppCount:I

    .line 122
    const-string/jumbo v14, "urlScheme"

    const-string/jumbo v15, "http"

    invoke-virtual {v4, v14, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 124
    .local v11, "urlScheme":Ljava/lang/String;
    sget-object v14, Lc8/DB;->commonConfig:Lc8/EB;

    const-string/jumbo v15, ":"

    const-string/jumbo v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lc8/EB;->urlScheme:Ljava/lang/String;

    .line 125
    const-string/jumbo v14, "verifySampleRate"

    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 126
    .local v13, "verifySampleRate":Lorg/json/JSONObject;
    if-eqz v13, :cond_3

    .line 127
    sget-object v14, Lc8/DB;->commonConfig:Lc8/EB;

    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lc8/EB;->verifySampleRate:Ljava/lang/String;

    .line 129
    :cond_3
    const-string/jumbo v14, "ucParam"

    const-string/jumbo v15, ""

    invoke-virtual {v4, v14, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 130
    .local v9, "ucParam":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 131
    sget-object v14, Lc8/DB;->commonConfig:Lc8/EB;

    const-string/jumbo v15, "skip_old_extra_kernel=true"

    iput-object v15, v14, Lc8/EB;->ucParam:Ljava/lang/String;

    .line 135
    :goto_2
    sget-object v14, Lc8/DB;->commonConfig:Lc8/EB;

    const-string/jumbo v15, "useSystemWebView"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v15

    iput-boolean v15, v14, Lc8/EB;->useSystemWebView:Z

    .line 136
    sget-object v14, Lc8/DB;->commonConfig:Lc8/EB;

    const-string/jumbo v15, "ucsdk_alinetwork_rate"

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v0, v16

    invoke-virtual {v4, v15, v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v14, Lc8/EB;->ucsdk_alinetwork_rate:D

    .line 137
    sget-object v14, Lc8/DB;->commonConfig:Lc8/EB;

    const-string/jumbo v15, "ucsdk_image_strategy_rate"

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v0, v16

    invoke-virtual {v4, v15, v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v14, Lc8/EB;->ucsdk_image_strategy_rate:D

    .line 138
    sget-object v14, Lc8/DB;->commonConfig:Lc8/EB;

    const-string/jumbo v15, "cookieUrlRule"

    const-string/jumbo v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lc8/EB;->cookieUrlRule:Ljava/lang/String;

    .line 140
    sget-object v14, Lc8/DB;->commonConfig:Lc8/EB;

    const-string/jumbo v15, "ucCoreUrl"

    const-string/jumbo v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lc8/EB;->ucCoreUrl:Ljava/lang/String;

    .line 142
    sget-object v14, Lc8/DB;->commonConfig:Lc8/EB;

    const-string/jumbo v15, "shareBlankList"

    const-string/jumbo v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lc8/EB;->shareBlankList:Ljava/lang/String;

    .line 144
    sget-object v14, Lc8/DB;->commonConfig:Lc8/EB;

    const-string/jumbo v15, "excludeUCVersions"

    const-string/jumbo v16, "1.12.11.0, 1.15.15.0, 1.14.13.0, 1.13.12.0"

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lc8/EB;->excludeUCVersions:Ljava/lang/String;

    .line 146
    sget-object v14, Lc8/DB;->commonConfig:Lc8/EB;

    const-string/jumbo v15, "isOpenCombo"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v15

    iput-boolean v15, v14, Lc8/EB;->isOpenCombo:Z

    .line 147
    sget-object v14, Lc8/DB;->commonConfig:Lc8/EB;

    const-string/jumbo v15, "isCheckCleanup"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v15

    iput-boolean v15, v14, Lc8/EB;->isCheckCleanup:Z

    .line 148
    sget-object v14, Lc8/DB;->commonConfig:Lc8/EB;

    const-string/jumbo v15, "isAutoRegisterApp"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v15

    iput-boolean v15, v14, Lc8/EB;->isAutoRegisterApp:Z

    .line 149
    sget-object v14, Lc8/DB;->commonConfig:Lc8/EB;

    const-string/jumbo v15, "isUseTBDownloader"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v15

    iput-boolean v15, v14, Lc8/EB;->isUseTBDownloader:Z

    .line 150
    sget-object v14, Lc8/DB;->commonConfig:Lc8/EB;

    const-string/jumbo v15, "isUseAliNetworkDelegate"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v15

    iput-boolean v15, v14, Lc8/EB;->isUseAliNetworkDelegate:Z

    .line 151
    sget-object v14, Lc8/DB;->commonConfig:Lc8/EB;

    const-string/jumbo v15, "packageDownloadLimit"

    const/16 v16, 0x1e

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v15

    iput v15, v14, Lc8/EB;->packageDownloadLimit:I

    .line 152
    sget-object v14, Lc8/DB;->commonConfig:Lc8/EB;

    const-string/jumbo v15, "packageAccessInterval"

    const/16 v16, 0xbb8

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v15

    iput v15, v14, Lc8/EB;->packageAccessInterval:I

    .line 153
    sget-object v14, Lc8/DB;->commonConfig:Lc8/EB;

    const-string/jumbo v15, "packageRemoveInterval"

    const v16, 0x19bfcc00

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v15

    iput v15, v14, Lc8/EB;->packageRemoveInterval:I

    .line 154
    sget-object v14, Lc8/DB;->commonConfig:Lc8/EB;

    const-string/jumbo v15, "recoveryInterval"

    const v16, 0x19bfcc00

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v15

    iput v15, v14, Lc8/EB;->recoveryInterval:I

    .line 155
    sget-object v14, Lc8/DB;->commonConfig:Lc8/EB;

    const-string/jumbo v15, "customsComboLimit"

    const/16 v16, 0x3

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v15

    iput v15, v14, Lc8/EB;->customsComboLimit:I

    .line 156
    sget-object v14, Lc8/DB;->commonConfig:Lc8/EB;

    const-string/jumbo v15, "customsDirectQueryLimit"

    const/16 v16, 0xa

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v15

    iput v15, v14, Lc8/EB;->customsDirectQueryLimit:I

    .line 157
    sget-object v14, Lc8/DB;->commonConfig:Lc8/EB;

    const-string/jumbo v15, "packageZipPrefix"

    const-string/jumbo v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lc8/EB;->packageZipPrefix:Ljava/lang/String;

    .line 158
    sget-object v14, Lc8/DB;->commonConfig:Lc8/EB;

    const-string/jumbo v15, "packageZipPreviewPrefix"

    const-string/jumbo v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lc8/EB;->packageZipPreviewPrefix:Ljava/lang/String;

    .line 159
    sget-object v14, Lc8/DB;->commonConfig:Lc8/EB;

    const-string/jumbo v15, "ucSkipOldKernel"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v15

    iput-boolean v15, v14, Lc8/EB;->ucSkipOldKernel:Z

    .line 161
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lc8/DB;->parseUnzipDegradeConfig(Lorg/json/JSONObject;)V

    .line 163
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v14

    goto/16 :goto_0

    .line 133
    :cond_4
    sget-object v14, Lc8/DB;->commonConfig:Lc8/EB;

    iput-object v9, v14, Lc8/EB;->ucParam:Ljava/lang/String;

    goto/16 :goto_2

    .line 165
    .end local v2    # "configUpdateInterval":J
    .end local v6    # "monitorStatus":I
    .end local v7    # "packageAppStatus":I
    .end local v8    # "packageMaxAppCount":I
    .end local v9    # "ucParam":Ljava/lang/String;
    .end local v10    # "urlRuleStatus":I
    .end local v11    # "urlScheme":Ljava/lang/String;
    .end local v12    # "v":Ljava/lang/String;
    .end local v13    # "verifySampleRate":Lorg/json/JSONObject;
    :cond_5
    const/4 v14, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v14

    goto/16 :goto_1
.end method

.method private parseUnzipDegradeConfig(Lorg/json/JSONObject;)V
    .locals 11
    .param p1, "config"    # Lorg/json/JSONObject;

    .prologue
    .line 170
    :try_start_0
    sget-object v8, Lc8/DB;->commonConfig:Lc8/EB;

    const-string/jumbo v9, "zipDegradeMode"

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, v8, Lc8/EB;->zipDegradeMode:I

    .line 171
    sget-object v8, Lc8/DB;->commonConfig:Lc8/EB;

    const-string/jumbo v9, "zipDegradeList"

    const-string/jumbo v10, ""

    invoke-virtual {p1, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lc8/EB;->zipDegradeList:Ljava/lang/String;

    .line 173
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "@"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, "identifier":Ljava/lang/String;
    sget-object v8, Lc8/DB;->commonConfig:Lc8/EB;

    iget-object v7, v8, Lc8/EB;->zipDegradeList:Ljava/lang/String;

    .line 175
    .local v7, "zipDegradeList":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 176
    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 177
    .local v3, "ids":[Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 178
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v3

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v0, v1

    .line 179
    .local v5, "s":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 180
    const-string/jumbo v8, "WVCommonConfig"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Degrade unzip: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    sget-object v8, Lc8/DB;->commonConfig:Lc8/EB;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lc8/EB;->needZipDegrade:Z

    .line 182
    sget-object v8, Lc8/DB;->commonConfig:Lc8/EB;

    iget v8, v8, Lc8/EB;->zipDegradeMode:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 184
    sget-object v8, Lc8/DB;->commonConfig:Lc8/EB;

    const/4 v9, 0x0

    iput v9, v8, Lc8/EB;->packageAppStatus:I

    .line 185
    const-string/jumbo v8, "WVCommonConfig"

    const-string/jumbo v9, "Disable package app"

    invoke-static {v8, v9}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "identifier":Ljava/lang/String;
    .end local v3    # "ids":[Ljava/lang/String;
    .end local v4    # "len$":I
    .end local v5    # "s":Ljava/lang/String;
    .end local v7    # "zipDegradeList":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 178
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "i$":I
    .restart local v2    # "identifier":Ljava/lang/String;
    .restart local v3    # "ids":[Ljava/lang/String;
    .restart local v4    # "len$":I
    .restart local v5    # "s":Ljava/lang/String;
    .restart local v7    # "zipDegradeList":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 192
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "identifier":Ljava/lang/String;
    .end local v3    # "ids":[Ljava/lang/String;
    .end local v4    # "len$":I
    .end local v5    # "s":Ljava/lang/String;
    .end local v7    # "zipDegradeList":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 193
    .local v6, "t":Ljava/lang/Throwable;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public init()V
    .locals 3

    .prologue
    .line 38
    const-string/jumbo v1, "wv_main_config"

    const-string/jumbo v2, "commonwv-data"

    invoke-static {v1, v2}, Lc8/MH;->getStringVal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "content":Ljava/lang/String;
    invoke-direct {p0, v0}, Lc8/DB;->parseConfig(Ljava/lang/String;)I

    .line 40
    return-void
.end method

.method public updateCommonRule(Lc8/LB;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "callback"    # Lc8/LB;
    .param p2, "defaultUrl"    # Ljava/lang/String;
    .param p3, "snapshotN"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    invoke-static {}, Lc8/KB;->getInstance()Lc8/KB;

    move-result-object v2

    const-string/jumbo v3, "1"

    sget-object v4, Lc8/DB;->commonConfig:Lc8/EB;

    iget-object v4, v4, Lc8/EB;->v:Ljava/lang/String;

    invoke-static {}, Lc8/MB;->getTargetValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5, p3}, Lc8/KB;->getConfigUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "commonConfigUrl":Ljava/lang/String;
    :goto_0
    move-object v1, v0

    .line 54
    .local v1, "finalCommonConfigUrl":Ljava/lang/String;
    invoke-static {}, Lc8/VB;->getInstance()Lc8/VB;

    move-result-object v2

    new-instance v3, Lc8/CB;

    invoke-direct {v3, p0, p1, v1}, Lc8/CB;-><init>(Lc8/DB;Lc8/LB;Ljava/lang/String;)V

    invoke-virtual {v2, v0, v3}, Lc8/VB;->connect(Ljava/lang/String;Lc8/WB;)V

    .line 90
    return-void

    .line 50
    .end local v0    # "commonConfigUrl":Ljava/lang/String;
    .end local v1    # "finalCommonConfigUrl":Ljava/lang/String;
    :cond_0
    move-object v0, p2

    .restart local v0    # "commonConfigUrl":Ljava/lang/String;
    goto :goto_0
.end method
