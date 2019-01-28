.class public Lc8/Uwb;
.super Ljava/lang/Object;
.source "NetworkEventReporterProxy.java"


# static fields
.field private static final NETWORK_REPORTER_IMPL_CLASS:Ljava/lang/String; = "com.taobao.weex.devtools.inspector.network.NetworkEventReporterImpl"

.field private static final REMOTE_REPORTER_CLASS:Ljava/lang/String; = "com.taobao.weex.devtools.inspector.network.GeneralEventReporter"

.field private static sInstance:Lc8/Uwb;


# instance fields
.field private inspectorExecutor:Ljava/util/concurrent/ExecutorService;

.field private remoteReporter:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 5

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    :try_start_0
    const-string/jumbo v3, "com.taobao.weex.devtools.inspector.network.GeneralEventReporter"

    invoke-static {v3}, Lc8/Uwb;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 28
    .local v1, "reporterClass":Ljava/lang/Class;
    if-eqz v1, :cond_0

    .line 29
    const-string/jumbo v3, "getInstance"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 30
    .local v0, "getInstance":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 31
    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lc8/Uwb;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lc8/Uwb;->remoteReporter:Ljava/lang/Object;

    .line 32
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    iput-object v3, p0, Lc8/Uwb;->inspectorExecutor:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .end local v0    # "getInstance":Ljava/lang/reflect/Method;
    .end local v1    # "reporterClass":Ljava/lang/Class;
    :cond_0
    :goto_0
    return-void

    .line 35
    :catch_0
    move-exception v2

    .line 36
    .local v2, "t":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
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

.method public static getInstance()Lc8/Uwb;
    .locals 2

    .prologue
    .line 42
    sget-object v0, Lc8/Uwb;->sInstance:Lc8/Uwb;

    if-nez v0, :cond_1

    .line 43
    const-class v1, Lc8/Uwb;

    monitor-enter v1

    .line 44
    :try_start_0
    sget-object v0, Lc8/Uwb;->sInstance:Lc8/Uwb;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lc8/Uwb;

    invoke-direct {v0}, Lc8/Uwb;-><init>()V

    sput-object v0, Lc8/Uwb;->sInstance:Lc8/Uwb;

    .line 47
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :cond_1
    sget-object v0, Lc8/Uwb;->sInstance:Lc8/Uwb;

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public dataReceived(Ljava/lang/String;II)V
    .locals 9
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "dataLength"    # I
    .param p3, "encodedDataLength"    # I

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 148
    iget-object v1, p0, Lc8/Uwb;->remoteReporter:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 149
    iget-object v1, p0, Lc8/Uwb;->remoteReporter:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "dataReceived"

    new-array v3, v8, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v7

    invoke-static {v1, v2, v3}, Lc8/txb;->tryGetMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 150
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 151
    iget-object v1, p0, Lc8/Uwb;->remoteReporter:Ljava/lang/Object;

    new-array v2, v8, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v0, v2}, Lc8/txb;->tryInvokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :cond_0
    return-void
.end method

.method public dataSent(Ljava/lang/String;II)V
    .locals 9
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "dataLength"    # I
    .param p3, "encodedDataLength"    # I

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 139
    iget-object v1, p0, Lc8/Uwb;->remoteReporter:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 140
    iget-object v1, p0, Lc8/Uwb;->remoteReporter:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "dataSent"

    new-array v3, v8, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v7

    invoke-static {v1, v2, v3}, Lc8/txb;->tryGetMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 141
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 142
    iget-object v1, p0, Lc8/Uwb;->remoteReporter:Ljava/lang/Object;

    new-array v2, v8, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v0, v2}, Lc8/txb;->tryInvokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :cond_0
    return-void
.end method

