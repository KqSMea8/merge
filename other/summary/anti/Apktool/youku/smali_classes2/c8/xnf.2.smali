.class public Lc8/xnf;
.super Ljava/lang/Object;
.source "OutgoingAppProcessor.java"


# static fields
.field public static final EXTRA_NAME_SOURCE:Ljava/lang/String; = "source"

.field private static final HANDLE_CODE_SMUGGLE:I = 0x2

.field public static final SOURCE_AUTH:Ljava/lang/String; = "sso_auth"

.field public static final SYSTEM_ACTIONS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "android.media.action.IMAGE_CAPTURE"

    aput-object v2, v0, v1

    sput-object v0, Lc8/xnf;->SYSTEM_ACTIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getUserTrackProperties(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .param p1, "arg1"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "visa"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
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
    .line 118
    const/4 v2, 0x0

    .line 119
    .local v2, "targetUrl":Ljava/lang/String;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 121
    const-string/jumbo v3, "android"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 122
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 130
    :cond_0
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 131
    .local v1, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "targetUrl"

    if-eqz v2, :cond_3

    .end local v2    # "targetUrl":Ljava/lang/String;
    :goto_1
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v3, Lc8/unf;->instance:Lc8/unf;

    iget-object v0, v3, Lc8/unf;->appKey:Ljava/lang/String;

    .line 133
    .local v0, "currentAppKey":Ljava/lang/String;
    const-string/jumbo v3, "currentAppKey"

    if-eqz v0, :cond_4

    .end local v0    # "currentAppKey":Ljava/lang/String;
    :goto_2
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string/jumbo v4, "currentVC"

    invoke-static {}, Lc8/bpf;->getInstance()Lc8/bpf;

    move-result-object v3

    invoke-virtual {v3}, Lc8/bpf;->getCurrentActivityName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {}, Lc8/bpf;->getInstance()Lc8/bpf;

    move-result-object v3

    invoke-virtual {v3}, Lc8/bpf;->getCurrentActivityName()Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string/jumbo v3, "lmSDKV"

    const-string/jumbo v4, "1.3.0"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string/jumbo v4, "data"

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    :goto_4
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string/jumbo v3, "visa"

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .end local p4    # "visa":Ljava/lang/String;
    :goto_5
    invoke-interface {v1, v3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    return-object v1

    .line 124
    .end local v1    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2    # "targetUrl":Ljava/lang/String;
    .restart local p4    # "visa":Ljava/lang/String;
    :cond_1
    move-object v2, p3

    goto :goto_0

    .line 126
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 127
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 131
    .restart local v1    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    const-string/jumbo v2, "unknown"

    goto :goto_1

    .line 133
    .end local v2    # "targetUrl":Ljava/lang/String;
    .restart local v0    # "currentAppKey":Ljava/lang/String;
    :cond_4
    const-string/jumbo v0, "unknown"

    goto :goto_2

    .line 134
    .end local v0    # "currentAppKey":Ljava/lang/String;
    :cond_5
    const-string/jumbo v3, "unknown"

    goto :goto_3

    .line 136
    :cond_6
    const-string/jumbo v3, "unknown"

    goto :goto_4

    .line 137
    :cond_7
    const-string/jumbo p4, "unknown"

    goto :goto_5
.end method

.method private isSystemApplication(Landroid/content/Intent;Ljava/lang/String;Landroid/content/Context;)Z
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x1

    .line 154
    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v7

    .line 155
    .local v7, "scheme":Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 156
    invoke-static {}, Lc8/Mnf;->getInstance()Lc8/Mnf;

    move-result-object v11

    invoke-virtual {v11, v7}, Lc8/Mnf;->inSystemSchemes(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 209
    :cond_0
    :goto_0
    return v10

    .line 161
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 163
    sget-object v1, Lc8/xnf;->SYSTEM_ACTIONS:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_2

    aget-object v8, v1, v5

    .line 164
    .local v8, "systemAction":Ljava/lang/String;
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 163
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 170
    .end local v8    # "systemAction":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lc8/Mnf;->getInstance()Lc8/Mnf;

    move-result-object v11

    invoke-virtual {v11, v0}, Lc8/Mnf;->inSystemSchemes(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 176
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 177
    .local v2, "bundle":Landroid/os/Bundle;
    if-eqz v2, :cond_4

    .line 178
    invoke-static {}, Lc8/Mnf;->getInstance()Lc8/Mnf;

    move-result-object v11

    invoke-virtual {v11, v2}, Lc8/Mnf;->inExtraData(Landroid/os/Bundle;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 184
    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v9

    .line 185
    .local v9, "type":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 186
    invoke-static {}, Lc8/Mnf;->getInstance()Lc8/Mnf;

    move-result-object v11

    invoke-virtual {v11, v9}, Lc8/Mnf;->inSystemSchemes(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 192
    :cond_5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 193
    invoke-static {}, Lc8/Mnf;->getInstance()Lc8/Mnf;

    move-result-object v11

    invoke-virtual {v11, p2}, Lc8/Mnf;->inSystemSchemes(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 199
    :cond_6
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 200
    .local v4, "componentName":Landroid/content/ComponentName;
    if-eqz v4, :cond_7

    .line 201
    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 202
    .local v3, "componentClassName":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 203
    invoke-static {}, Lc8/Mnf;->getInstance()Lc8/Mnf;

    move-result-object v11

    invoke-virtual {v11, v3}, Lc8/Mnf;->inSystemSchemes(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 209
    .end local v3    # "componentClassName":Ljava/lang/String;
    :cond_7
    const/4 v10, 0x0

    goto :goto_0
.end method

.method private processSystemApplication(Landroid/content/Intent;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "visa"    # Ljava/lang/String;

    .prologue
    .line 143
    invoke-direct {p0, p1, p2, p3}, Lc8/xnf;->isSystemApplication(Landroid/content/Intent;Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    const-string/jumbo v0, "mgr_flow_lost_to_sys"

    invoke-direct {p0, v0, p1, p2, p4}, Lc8/xnf;->sendWhiteListCheckResult(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string/jumbo v0, "mgr_flow_lost_fly"

    invoke-direct {p0, v0, p1, p2, p4}, Lc8/xnf;->sendWhiteListCheckResult(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const/4 v0, 0x1

    .line 149
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendWhiteListCheckResult(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "arg1"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "visa"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-direct {p0, p1, p2, p3, p4}, Lc8/xnf;->getUserTrackProperties(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 105
    .local v0, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1, v0}, Lc8/npf;->sendCustomHit(Ljava/lang/String;Ljava/util/Map;)V

    .line 106
    return-void
.end method

.method private sendWhiteListCheckResult(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "arg1"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "visa"    # Ljava/lang/String;
    .param p5, "code"    # I

    .prologue
    .line 109
    invoke-direct {p0, p1, p2, p3, p4}, Lc8/xnf;->getUserTrackProperties(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 111
    .local v0, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "handleCode"

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-static {p1, v0}, Lc8/npf;->sendCustomHit(Ljava/lang/String;Ljava/util/Map;)V

    .line 114
    return-void
.end method


# virtual methods
.method public process(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lc8/tnf;)Z
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "componentName"    # Ljava/lang/String;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "listener"    # Lc8/tnf;

    .prologue
    .line 41
    if-eqz p4, :cond_0

    if-nez p1, :cond_1

    .line 42
    :cond_0
    const/4 v0, 0x1

    .line 99
    :goto_0
    return v0

    .line 46
    :cond_1
    const-string/jumbo v0, "alibcVisaChecked"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 47
    .local v8, "visaCheckedValue":I
    const/4 v0, 0x1

    if-ne v8, v0, :cond_2

    .line 48
    const/4 v0, 0x1

    goto :goto_0

    .line 52
    :cond_2
    invoke-static {p1}, Lc8/rpf;->getVisa(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    .line 55
    .local v4, "visaCode":Ljava/lang/String;
    invoke-direct {p0, p1, p2, p4, v4}, Lc8/xnf;->processSystemApplication(Landroid/content/Intent;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 56
    const/4 v0, 0x1

    goto :goto_0

    .line 60
    :cond_3
    invoke-static {}, Lc8/Mnf;->getInstance()Lc8/Mnf;

    move-result-object v6

    .line 61
    .local v6, "config":Lc8/Mnf;
    iget-object v0, v6, Lc8/Mnf;->outgoingAppBlackList:Lc8/Gnf;

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/Gnf;->inBlackList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 62
    const-string/jumbo v1, "mgr_flow_lost_handle"

    const/4 v5, 0x2

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lc8/xnf;->sendWhiteListCheckResult(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;I)V

    .line 63
    const/4 v0, 0x0

    goto :goto_0

    .line 66
    :cond_4
    invoke-virtual {v6}, Lc8/Mnf;->shouldEnableOutgoingWhiteList()Z

    move-result v0

    if-nez v0, :cond_5

    .line 67
    const-string/jumbo v0, "mgr_flow_lost_fly"

    invoke-direct {p0, v0, p1, p2, v4}, Lc8/xnf;->sendWhiteListCheckResult(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const/4 v0, 0x1

    goto :goto_0

    .line 72
    :cond_5
    const-string/jumbo v0, "source"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 73
    .local v7, "source":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "sso_auth"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 74
    const-string/jumbo v0, "mgr_flow_lost_fly"

    invoke-direct {p0, v0, p1, p2, v4}, Lc8/xnf;->sendWhiteListCheckResult(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const/4 v0, 0x1

    goto :goto_0

    .line 78
    :cond_6
    iget-object v9, v6, Lc8/Mnf;->outgoingAppWhiteList:Lc8/Hnf;

    .line 80
    .local v9, "whiteList":Lc8/Hnf;
    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0, p2}, Lc8/Hnf;->inWhiteList(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 81
    const-string/jumbo v0, "mgr_flow_lost_fly"

    invoke-direct {p0, v0, p1, p2, v4}, Lc8/xnf;->sendWhiteListCheckResult(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const/4 v0, 0x1

    goto :goto_0

    .line 85
    :cond_7
    invoke-static {p4, p1, p2, v4}, Lc8/rpf;->visaIsVaild(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 86
    .local v5, "visaCheckRes":I
    const-string/jumbo v0, "AlibcVisa"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vias check res = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    if-nez v5, :cond_8

    .line 88
    const-string/jumbo v0, "mgr_flow_lost_fly"

    invoke-direct {p0, v0, p1, p2, v4}, Lc8/xnf;->sendWhiteListCheckResult(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 92
    :cond_8
    const-string/jumbo v1, "mgr_flow_lost_handle"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lc8/xnf;->sendWhiteListCheckResult(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;I)V

    .line 95
    if-eqz p5, :cond_9

    .line 96
    iget-object v0, v9, Lc8/Hnf;->tip:Ljava/lang/String;

    iget-object v1, v9, Lc8/Hnf;->url:Ljava/lang/String;

    invoke-interface {p5, v0, v1, p4}, Lc8/tnf;->OnOutgoingAppBlocked(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 99
    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_0
.end method
