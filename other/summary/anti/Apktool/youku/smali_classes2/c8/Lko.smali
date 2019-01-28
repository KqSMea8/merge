.class public Lc8/Lko;
.super Lc8/RD;
.source "PassportJSBridge.java"


# static fields
.field public static final JS_BRIDGE_ACCOUNT:Ljava/lang/String; = "WVYoukuAccountJSBridge"

.field private static final TAG:Ljava/lang/String; = "PassportJSBridge"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lc8/RD;-><init>()V

    return-void
.end method

.method private static _1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
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

.method private bindThirdAccount(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 7
    .param p1, "aParams"    # Ljava/lang/String;
    .param p2, "aCallback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 116
    if-nez p2, :cond_0

    .line 156
    :goto_0
    return-void

    .line 121
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 122
    .local v2, "paramObj":Lorg/json/JSONObject;
    const-string/jumbo v6, "tlsite"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 123
    .local v4, "tlSite":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 124
    new-instance v5, Lc8/kE;

    invoke-direct {v5}, Lc8/kE;-><init>()V

    .line 125
    .local v5, "wvResult":Lc8/kE;
    new-instance v3, Lc8/Oko;

    invoke-direct {v3}, Lc8/Oko;-><init>()V

    .line 126
    .local v3, "result":Lc8/Oko;
    const/16 v6, -0x68

    invoke-virtual {v3, v6}, Lc8/Oko;->setResultCode(I)V

    .line 127
    invoke-virtual {v3}, Lc8/Oko;->toJson()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v5, v6}, Lc8/kE;->setData(Lorg/json/JSONObject;)V

    .line 128
    invoke-virtual {p2, v5}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 150
    .end local v2    # "paramObj":Lorg/json/JSONObject;
    .end local v3    # "result":Lc8/Oko;
    .end local v4    # "tlSite":Ljava/lang/String;
    .end local v5    # "wvResult":Lc8/kE;
    :catch_0
    move-exception v0

    .line 151
    .local v0, "aE":Ljava/lang/Throwable;
    new-instance v5, Lc8/kE;

    invoke-direct {v5}, Lc8/kE;-><init>()V

    .line 152
    .restart local v5    # "wvResult":Lc8/kE;
    new-instance v6, Lc8/Oko;

    invoke-direct {v6}, Lc8/Oko;-><init>()V

    invoke-virtual {v6}, Lc8/Oko;->toJson()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v5, v6}, Lc8/kE;->setData(Lorg/json/JSONObject;)V

    .line 153
    invoke-virtual {p2, v5}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    .line 154
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 130
    .end local v0    # "aE":Ljava/lang/Throwable;
    .end local v5    # "wvResult":Lc8/kE;
    .restart local v2    # "paramObj":Lorg/json/JSONObject;
    .restart local v4    # "tlSite":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string/jumbo v6, "source"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, "from":Ljava/lang/String;
    new-instance v6, Lc8/Jko;

    invoke-direct {v6, p0, p2}, Lc8/Jko;-><init>(Lc8/Lko;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    invoke-static {v6, v4, v1}, Lc8/Gko;->bindSNS(Lc8/Mko;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private queryThirdBindStatus(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 6
    .param p1, "aParams"    # Ljava/lang/String;
    .param p2, "aCallback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 73
    if-nez p2, :cond_0

    .line 111
    :goto_0
    return-void

    .line 78
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 79
    .local v2, "paramObj":Lorg/json/JSONObject;
    const-string/jumbo v5, "tlsite"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 80
    .local v4, "tlSite":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 81
    new-instance v3, Lc8/kE;

    invoke-direct {v3}, Lc8/kE;-><init>()V

    .line 82
    .local v3, "result":Lc8/kE;
    new-instance v1, Lc8/Pko;

    invoke-direct {v1}, Lc8/Pko;-><init>()V

    .line 83
    .local v1, "info":Lc8/Pko;
    const/16 v5, -0x68

    invoke-virtual {v1, v5}, Lc8/Pko;->setResultCode(I)V

    .line 84
    invoke-virtual {v1}, Lc8/Pko;->toJson()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v5}, Lc8/kE;->setData(Lorg/json/JSONObject;)V

    .line 85
    invoke-virtual {p2, v3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 105
    .end local v1    # "info":Lc8/Pko;
    .end local v2    # "paramObj":Lorg/json/JSONObject;
    .end local v3    # "result":Lc8/kE;
    .end local v4    # "tlSite":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 106
    .local v0, "aE":Ljava/lang/Throwable;
    new-instance v3, Lc8/kE;

    invoke-direct {v3}, Lc8/kE;-><init>()V

    .line 107
    .restart local v3    # "result":Lc8/kE;
    new-instance v5, Lc8/Pko;

    invoke-direct {v5}, Lc8/Pko;-><init>()V

    invoke-virtual {v5}, Lc8/Pko;->toJson()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v5}, Lc8/kE;->setData(Lorg/json/JSONObject;)V

    .line 108
    invoke-virtual {p2, v3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    .line 109
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 87
    .end local v0    # "aE":Ljava/lang/Throwable;
    .end local v3    # "result":Lc8/kE;
    .restart local v2    # "paramObj":Lorg/json/JSONObject;
    .restart local v4    # "tlSite":Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v5, Lc8/Iko;

    invoke-direct {v5, p0, p2}, Lc8/Iko;-><init>(Lc8/Lko;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    invoke-static {v5, v4}, Lc8/Gko;->getSNSBindInfo(Lc8/Mko;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static register()V
    .locals 3

    .prologue
    .line 32
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "initJSBridge in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    const-string/jumbo v1, "WVYoukuAccountJSBridge"

    const-class v2, Lc8/Lko;

    invoke-static {v1, v2}, Lc8/jE;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .local v0, "e":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 34
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 35
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private unbindThirdAccount(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 7
    .param p1, "aParams"    # Ljava/lang/String;
    .param p2, "aCallback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 161
    if-nez p2, :cond_0

    .line 201
    :goto_0
    return-void

    .line 166
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 167
    .local v2, "paramObj":Lorg/json/JSONObject;
    const-string/jumbo v6, "tlsite"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 168
    .local v4, "tlSite":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 169
    new-instance v5, Lc8/kE;

    invoke-direct {v5}, Lc8/kE;-><init>()V

    .line 170
    .local v5, "wvResult":Lc8/kE;
    new-instance v3, Lc8/Oko;

    invoke-direct {v3}, Lc8/Oko;-><init>()V

    .line 171
    .local v3, "result":Lc8/Oko;
    const/16 v6, -0x68

    invoke-virtual {v3, v6}, Lc8/Oko;->setResultCode(I)V

    .line 172
    invoke-virtual {v3}, Lc8/Oko;->toJson()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v5, v6}, Lc8/kE;->setData(Lorg/json/JSONObject;)V

    .line 173
    invoke-virtual {p2, v5}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 195
    .end local v2    # "paramObj":Lorg/json/JSONObject;
    .end local v3    # "result":Lc8/Oko;
    .end local v4    # "tlSite":Ljava/lang/String;
    .end local v5    # "wvResult":Lc8/kE;
    :catch_0
    move-exception v0

    .line 196
    .local v0, "aE":Ljava/lang/Throwable;
    new-instance v5, Lc8/kE;

    invoke-direct {v5}, Lc8/kE;-><init>()V

    .line 197
    .restart local v5    # "wvResult":Lc8/kE;
    new-instance v6, Lc8/Oko;

    invoke-direct {v6}, Lc8/Oko;-><init>()V

    invoke-virtual {v6}, Lc8/Oko;->toJson()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v5, v6}, Lc8/kE;->setData(Lorg/json/JSONObject;)V

    .line 198
    invoke-virtual {p2, v5}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    .line 199
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 175
    .end local v0    # "aE":Ljava/lang/Throwable;
    .end local v5    # "wvResult":Lc8/kE;
    .restart local v2    # "paramObj":Lorg/json/JSONObject;
    .restart local v4    # "tlSite":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string/jumbo v6, "source"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, "from":Ljava/lang/String;
    new-instance v6, Lc8/Kko;

    invoke-direct {v6, p0, p2}, Lc8/Kko;-><init>(Lc8/Lko;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    invoke-static {v6, v4, v1}, Lc8/Gko;->unbindSNS(Lc8/Mko;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 8
    .param p1, "aAction"    # Ljava/lang/String;
    .param p2, "aParams"    # Ljava/lang/String;
    .param p3, "aCallback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 51
    :try_start_0
    const-class v4, Lc8/Lko;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    aput-object v7, v5, v6

    invoke-virtual {v4, p1, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 53
    .local v2, "targetMethod":Ljava/lang/reflect/Method;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x1

    aput-object p3, v4, v5

    invoke-static {v2, p0, v4}, Lc8/Lko;->_1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 54
    const/4 v1, 0x1

    .line 67
    .end local v2    # "targetMethod":Ljava/lang/reflect/Method;
    .local v1, "exists":Z
    :goto_0
    return v1

    .line 55
    .end local v1    # "exists":Z
    :catch_0
    move-exception v0

    .line 56
    .local v0, "aE":Ljava/lang/NoSuchMethodException;
    const/4 v1, 0x0

    .line 57
    .restart local v1    # "exists":Z
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 58
    .end local v0    # "aE":Ljava/lang/NoSuchMethodException;
    .end local v1    # "exists":Z
    :catch_1
    move-exception v0

    .line 59
    .local v0, "aE":Ljava/lang/Throwable;
    const/4 v1, 0x1

    .line 60
    .restart local v1    # "exists":Z
    new-instance v3, Lc8/kE;

    invoke-direct {v3}, Lc8/kE;-><init>()V

    .line 61
    .local v3, "wvResult":Lc8/kE;
    new-instance v4, Lc8/Oko;

    invoke-direct {v4}, Lc8/Oko;-><init>()V

    invoke-virtual {v4}, Lc8/Oko;->toJson()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lc8/kE;->setData(Lorg/json/JSONObject;)V

    .line 62
    if-eqz p3, :cond_0

    .line 63
    invoke-virtual {p3, v3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    .line 65
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
