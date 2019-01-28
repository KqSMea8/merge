.class public Lc8/fE;
.super Ljava/lang/Object;
.source "WVJsBridge.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final CALL_EXECUTE:I = 0x0

.field public static final CALL_METHOD:I = 0x1

.field public static final CLOSED:I = 0x4

.field public static final NO_METHOD:I = 0x2

.field public static final NO_PERMISSION:I = 0x3

.field private static final TAG:Ljava/lang/String; = "WVJsBridge"

.field private static mHandler:Landroid/os/Handler;

.field private static mJsBridge:Lc8/fE;


# instance fields
.field private enabled:Z

.field private isInit:Z

.field private mSkipPreprocess:Z

.field public mTailBridges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/taobao/windvane/jsbridge/WVCallMethodContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/fE;->enabled:Z

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/fE;->isInit:Z

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/fE;->mTailBridges:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lc8/fE;->mHandler:Landroid/os/Handler;

    .line 73
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

.method public static aftercallMethod(Landroid/taobao/windvane/jsbridge/WVCallMethodContext;Ljava/lang/String;)V
    .locals 9
    .param p0, "callmethod"    # Landroid/taobao/windvane/jsbridge/WVCallMethodContext;
    .param p1, "pageUrl"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x2

    const/4 v6, 0x0

    .line 218
    iget-object v3, p0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->objectName:Ljava/lang/String;

    iget-object v4, p0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->methodName:Ljava/lang/String;

    invoke-static {v3, v4}, Lc8/jE;->getOriginalPlugin(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 219
    .local v2, "origPlugin":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v2, :cond_1

    .line 220
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 221
    const-string/jumbo v4, "WVJsBridge"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "call method through alias name. newObject: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v3, "name"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " newMethod: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v3, "method"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_0
    const-string/jumbo v3, "name"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->objectName:Ljava/lang/String;

    .line 225
    const-string/jumbo v3, "method"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->methodName:Ljava/lang/String;

    .line 227
    :cond_1
    iget-object v3, p0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->webview:Landroid/taobao/windvane/webview/IWVWebView;

    iget-object v4, p0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->objectName:Ljava/lang/String;

    invoke-interface {v3, v4}, Landroid/taobao/windvane/webview/IWVWebView;->getJsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 229
    .local v0, "classinstance":Ljava/lang/Object;
    if-eqz v0, :cond_5

    .line 230
    instance-of v3, v0, Lc8/RD;

    if-eqz v3, :cond_2

    .line 231
    const-string/jumbo v3, "WVJsBridge"

    const-string/jumbo v4, "call new method execute."

    invoke-static {v3, v4}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->classinstance:Ljava/lang/Object;

    .line 233
    invoke-static {v6, p0}, Lc8/fE;->startCall(ILandroid/taobao/windvane/jsbridge/WVCallMethodContext;)V

    .line 259
    :goto_0
    return-void

    .line 237
    :cond_2
    :try_start_0
    iget-object v3, p0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->methodName:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 238
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, p0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->methodName:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/Object;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 239
    .local v1, "method":Ljava/lang/reflect/Method;
    const-class v3, Lc8/lE;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 240
    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->classinstance:Ljava/lang/Object;

    .line 241
    iput-object v1, p0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->method:Ljava/lang/reflect/Method;

    .line 242
    const/4 v3, 0x1

    invoke-static {v3, p0}, Lc8/fE;->startCall(ILandroid/taobao/windvane/jsbridge/WVCallMethodContext;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 250
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v3

    const-string/jumbo v3, "WVJsBridge"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "callMethod: Method "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->methodName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " didn\'t found. It must has two parameter, Object.class and String.class, obj="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->objectName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :cond_3
    :goto_1
    invoke-static {v8, p0}, Lc8/fE;->startCall(ILandroid/taobao/windvane/jsbridge/WVCallMethodContext;)V

    goto :goto_0

    .line 245
    .restart local v1    # "method":Ljava/lang/reflect/Method;
    :cond_4
    :try_start_1
    const-string/jumbo v3, "WVJsBridge"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "callMethod: Method "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->methodName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " didn\'t has @WindVaneInterface annotation, obj="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->objectName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 254
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :cond_5
    const-string/jumbo v3, "WVJsBridge"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "callMethod: Plugin "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->objectName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " didn\'t found, you should call WVPluginManager.registerPlugin first."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private callMethod(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;Lc8/PD;Lc8/OD;)V
    .locals 5
    .param p1, "webView"    # Landroid/taobao/windvane/webview/IWVWebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "succeedCallBack"    # Lc8/PD;
    .param p4, "failedCallBack"    # Lc8/OD;

    .prologue
    .line 124
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    const-string/jumbo v2, "WVJsBridge"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "callMethod: url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_0
    iget-boolean v2, p0, Lc8/fE;->isInit:Z

    if-nez v2, :cond_1

    .line 128
    const-string/jumbo v2, "WVJsBridge"

    const-string/jumbo v3, "jsbridge is not init."

    invoke-static {v2, v3}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :goto_0
    return-void

    .line 131
    :cond_1
    invoke-direct {p0, p2}, Lc8/fE;->getRequest(Ljava/lang/String;)Landroid/taobao/windvane/jsbridge/WVCallMethodContext;

    move-result-object v1

    .line 132
    .local v1, "request":Landroid/taobao/windvane/jsbridge/WVCallMethodContext;
    if-nez v1, :cond_2

    .line 133
    const-string/jumbo v2, "WVJsBridge"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "url format error and call canceled. url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_2
    iput-object p1, v1, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->webview:Landroid/taobao/windvane/webview/IWVWebView;

    .line 142
    if-eqz p3, :cond_3

    .line 143
    iput-object p3, v1, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->succeedCallBack:Lc8/PD;

    .line 145
    :cond_3
    if-eqz p4, :cond_4

    .line 146
    iput-object p4, v1, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->failedCallBack:Lc8/OD;

    .line 149
    :cond_4
    invoke-interface {p1}, Landroid/taobao/windvane/webview/IWVWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "pageUrl":Ljava/lang/String;
    new-instance v2, Lc8/eE;

    invoke-direct {v2, p0, v1, v0}, Lc8/eE;-><init>(Lc8/fE;Landroid/taobao/windvane/jsbridge/WVCallMethodContext;Ljava/lang/String;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lc8/eE;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lc8/fE;
    .locals 2

    .prologue
    .line 65
    const-class v1, Lc8/fE;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/fE;->mJsBridge:Lc8/fE;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lc8/fE;

    invoke-direct {v0}, Lc8/fE;-><init>()V

    sput-object v0, Lc8/fE;->mJsBridge:Lc8/fE;

    .line 68
    :cond_0
    sget-object v0, Lc8/fE;->mJsBridge:Lc8/fE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getRequest(Ljava/lang/String;)Landroid/taobao/windvane/jsbridge/WVCallMethodContext;
    .locals 7
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 364
    if-eqz p1, :cond_0

    const-string/jumbo v5, "hybrid://"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    move-object v0, v4

    .line 386
    :cond_1
    :goto_0
    return-object v0

    .line 369
    :cond_2
    :try_start_0
    new-instance v0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;

    invoke-direct {v0}, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;-><init>()V

    .line 370
    .local v0, "ctx":Landroid/taobao/windvane/jsbridge/WVCallMethodContext;
    const/16 v5, 0x3a

    const/16 v6, 0x9

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 371
    .local v1, "tmpIndex1":I
    const/16 v5, 0x9

    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->objectName:Ljava/lang/String;

    .line 372
    const/16 v5, 0x2f

    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 373
    .local v2, "tmpIndex2":I
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->token:Ljava/lang/String;

    .line 374
    const/16 v5, 0x3f

    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 375
    .local v3, "tmpIndex3":I
    if-lez v3, :cond_4

    .line 376
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->methodName:Ljava/lang/String;

    .line 377
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->params:Ljava/lang/String;

    .line 381
    :goto_1
    iget-object v5, v0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->objectName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    iget-object v5, v0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->token:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    iget-object v5, v0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->methodName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_1

    .end local v0    # "ctx":Landroid/taobao/windvane/jsbridge/WVCallMethodContext;
    .end local v1    # "tmpIndex1":I
    .end local v2    # "tmpIndex2":I
    .end local v3    # "tmpIndex3":I
    :cond_3
    :goto_2
    move-object v0, v4

    .line 386
    goto :goto_0

    .line 379
    .restart local v0    # "ctx":Landroid/taobao/windvane/jsbridge/WVCallMethodContext;
    .restart local v1    # "tmpIndex1":I
    .restart local v2    # "tmpIndex2":I
    .restart local v3    # "tmpIndex3":I
    :cond_4
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->methodName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v0    # "ctx":Landroid/taobao/windvane/jsbridge/WVCallMethodContext;
    .end local v1    # "tmpIndex1":I
    .end local v2    # "tmpIndex2":I
    .end local v3    # "tmpIndex3":I
    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method public static startCall(ILandroid/taobao/windvane/jsbridge/WVCallMethodContext;)V
    .locals 2
    .param p0, "type"    # I
    .param p1, "callmethod"    # Landroid/taobao/windvane/jsbridge/WVCallMethodContext;

    .prologue
    .line 262
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 263
    .local v0, "msg":Landroid/os/Message;
    iput p0, v0, Landroid/os/Message;->what:I

    .line 264
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 265
    sget-object v1, Lc8/fE;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 266
    return-void
.end method


# virtual methods
.method public callMethod(Landroid/taobao/windvane/jsbridge/WVCallMethodContext;Ljava/lang/String;)V
    .locals 9
    .param p1, "callMethod"    # Landroid/taobao/windvane/jsbridge/WVCallMethodContext;
    .param p2, "pageUrl"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    .line 167
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 168
    const-string/jumbo v3, "callMethod-obj:%s method:%s param:%s sid:%s"

    new-array v4, v8, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p1, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->objectName:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p1, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->methodName:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, p1, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->params:Ljava/lang/String;

    aput-object v6, v4, v5

    iget-object v5, p1, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->token:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, "log":Ljava/lang/String;
    const-string/jumbo v3, "WVJsBridge"

    invoke-static {v3, v1}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .end local v1    # "log":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lc8/YF;->getJsBridgeMonitor()Lc8/IF;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 174
    invoke-static {}, Lc8/YF;->getJsBridgeMonitor()Lc8/IF;

    move-result-object v3

    iget-object v4, p1, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->objectName:Ljava/lang/String;

    iget-object v5, p1, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->methodName:Ljava/lang/String;

    invoke-interface {v3, v4, v5, p2}, Lc8/IF;->didCallAtURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_1
    iget-boolean v3, p0, Lc8/fE;->enabled:Z

    if-eqz v3, :cond_2

    iget-object v3, p1, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->webview:Landroid/taobao/windvane/webview/IWVWebView;

    if-nez v3, :cond_3

    .line 178
    :cond_2
    const-string/jumbo v3, "WVJsBridge"

    const-string/jumbo v4, "jsbridge is closed."

    invoke-static {v3, v4}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-static {v8, p1}, Lc8/fE;->startCall(ILandroid/taobao/windvane/jsbridge/WVCallMethodContext;)V

    .line 211
    :goto_0
    return-void

    .line 183
    :cond_3
    iget-boolean v3, p0, Lc8/fE;->mSkipPreprocess:Z

    if-nez v3, :cond_7

    .line 187
    invoke-static {}, Lc8/gE;->getJSBridgePreprocessors()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-static {}, Lc8/gE;->getJSBridgePreprocessors()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 188
    invoke-static {}, Lc8/gE;->getJSBridgePreprocessors()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/dE;

    .line 189
    .local v2, "preprocessor":Lc8/dE;
    iget-object v3, p1, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->objectName:Ljava/lang/String;

    iget-object v4, p1, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->methodName:Ljava/lang/String;

    iget-object v5, p1, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->params:Ljava/lang/String;

    invoke-interface {v2, p2, v3, v4, v5}, Lc8/dE;->apiAuthCheck(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 190
    const-string/jumbo v3, "WVJsBridge"

    const-string/jumbo v4, "preprocessor call fail, callMethod cancel."

    invoke-static {v3, v4}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-static {v7, p1}, Lc8/fE;->startCall(ILandroid/taobao/windvane/jsbridge/WVCallMethodContext;)V

    goto :goto_0

    .line 200
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "preprocessor":Lc8/dE;
    :cond_5
    invoke-static {}, Lc8/gE;->getJSBridgeayncPreprocessors()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-static {}, Lc8/gE;->getJSBridgeayncPreprocessors()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 201
    invoke-static {}, Lc8/gE;->getJSBridgeayncPreprocessors()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/UD;

    .line 202
    .local v2, "preprocessor":Lc8/UD;
    new-instance v3, Lc8/VD;

    invoke-direct {v3}, Lc8/VD;-><init>()V

    invoke-interface {v2, p2, p1, v3}, Lc8/UD;->AsyncapiAuthCheck(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallMethodContext;Lc8/TD;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 203
    const-string/jumbo v3, "WVJsBridge"

    const-string/jumbo v4, "enter  WVAsyncAuthCheck preprocessor  "

    invoke-static {v3, v4}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 210
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "preprocessor":Lc8/UD;
    :cond_7
    invoke-static {p1, p2}, Lc8/fE;->aftercallMethod(Landroid/taobao/windvane/jsbridge/WVCallMethodContext;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public callMethod(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "webView"    # Landroid/taobao/windvane/webview/IWVWebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 120
    invoke-direct {p0, p1, p2, v0, v0}, Lc8/fE;->callMethod(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;Lc8/PD;Lc8/OD;)V

    .line 121
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 390
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/fE;->isInit:Z

    .line 391
    return-void
.end method

.method public exCallMethod(Lc8/hE;Landroid/taobao/windvane/jsbridge/WVCallMethodContext;Lc8/OD;Lc8/PD;)V
    .locals 2
    .param p1, "entryManager"    # Lc8/hE;
    .param p2, "wvCallMethodContext"    # Landroid/taobao/windvane/jsbridge/WVCallMethodContext;
    .param p3, "failedCallBack"    # Lc8/OD;
    .param p4, "succeedCallBack"    # Lc8/PD;

    .prologue
    .line 94
    if-eqz p2, :cond_0

    .line 96
    iput-object p3, p2, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->failedCallBack:Lc8/OD;

    .line 97
    iput-object p4, p2, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->succeedCallBack:Lc8/PD;

    .line 99
    iget-object v0, p2, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->objectName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p2, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->objectName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lc8/hE;->getEntry(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p2, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->classinstance:Ljava/lang/Object;

    .line 101
    iget-object v0, p2, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->classinstance:Ljava/lang/Object;

    instance-of v0, v0, Lc8/RD;

    if-eqz v0, :cond_1

    .line 102
    const-string/jumbo v0, "WVJsBridge"

    const-string/jumbo v1, "call new method execute."

    invoke-static {v0, v1}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const/4 v0, 0x0

    invoke-static {v0, p2}, Lc8/fE;->startCall(ILandroid/taobao/windvane/jsbridge/WVCallMethodContext;)V

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    const/4 v0, 0x2

    invoke-static {v0, p2}, Lc8/fE;->startCall(ILandroid/taobao/windvane/jsbridge/WVCallMethodContext;)V

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 270
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;

    .line 271
    .local v9, "callmethod":Landroid/taobao/windvane/jsbridge/WVCallMethodContext;
    if-nez v9, :cond_0

    .line 272
    const-string/jumbo v2, "WVJsBridge"

    const-string/jumbo v3, "CallMethodContext is null, and do nothing."

    invoke-static {v2, v3}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const/4 v2, 0x0

    .line 354
    :goto_0
    return v2

    .line 275
    :cond_0
    new-instance v1, Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    iget-object v2, v9, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->webview:Landroid/taobao/windvane/webview/IWVWebView;

    iget-object v3, v9, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->token:Ljava/lang/String;

    iget-object v4, v9, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->objectName:Ljava/lang/String;

    iget-object v5, v9, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->methodName:Ljava/lang/String;

    iget-object v6, v9, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->succeedCallBack:Lc8/PD;

    iget-object v7, v9, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->failedCallBack:Lc8/OD;

    invoke-direct/range {v1 .. v7}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;-><init>(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/PD;Lc8/OD;)V

    .line 277
    .local v1, "callback":Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    invoke-static {}, Lc8/YF;->getJsBridgeMonitor()Lc8/IF;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->getWebview()Landroid/taobao/windvane/webview/IWVWebView;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v10, 0x1

    .line 278
    .local v10, "canMonitorUrl":Z
    :goto_1
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 354
    const/4 v2, 0x0

    goto :goto_0

    .line 277
    .end local v10    # "canMonitorUrl":Z
    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    .line 280
    .restart local v10    # "canMonitorUrl":Z
    :pswitch_0
    iget-object v14, v9, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->classinstance:Ljava/lang/Object;

    .line 281
    .local v14, "object":Ljava/lang/Object;
    check-cast v14, Lc8/RD;

    .end local v14    # "object":Ljava/lang/Object;
    iget-object v3, v9, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->methodName:Ljava/lang/String;

    iget-object v2, v9, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->params:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "{}"

    :goto_2
    invoke-virtual {v14, v3, v2, v1}, Lc8/RD;->execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 283
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 284
    const-string/jumbo v2, "WVJsBridge"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "WVApiPlugin execute failed. method: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v9, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->methodName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :cond_2
    const/4 v2, 0x2

    invoke-static {v2, v9}, Lc8/fE;->startCall(ILandroid/taobao/windvane/jsbridge/WVCallMethodContext;)V

    .line 300
    :goto_3
    const/4 v2, 0x1

    goto :goto_0

    .line 281
    :cond_3
    iget-object v2, v9, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->params:Ljava/lang/String;

    goto :goto_2

    .line 290
    :cond_4
    :try_start_0
    sget-object v13, Landroid/taobao/windvane/webview/IWVWebView;->JsbridgeHis:Ljava/util/concurrent/ConcurrentHashMap;

    .line 291
    .local v13, "jsHisMap":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 292
    .local v11, "count":Ljava/lang/Integer;
    const-string/jumbo v2, "%s.%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v9, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->objectName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, v9, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->methodName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 293
    .local v8, "bridge":Ljava/lang/String;
    invoke-interface {v13, v8}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 294
    invoke-interface {v13, v8}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 296
    :cond_5
    sget-object v2, Landroid/taobao/windvane/webview/IWVWebView;->JsbridgeHis:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v8, v11}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .end local v8    # "bridge":Ljava/lang/String;
    .end local v11    # "count":Ljava/lang/Integer;
    .end local v13    # "jsHisMap":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catch_0
    move-exception v2

    goto :goto_3

    .line 303
    :pswitch_1
    iget-object v14, v9, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->classinstance:Ljava/lang/Object;

    .line 305
    .restart local v14    # "object":Ljava/lang/Object;
    :try_start_1
    iget-object v3, v9, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->method:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    const/4 v5, 0x1

    iget-object v2, v9, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->params:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string/jumbo v2, "{}"

    :goto_4
    aput-object v2, v4, v5

    invoke-static {v3, v14, v4}, Lc8/fE;->_1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    :goto_5
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 305
    :cond_6
    iget-object v2, v9, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->params:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 306
    :catch_1
    move-exception v12

    .line 307
    .local v12, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "WVJsBridge"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "call method "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v9, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " exception. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 312
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v14    # "object":Ljava/lang/Object;
    :pswitch_2
    new-instance v15, Lc8/kE;

    invoke-direct {v15}, Lc8/kE;-><init>()V

    .line 313
    .local v15, "result":Lc8/kE;
    const-string/jumbo v2, "HY_NO_HANDLER"

    invoke-virtual {v15, v2}, Lc8/kE;->setResult(Ljava/lang/String;)V

    .line 314
    if-eqz v10, :cond_7

    .line 316
    :try_start_2
    invoke-static {}, Lc8/YF;->getJsBridgeMonitor()Lc8/IF;

    move-result-object v2

    iget-object v3, v9, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->objectName:Ljava/lang/String;

    iget-object v4, v9, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->methodName:Ljava/lang/String;

    const-string/jumbo v5, "HY_NO_HANDLER"

    invoke-virtual {v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->getWebview()Landroid/taobao/windvane/webview/IWVWebView;

    move-result-object v6

    invoke-interface {v6}, Landroid/taobao/windvane/webview/IWVWebView;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v3, v4, v5, v6}, Lc8/IF;->didOccurError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 322
    :cond_7
    :goto_6
    invoke-virtual {v1, v15}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    .line 323
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 318
    :catch_2
    move-exception v12

    .line 319
    .restart local v12    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "WVJsBridge"

    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 326
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v15    # "result":Lc8/kE;
    :pswitch_3
    new-instance v15, Lc8/kE;

    invoke-direct {v15}, Lc8/kE;-><init>()V

    .line 327
    .restart local v15    # "result":Lc8/kE;
    const-string/jumbo v2, "HY_NO_PERMISSION"

    invoke-virtual {v15, v2}, Lc8/kE;->setResult(Ljava/lang/String;)V

    .line 328
    if-eqz v10, :cond_8

    .line 330
    :try_start_3
    invoke-static {}, Lc8/YF;->getJsBridgeMonitor()Lc8/IF;

    move-result-object v2

    iget-object v3, v9, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->objectName:Ljava/lang/String;

    iget-object v4, v9, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->methodName:Ljava/lang/String;

    const-string/jumbo v5, "HY_NO_PERMISSION"

    invoke-virtual {v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->getWebview()Landroid/taobao/windvane/webview/IWVWebView;

    move-result-object v6

    invoke-interface {v6}, Landroid/taobao/windvane/webview/IWVWebView;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v3, v4, v5, v6}, Lc8/IF;->didOccurError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 336
    :cond_8
    :goto_7
    invoke-virtual {v1, v15}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    .line 337
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 332
    :catch_3
    move-exception v12

    .line 333
    .restart local v12    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "WVJsBridge"

    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 340
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v15    # "result":Lc8/kE;
    :pswitch_4
    new-instance v15, Lc8/kE;

    invoke-direct {v15}, Lc8/kE;-><init>()V

    .line 341
    .restart local v15    # "result":Lc8/kE;
    const-string/jumbo v2, "HY_CLOSED"

    invoke-virtual {v15, v2}, Lc8/kE;->setResult(Ljava/lang/String;)V

    .line 342
    if-eqz v10, :cond_9

    .line 344
    :try_start_4
    invoke-static {}, Lc8/YF;->getJsBridgeMonitor()Lc8/IF;

    move-result-object v2

    iget-object v3, v9, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->objectName:Ljava/lang/String;

    iget-object v4, v9, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->methodName:Ljava/lang/String;

    const-string/jumbo v5, "HY_CLOSED"

    invoke-virtual {v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->getWebview()Landroid/taobao/windvane/webview/IWVWebView;

    move-result-object v6

    invoke-interface {v6}, Landroid/taobao/windvane/webview/IWVWebView;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v3, v4, v5, v6}, Lc8/IF;->didOccurError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 350
    :cond_9
    :goto_8
    invoke-virtual {v1, v15}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    .line 351
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 346
    :catch_4
    move-exception v12

    .line 347
    .restart local v12    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "WVJsBridge"

    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 278
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public declared-synchronized init()V
    .locals 1

    .prologue
    .line 79
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lc8/fE;->isInit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    monitor-exit p0

    return-void

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Lc8/fE;->enabled:Z

    .line 88
    return-void
.end method

.method public skipPreprocess()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/fE;->mSkipPreprocess:Z

    .line 84
    return-void
.end method

.method public declared-synchronized tryToRunTailBridges()V
    .locals 5

    .prologue
    .line 54
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lc8/fE;->mTailBridges:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 55
    iget-object v2, p0, Lc8/fE;->mTailBridges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;

    .line 56
    .local v0, "callMethodContext":Landroid/taobao/windvane/jsbridge/WVCallMethodContext;
    const-string/jumbo v2, ""

    invoke-static {v0, v2}, Lc8/fE;->aftercallMethod(Landroid/taobao/windvane/jsbridge/WVCallMethodContext;Ljava/lang/String;)V

    .line 57
    const-string/jumbo v2, "WVJsBridge"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "excute TailJSBridge : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->objectName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->methodName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 54
    .end local v0    # "callMethodContext":Landroid/taobao/windvane/jsbridge/WVCallMethodContext;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 59
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lc8/fE;->mTailBridges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 60
    const/4 v2, 0x0

    iput-object v2, p0, Lc8/fE;->mTailBridges:Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    monitor-exit p0

    return-void
.end method