.method public execAsync(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 74
    iget-object v1, p0, Lc8/Uwb;->inspectorExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_0

    .line 76
    :try_start_0
    iget-object v1, p0, Lc8/Uwb;->inspectorExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public httpExchangeFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "errorInfo"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 102
    iget-object v1, p0, Lc8/Uwb;->remoteReporter:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lc8/Uwb;->remoteReporter:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "httpExchangeFailed"

    new-array v3, v7, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lc8/txb;->tryGetMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 104
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 105
    iget-object v1, p0, Lc8/Uwb;->remoteReporter:Ljava/lang/Object;

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p1, v2, v5

    aput-object p2, v2, v6

    invoke-static {v1, v0, v2}, Lc8/txb;->tryInvokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :cond_0
    return-void
.end method

.method public interpretResponseStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)Ljava/io/InputStream;
    .locals 10
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "contentEncoding"    # Ljava/lang/String;
    .param p4, "stream"    # Ljava/io/InputStream;
    .param p5, "continueRead"    # Z

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 111
    iget-object v1, p0, Lc8/Uwb;->remoteReporter:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lc8/Uwb;->remoteReporter:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "interpretResponseStream"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v7

    const-class v4, Ljava/io/InputStream;

    aput-object v4, v3, v8

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v9

    invoke-static {v1, v2, v3}, Lc8/txb;->tryGetMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 113
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 114
    iget-object v1, p0, Lc8/Uwb;->remoteReporter:Ljava/lang/Object;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    aput-object p2, v2, v6

    aput-object p3, v2, v7

    aput-object p4, v2, v8

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v1, v0, v2}, Lc8/txb;->tryInvokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    .line 117
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v1

    :cond_0
    move-object v1, p4

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 54
    :try_start_0
    const-string/jumbo v6, "com.taobao.weex.devtools.inspector.network.NetworkEventReporterImpl"

    invoke-static {v6}, Lc8/txb;->tryGetClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 55
    .local v0, "clazz":Ljava/lang/Class;
    if-eqz v0, :cond_0

    .line 56
    const-string/jumbo v6, "get"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-static {v0, v6, v8}, Lc8/txb;->tryGetMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 57
    .local v1, "getMethod":Ljava/lang/reflect/Method;
    const-string/jumbo v6, "isEnabled"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-static {v0, v6, v8}, Lc8/txb;->tryGetMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 58
    .local v2, "isEnabledMethod":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 59
    const/4 v6, 0x0

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v1, v6, v8}, Lc8/Uwb;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 60
    .local v3, "reporter":Ljava/lang/Object;
    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 61
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v2, v6}, Lc8/txb;->tryInvokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 62
    .local v4, "result":Z
    const-string/jumbo v6, "NetworkEventReporterProxy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Is reporter enabled ? "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v1    # "getMethod":Ljava/lang/reflect/Method;
    .end local v2    # "isEnabledMethod":Ljava/lang/reflect/Method;
    .end local v3    # "reporter":Ljava/lang/Object;
    .end local v4    # "result":Z
    :goto_0
    return v4

    .line 67
    :catch_0
    move-exception v5

    .line 68
    .local v5, "t":Ljava/lang/Throwable;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .end local v5    # "t":Ljava/lang/Throwable;
    :cond_0
    move v4, v7

    .line 70
    goto :goto_0
.end method

.method public requestWillBeSent(Lc8/Swb;)V
    .locals 7
    .param p1, "request"    # Lc8/Swb;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 84
    iget-object v1, p0, Lc8/Uwb;->remoteReporter:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lc8/Uwb;->remoteReporter:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "requestWillBeSent"

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Ljava/util/Map;

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lc8/txb;->tryGetMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 86
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 87
    iget-object v1, p0, Lc8/Uwb;->remoteReporter:Ljava/lang/Object;

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lc8/Swb;->getData()Ljava/util/Map;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v0, v2}, Lc8/txb;->tryInvokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :cond_0
    return-void
.end method

.method public responseHeadersReceived(Lc8/Twb;)V
    .locals 7
    .param p1, "response"    # Lc8/Twb;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 93
    iget-object v1, p0, Lc8/Uwb;->remoteReporter:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lc8/Uwb;->remoteReporter:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "responseHeadersReceived"

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Ljava/util/Map;

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lc8/txb;->tryGetMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 95
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 96
    iget-object v1, p0, Lc8/Uwb;->remoteReporter:Ljava/lang/Object;

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lc8/Twb;->getData()Ljava/util/Map;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v0, v2}, Lc8/txb;->tryInvokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :cond_0
    return-void
.end method

.method public responseReadFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "errorInfo"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 121
    iget-object v1, p0, Lc8/Uwb;->remoteReporter:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Lc8/Uwb;->remoteReporter:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "responseReadFailed"

    new-array v3, v7, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lc8/txb;->tryGetMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 123
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 124
    iget-object v1, p0, Lc8/Uwb;->remoteReporter:Ljava/lang/Object;

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p1, v2, v5

    aput-object p2, v2, v6

    invoke-static {v1, v0, v2}, Lc8/txb;->tryInvokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :cond_0
    return-void
.end method

.method public responseReadFinished(Ljava/lang/String;)V
    .locals 7
    .param p1, "requestId"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 130
    iget-object v1, p0, Lc8/Uwb;->remoteReporter:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Lc8/Uwb;->remoteReporter:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "responseReadFinished"

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lc8/txb;->tryGetMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 132
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 133
    iget-object v1, p0, Lc8/Uwb;->remoteReporter:Ljava/lang/Object;

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {v1, v0, v2}, Lc8/txb;->tryInvokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :cond_0
    return-void
.end method
