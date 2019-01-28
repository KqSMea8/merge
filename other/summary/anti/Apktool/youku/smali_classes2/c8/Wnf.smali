.class public Lc8/Wnf;
.super Ljava/lang/Object;
.source "DeeplinkCompoment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Vnf;
    }
.end annotation


# static fields
.field private static final KEY:Ljava/lang/String; = "DLI228724"

.field private static volatile deepLinkInfo:Lc8/Tnf;

.field private static volatile hasExecute:Z

.field private static volatile isConfigSuccess:Z

.field private static isFirst:Z

.field private static volatile isInit:Z

.field private static volatile shouldRegisterCallback:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 24
    sput-boolean v0, Lc8/Wnf;->isInit:Z

    .line 29
    sput-boolean v0, Lc8/Wnf;->hasExecute:Z

    .line 36
    sput-boolean v0, Lc8/Wnf;->isConfigSuccess:Z

    .line 41
    sput-boolean v1, Lc8/Wnf;->isFirst:Z

    .line 46
    sput-boolean v1, Lc8/Wnf;->shouldRegisterCallback:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 22
    sget-boolean v0, Lc8/Wnf;->isConfigSuccess:Z

    return v0
.end method

.method static synthetic access$100()Lc8/Tnf;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lc8/Wnf;->deepLinkInfo:Lc8/Tnf;

    return-object v0
.end method

.method static synthetic access$102(Lc8/Tnf;)Lc8/Tnf;
    .locals 0
    .param p0, "x0"    # Lc8/Tnf;

    .prologue
    .line 22
    sput-object p0, Lc8/Wnf;->deepLinkInfo:Lc8/Tnf;

    return-object p0
.end method

.method public static closeAutoDeepLinkRoute()V
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x0

    sput-boolean v0, Lc8/Wnf;->shouldRegisterCallback:Z

    .line 202
    return-void
.end method

