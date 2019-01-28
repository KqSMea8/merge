.class public Lc8/OB;
.super Ljava/lang/Object;
.source "WVDomainConfig.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WVDomainConfig"

.field private static volatile instance:Lc8/OB;


# instance fields
.field private forbiddenDomainRedirectURL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lc8/OB;->instance:Lc8/OB;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/OB;->forbiddenDomainRedirectURL:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lc8/OB;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lc8/OB;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lc8/OB;->parseConfig(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getInstance()Lc8/OB;
    .locals 2

    .prologue
    .line 22
    sget-object v0, Lc8/OB;->instance:Lc8/OB;

    if-nez v0, :cond_1

    .line 23
    const-class v1, Lc8/OB;

    monitor-enter v1

    .line 24
    :try_start_0
    sget-object v0, Lc8/OB;->instance:Lc8/OB;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lc8/OB;

    invoke-direct {v0}, Lc8/OB;-><init>()V

    sput-object v0, Lc8/OB;->instance:Lc8/OB;

    .line 27
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :cond_1
    sget-object v0, Lc8/OB;->instance:Lc8/OB;

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private parseConfig(Ljava/lang/String;)Z
    .locals 12
    .param p1, "config"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v11, 0x0

    .line 97
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 145
    :cond_0
    :goto_0
    return v8

    .line 99
    :cond_1
    const/4 v3, 0x0

    .line 101
    .local v3, "jsonObj":Lorg/json/JSONObject;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "jsonObj":Lorg/json/JSONObject;
    .local v4, "jsonObj":Lorg/json/JSONObject;
    move-object v3, v4

    .line 104
    .end local v4    # "jsonObj":Lorg/json/JSONObject;
    .restart local v3    # "jsonObj":Lorg/json/JSONObject;
    :goto_1
    if-eqz v3, :cond_0

    .line 105
    const-string/jumbo v9, "v"

    const-string/jumbo v10, ""

    invoke-virtual {v3, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 106
    .local v7, "v":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 109
    const-string/jumbo v8, "aliDomain"

    const-string/jumbo v9, ""

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "aliDomain":Ljava/lang/String;
    const-string/jumbo v8, "thirdPartyDomain"

    const-string/jumbo v9, ""

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 111
    .local v6, "thirdPartyDomain":Ljava/lang/String;
    const-string/jumbo v8, "supportDownloadDomain"

    const-string/jumbo v9, ""

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 112
    .local v5, "supportDownloadDomain":Ljava/lang/String;
    const-string/jumbo v8, "forbiddenDomain"

    const-string/jumbo v9, ""

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, "blackDomain":Ljava/lang/String;
    const-string/jumbo v8, "allowAccessDomain"

    const-string/jumbo v9, ""

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "allowAccessDomain":Ljava/lang/String;
    const-string/jumbo v8, "forbiddenDomainRedirectURL"

    const-string/jumbo v9, ""

    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lc8/OB;->forbiddenDomainRedirectURL:Ljava/lang/String;

    .line 115
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 116
    sput-object v0, Lc8/PB;->DOMAIN_PATTERN:Ljava/lang/String;

    .line 117
    sput-object v11, Lc8/PB;->domainPat:Ljava/util/regex/Pattern;

    .line 119
    :cond_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 120
    sput-object v6, Lc8/PB;->THIRD_PARTY_DOMAIN_PATTERN:Ljava/lang/String;

    .line 121
    sput-object v11, Lc8/PB;->thirdPartyDomain:Ljava/util/regex/Pattern;

    .line 123
    :cond_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 124
    sput-object v5, Lc8/PB;->SUPPORT_DOWNLOAD_DOMAIN_PATTERN:Ljava/lang/String;

    .line 125
    sput-object v11, Lc8/PB;->supportDownloadDomain:Ljava/util/regex/Pattern;

    .line 127
    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 128
    sput-object v1, Lc8/PB;->ALLOW_ACCESS_DOMAIN_PATTERN:Ljava/lang/String;

    .line 129
    sput-object v11, Lc8/PB;->allowAccessDomain:Ljava/util/regex/Pattern;

    .line 131
    :cond_5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 132
    sput-object v2, Lc8/PB;->FORBIDDEN_DOMAIN_PATTERN:Ljava/lang/String;

    .line 133
    sput-object v11, Lc8/PB;->forbiddenDomain:Ljava/util/regex/Pattern;

    .line 135
    iget-object v8, p0, Lc8/OB;->forbiddenDomainRedirectURL:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 137
    iget-object v8, p0, Lc8/OB;->forbiddenDomainRedirectURL:Ljava/lang/String;

    invoke-static {v8}, Lc8/PB;->isBlackUrl(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 138
    const-string/jumbo v8, ""

    iput-object v8, p0, Lc8/OB;->forbiddenDomainRedirectURL:Ljava/lang/String;

    .line 142
    :cond_6
    sput-object v7, Lc8/PB;->v:Ljava/lang/String;

    .line 143
    const/4 v8, 0x1

    goto/16 :goto_0

    .end local v0    # "aliDomain":Ljava/lang/String;
    .end local v1    # "allowAccessDomain":Ljava/lang/String;
    .end local v2    # "blackDomain":Ljava/lang/String;
    .end local v5    # "supportDownloadDomain":Ljava/lang/String;
    .end local v6    # "thirdPartyDomain":Ljava/lang/String;
    .end local v7    # "v":Ljava/lang/String;
    :catch_0
    move-exception v9

    goto/16 :goto_1
.end method


# virtual methods
.method public getForbiddenDomainRedirectURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lc8/OB;->forbiddenDomainRedirectURL:Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 43
    const-string/jumbo v1, "wv_main_config"

    const-string/jumbo v2, "domainwv-data"

    invoke-static {v1, v2}, Lc8/MH;->getStringVal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "content":Ljava/lang/String;
    invoke-direct {p0, v0}, Lc8/OB;->parseConfig(Ljava/lang/String;)Z

    .line 45
    return-void
.end method

.method public updateDomainRule(Lc8/LB;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "callback"    # Lc8/LB;
    .param p2, "defaultUrl"    # Ljava/lang/String;
    .param p3, "snapshortN"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    invoke-static {}, Lc8/KB;->getInstance()Lc8/KB;

    move-result-object v2

    const-string/jumbo v3, "2"

    sget-object v4, Lc8/PB;->v:Ljava/lang/String;

    invoke-static {}, Lc8/MB;->getTargetValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5, p3}, Lc8/KB;->getConfigUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "monitorConfigUrl":Ljava/lang/String;
    :goto_0
    move-object v0, v1

    .line 59
    .local v0, "finalMonitorConfigUrl":Ljava/lang/String;
    invoke-static {}, Lc8/VB;->getInstance()Lc8/VB;

    move-result-object v2

    new-instance v3, Lc8/NB;

    invoke-direct {v3, p0, p1, v0}, Lc8/NB;-><init>(Lc8/OB;Lc8/LB;Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Lc8/VB;->connect(Ljava/lang/String;Lc8/WB;)V

    .line 94
    return-void

    .line 55
    .end local v0    # "finalMonitorConfigUrl":Ljava/lang/String;
    .end local v1    # "monitorConfigUrl":Ljava/lang/String;
    :cond_0
    move-object v1, p2

    .restart local v1    # "monitorConfigUrl":Ljava/lang/String;
    goto :goto_0
.end method