.method public static declared-synchronized executeDeeplink(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 152
    const-class v1, Lc8/Wnf;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lc8/Wnf;->isInit:Z

    if-nez v0, :cond_0

    .line 153
    const-string/jumbo v0, "LinkManagerSDK"

    const-string/jumbo v2, "DeeplinkCompoment:executeDeeplink has not init"

    invoke-static {v0, v2}, Lc8/fpf;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    :goto_0
    monitor-exit v1

    return-void

    .line 157
    :cond_0
    :try_start_1
    const-string/jumbo v0, "LinkManagerSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DeeplinkCompoment:executeDeeplink \u5f53\u524d\u7684deepLinkInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lc8/Wnf;->deepLinkInfo:Lc8/Tnf;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    if-eqz p0, :cond_1

    sget-object v0, Lc8/Wnf;->deepLinkInfo:Lc8/Tnf;

    if-nez v0, :cond_2

    .line 161
    :cond_1
    const-string/jumbo v0, "LinkManagerSDK"

    const-string/jumbo v2, "DeeplinkCompoment:executeDeeplink config/deepLinkInfo is null"

    invoke-static {v0, v2}, Lc8/fpf;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 166
    :cond_2
    :try_start_2
    sget-object v0, Lc8/Wnf;->deepLinkInfo:Lc8/Tnf;

    invoke-virtual {v0}, Lc8/Tnf;->checkData()Z

    move-result v0

    if-nez v0, :cond_3

    .line 167
    const-string/jumbo v0, "LinkManagerSDK"

    const-string/jumbo v2, "DeeplinkCompoment:executeDeeplink checkData fail"

    invoke-static {v0, v2}, Lc8/fpf;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 172
    :cond_3
    sget-boolean v0, Lc8/Wnf;->hasExecute:Z

    if-nez v0, :cond_4

    .line 173
    const/4 v0, 0x1

    sput-boolean v0, Lc8/Wnf;->hasExecute:Z

    .line 181
    invoke-static {}, Lc8/Mnf;->getInstance()Lc8/Mnf;

    move-result-object v0

    new-instance v2, Lc8/Unf;

    invoke-direct {v2, p0}, Lc8/Unf;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lc8/Mnf;->getFetchConfigCallback(Lc8/Lnf;)V

    goto :goto_0

    .line 175
    :cond_4
    const/4 v0, 0x0

    sput-object v0, Lc8/Wnf;->deepLinkInfo:Lc8/Tnf;

    .line 176
    const-string/jumbo v0, "LinkManagerSDK"

    const-string/jumbo v2, "DeeplinkCompoment:executeDeeplink has executed"

    invoke-static {v0, v2}, Lc8/fpf;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static getDeeplinkInfoAppkey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    sget-object v0, Lc8/Wnf;->deepLinkInfo:Lc8/Tnf;

    if-nez v0, :cond_0

    .line 222
    const-string/jumbo v0, ""

    .line 224
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lc8/Wnf;->deepLinkInfo:Lc8/Tnf;

    iget-object v0, v0, Lc8/Tnf;->appKey:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getDeeplinkVisa()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    sget-object v0, Lc8/Wnf;->deepLinkInfo:Lc8/Tnf;

    if-eqz v0, :cond_0

    sget-object v0, Lc8/Wnf;->deepLinkInfo:Lc8/Tnf;

    invoke-virtual {v0}, Lc8/Tnf;->getVisa()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    const-class v6, Lc8/Wnf;

    monitor-enter v6

    :try_start_0
    sget-boolean v5, Lc8/Wnf;->isInit:Z

    if-eqz v5, :cond_1

    .line 57
    const-string/jumbo v5, "LinkManagerSDK"

    const-string/jumbo v7, "\u5df2\u7ecf\u521d\u59cb\u5316\u8fc7\u4e86"

    invoke-static {v5, v7}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    :cond_0
    :goto_0
    monitor-exit v6

    return-void

    .line 60
    :cond_1
    :try_start_1
    const-string/jumbo v5, "LinkManagerSDK"

    const-string/jumbo v7, "\u9996\u6b21\u521d\u59cb\u5316"

    invoke-static {v5, v7}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const/4 v5, 0x1

    sput-boolean v5, Lc8/Wnf;->isInit:Z

    .line 64
    if-nez p0, :cond_2

    .line 65
    const-string/jumbo v5, "LinkManagerSDK"

    const-string/jumbo v7, "DeeplinkCompoment:executeDeeplink context is null"

    invoke-static {v5, v7}, Lc8/fpf;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 56
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 70
    :cond_2
    :try_start_2
    invoke-static {p0}, Lc8/Ynf;->checkIfFirstRun(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 71
    const-string/jumbo v5, "LinkManagerSDK"

    const-string/jumbo v7, "not first run"

    invoke-static {v5, v7}, Lc8/fpf;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_3
    sget-object v5, Lc8/unf;->instance:Lc8/unf;

    iget-object v5, v5, Lc8/unf;->application:Landroid/app/Application;

    invoke-static {v5}, Lc8/dpf;->getClipboardUtils(Landroid/app/Application;)Lc8/dpf;

    move-result-object v5

    const-string/jumbo v7, "DLI228724"

    invoke-virtual {v5, v7}, Lc8/dpf;->getData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, "val":Ljava/lang/String;
    const-string/jumbo v5, "LinkManagerSDK"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\u83b7\u53d6\u526a\u5207\u7248\u539f\u59cb\u6570\u636e val = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 81
    const-string/jumbo v5, "LinkManagerSDK"

    const-string/jumbo v7, "click board data is null"

    invoke-static {v5, v7}, Lc8/fpf;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 87
    :cond_4
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const/4 v7, 0x0

    invoke-static {v5, v7}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    .line 88
    .local v1, "bytesVal":[B
    new-instance v4, Ljava/lang/String;

    const-string/jumbo v5, "UTF-8"

    invoke-direct {v4, v1, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 89
    .end local v3    # "val":Ljava/lang/String;
    .local v4, "val":Ljava/lang/String;
    :try_start_4
    const-string/jumbo v5, "LinkManagerSDK"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\u83b7\u53d6\u526a\u5207\u7248\u89e3\u5bc6\u540e\u6570\u636e val = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 96
    :try_start_5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 97
    const-string/jumbo v5, "LinkManagerSDK"

    const-string/jumbo v7, "click board decode data is null"

    invoke-static {v5, v7}, Lc8/fpf;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 90
    .end local v1    # "bytesVal":[B
    .end local v4    # "val":Ljava/lang/String;
    .restart local v3    # "val":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 91
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    const-string/jumbo v5, "LinkManagerSDK"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "DeeplinkCompoment:executeDeeplink base64 decode error; e = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lc8/fpf;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 102
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "val":Ljava/lang/String;
    .restart local v1    # "bytesVal":[B
    .restart local v4    # "val":Ljava/lang/String;
    :cond_5
    invoke-static {v4}, Lc8/Tnf;->create(Ljava/lang/String;)Lc8/Tnf;

    move-result-object v5

    sput-object v5, Lc8/Wnf;->deepLinkInfo:Lc8/Tnf;

    .line 105
    sget-object v5, Lc8/Wnf;->deepLinkInfo:Lc8/Tnf;

    if-eqz v5, :cond_6

    sget-object v5, Lc8/Wnf;->deepLinkInfo:Lc8/Tnf;

    invoke-virtual {v5}, Lc8/Tnf;->checkData()Z

    move-result v5

    if-nez v5, :cond_7

    .line 106
    :cond_6
    const/4 v5, 0x0

    sput-object v5, Lc8/Wnf;->deepLinkInfo:Lc8/Tnf;

    .line 107
    const-string/jumbo v5, "LinkManagerSDK"

    const-string/jumbo v7, "DeeplinkCompoment:executeDeeplink info is null or info checkData=false"

    invoke-static {v5, v7}, Lc8/fpf;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 111
    :cond_7
    const-string/jumbo v5, "LinkManagerSDK"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\u6570\u636e\u89e3\u6790\u6821\u9a8c\u6210\u529f,deeplinkInfo = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lc8/Wnf;->deepLinkInfo:Lc8/Tnf;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    sget-object v5, Lc8/Wnf;->deepLinkInfo:Lc8/Tnf;

    iget-object v5, v5, Lc8/Tnf;->packageName:Ljava/lang/String;

    sget-object v7, Lc8/Wnf;->deepLinkInfo:Lc8/Tnf;

    iget-object v7, v7, Lc8/Tnf;->url:Ljava/lang/String;

    sget-object v8, Lc8/Wnf;->deepLinkInfo:Lc8/Tnf;

    iget-object v8, v8, Lc8/Tnf;->action:Ljava/lang/String;

    sget-object v9, Lc8/Wnf;->deepLinkInfo:Lc8/Tnf;

    iget-object v9, v9, Lc8/Tnf;->categories:Ljava/util/List;

    invoke-static {p0, v5, v7, v8, v9}, Lc8/Ynf;->checkDepplinkApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 116
    sget-object v5, Lc8/Wnf;->deepLinkInfo:Lc8/Tnf;

    iget-object v5, v5, Lc8/Tnf;->appKey:Ljava/lang/String;

    const/4 v7, 0x4

    sget-object v8, Lc8/Wnf;->deepLinkInfo:Lc8/Tnf;

    invoke-virtual {v8}, Lc8/Tnf;->getVisa()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v5, v7, v8}, Lc8/aof;->sendDeepLinkOverPoint(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 117
    const/4 v5, 0x0

    sput-object v5, Lc8/Wnf;->deepLinkInfo:Lc8/Tnf;

    .line 118
    const-string/jumbo v5, "LinkManagerSDK"

    const-string/jumbo v7, "DeeplinkCompoment:executeDeeplink checkDepplinkApp=false"

    invoke-static {v5, v7}, Lc8/fpf;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 122
    :cond_8
    const-string/jumbo v5, "LinkManagerSDK"

    const-string/jumbo v7, "\u662f\u5f53\u524dApp\u53ef\u4ee5\u89e3\u6790Deeplink\u6570\u636e"

    invoke-static {v5, v7}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    sget-object v5, Lc8/unf;->instance:Lc8/unf;

    iget-object v5, v5, Lc8/unf;->application:Landroid/app/Application;

    invoke-static {v5}, Lc8/dpf;->getClipboardUtils(Landroid/app/Application;)Lc8/dpf;

    move-result-object v5

    invoke-virtual {v5}, Lc8/dpf;->clearData()V

    .line 128
    sget-object v5, Lc8/Wnf;->deepLinkInfo:Lc8/Tnf;

    iget-object v5, v5, Lc8/Tnf;->appKey:Ljava/lang/String;

    sget-object v7, Lc8/Wnf;->deepLinkInfo:Lc8/Tnf;

    invoke-virtual {v7}, Lc8/Tnf;->getSourceVC()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lc8/Wnf;->deepLinkInfo:Lc8/Tnf;

    invoke-virtual {v8}, Lc8/Tnf;->getVisa()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v5, v7, v8}, Lc8/aof;->sendDeepLinkExistPoint(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string/jumbo v5, "LinkManagerSDK"

    const-string/jumbo v7, "\u6e05\u9664\u526a\u5207\u7248\u6570\u636e"

    invoke-static {v5, v7}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    sget-boolean v5, Lc8/Wnf;->shouldRegisterCallback:Z

    if-eqz v5, :cond_0

    .line 134
    const-string/jumbo v5, "LinkManagerSDK"

    const-string/jumbo v7, "\u6ce8\u518ccallback"

    invoke-static {v5, v7}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    instance-of v5, v5, Landroid/app/Application;

    if-eqz v5, :cond_9

    .line 137
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 138
    .local v0, "application":Landroid/app/Application;
    new-instance v5, Lc8/Znf;

    invoke-direct {v5}, Lc8/Znf;-><init>()V

    invoke-virtual {v0, v5}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto/16 :goto_0

    .line 140
    .end local v0    # "application":Landroid/app/Application;
    :cond_9
    const-string/jumbo v5, "LinkManagerSDK"

    const-string/jumbo v7, "DeeplinkCompoment:executeDeeplink can not get application"

    invoke-static {v5, v7}, Lc8/fpf;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 90
    :catch_1
    move-exception v2

    move-object v3, v4

    .end local v4    # "val":Ljava/lang/String;
    .restart local v3    # "val":Ljava/lang/String;
    goto/16 :goto_1
.end method

.method public static declared-synchronized setConfigFinishResult(Z)V
    .locals 4
    .param p0, "isConfigSuccess"    # Z

    .prologue
    .line 209
    const-class v1, Lc8/Wnf;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lc8/Wnf;->isFirst:Z

    if-eqz v0, :cond_0

    .line 210
    const-string/jumbo v0, "LinkManagerSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "config \u9996\u6b21\u56de\u8c03,isSuccess = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const/4 v0, 0x0

    sput-boolean v0, Lc8/Wnf;->isFirst:Z

    .line 212
    sput-boolean p0, Lc8/Wnf;->isConfigSuccess:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    :cond_0
    monitor-exit v1

    return-void

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
