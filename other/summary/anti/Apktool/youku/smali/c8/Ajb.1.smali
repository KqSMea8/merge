.class public Lc8/Ajb;
.super Landroid/webkit/WebChromeClient;
.source "BridgeWebChromeClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/zjb;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static evaluateJavascriptSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    const-class v0, Lc8/Ajb;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/Ajb;->TAG:Ljava/lang/String;

    .line 26
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lc8/Ajb;->evaluateJavascriptSupported:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 142
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

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 22
    sget-boolean v0, Lc8/Ajb;->evaluateJavascriptSupported:Z

    return v0
.end method

.method private handleWindVaneNoHandler(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 8
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 131
    const/16 v5, 0x3a

    const/16 v6, 0x9

    :try_start_0
    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 132
    .local v2, "tmpIndex1":I
    const/16 v5, 0x2f

    invoke-virtual {p2, v5, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 133
    .local v3, "tmpIndex2":I
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 134
    .local v4, "token":Ljava/lang/String;
    const-string/jumbo v5, "window.WindVane&&window.WindVane.onFailure(%s,\'{\"ret\":\"HY_NO_HANDLER\"\');"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "responseScript":Ljava/lang/String;
    new-instance v5, Lc8/zjb;

    invoke-direct {v5, p1, v1}, Lc8/zjb;-><init>(Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .end local v1    # "responseScript":Ljava/lang/String;
    .end local v2    # "tmpIndex1":I
    .end local v3    # "tmpIndex2":I
    .end local v4    # "token":Ljava/lang/String;
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "ui"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "fail to handler windvane request, the error message is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lc8/Jhb;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private parseMessage(Ljava/lang/String;)Lc8/Bjb;
    .locals 8
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 108
    .local v6, "uri":Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 109
    .local v3, "objName":Ljava/lang/String;
    invoke-virtual {v6}, Landroid/net/Uri;->getPort()I

    move-result v5

    .line 110
    .local v5, "token":I
    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, "methodName":Ljava/lang/String;
    invoke-virtual {v6}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    .line 112
    const-string/jumbo v7, "?"

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 113
    .local v1, "idx":I
    const/4 v7, -0x1

    if-ne v1, v7, :cond_0

    .line 114
    const/4 v4, 0x0

    .line 119
    .local v4, "param":Ljava/lang/String;
    :goto_0
    new-instance v0, Lc8/Bjb;

    invoke-direct {v0}, Lc8/Bjb;-><init>()V

    .line 120
    .local v0, "hbProtocal":Lc8/Bjb;
    iput-object v2, v0, Lc8/Bjb;->methodName:Ljava/lang/String;

    .line 121
    iput-object v3, v0, Lc8/Bjb;->objName:Ljava/lang/String;

    .line 122
    iput-object v4, v0, Lc8/Bjb;->param:Ljava/lang/String;

    .line 123
    iput v5, v0, Lc8/Bjb;->requestId:I

    .line 124
    return-object v0

    .line 116
    .end local v0    # "hbProtocal":Lc8/Bjb;
    .end local v4    # "param":Ljava/lang/String;
    :cond_0
    add-int/lit8 v7, v1, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "param":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    const/4 v1, 0x1

    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, "useToast":Z
    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 103
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 14
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;
    .param p5, "result"    # Landroid/webkit/JsPromptResult;

    .prologue
    .line 31
    if-nez p4, :cond_0

    .line 32
    const/4 v9, 0x0

    .line 93
    :goto_0
    return v9

    .line 35
    :cond_0
    const-string/jumbo v9, "wv_hybrid:"

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 36
    move-object/from16 v0, p3

    invoke-direct {p0, p1, v0}, Lc8/Ajb;->handleWindVaneNoHandler(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 37
    const-string/jumbo v9, ""

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    .line 38
    const/4 v9, 0x1

    goto :goto_0

    .line 41
    :cond_1
    const-string/jumbo v9, "hv_hybrid:"

    move-object/from16 v0, p4

    invoke-static {v0, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 42
    const/4 v9, 0x0

    goto :goto_0

    .line 45
    :cond_2
    instance-of v9, p1, Lc8/sjb;

    if-nez v9, :cond_3

    .line 46
    const/4 v9, 0x0

    goto :goto_0

    :cond_3
    move-object v8, p1

    .line 49
    check-cast v8, Lc8/sjb;

    .line 50
    .local v8, "secureWebView":Lc8/sjb;
    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lc8/Ajb;->parseMessage(Ljava/lang/String;)Lc8/Bjb;

    move-result-object v7

    .line 51
    .local v7, "jbp":Lc8/Bjb;
    new-instance v1, Lc8/ljb;

    invoke-direct {v1}, Lc8/ljb;-><init>()V

    .line 52
    .local v1, "bridgeCallbackContext":Lc8/ljb;
    iget v9, v7, Lc8/Bjb;->requestId:I

    iput v9, v1, Lc8/ljb;->requestId:I

    .line 53
    iput-object v8, v1, Lc8/ljb;->webView:Landroid/webkit/WebView;

    .line 55
    iget-object v9, v7, Lc8/Bjb;->objName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lc8/sjb;->getBridgeObj(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 56
    .local v3, "bridgeObject":Ljava/lang/Object;
    if-nez v3, :cond_4

    .line 57
    const/16 v9, 0x2710

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, v7, Lc8/Bjb;->objName:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lc8/Ngb;->createMessage(I[Ljava/lang/Object;)Lc8/Mgb;

    move-result-object v5

    .line 58
    .local v5, "errorMessage":Lc8/Mgb;
    sget-object v9, Lc8/Ajb;->TAG:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lc8/Jhb;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget v9, v5, Lc8/Mgb;->code:I

    iget-object v10, v5, Lc8/Mgb;->message:Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Lc8/ljb;->onFailure(ILjava/lang/String;)V

    .line 60
    const-string/jumbo v9, ""

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    .line 61
    const/4 v9, 0x1

    goto :goto_0

    .line 66
    .end local v5    # "errorMessage":Lc8/Mgb;
    :cond_4
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    iget-object v10, v7, Lc8/Bjb;->methodName:Ljava/lang/String;

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Lc8/ljb;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-class v13, Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 75
    .local v2, "bridgeMethod":Ljava/lang/reflect/Method;
    const-class v9, Lc8/yjb;

    invoke-virtual {v2, v9}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v6

    .line 76
    .local v6, "isBridgeMethod":Z
    if-eqz v6, :cond_6

    .line 78
    const/4 v9, 0x2

    :try_start_1
    new-array v10, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v1, v10, v9

    const/4 v11, 0x1

    iget-object v9, v7, Lc8/Bjb;->param:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    const-string/jumbo v9, "{}"

    :goto_1
    aput-object v9, v10, v11

    invoke-static {v2, v3, v10}, Lc8/Ajb;->_1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 92
    :goto_2
    const-string/jumbo v9, ""

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    .line 93
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 67
    .end local v2    # "bridgeMethod":Ljava/lang/reflect/Method;
    .end local v6    # "isBridgeMethod":Z
    :catch_0
    move-exception v4

    .line 68
    .local v4, "e":Ljava/lang/NoSuchMethodException;
    const/16 v9, 0x3b7

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, v7, Lc8/Bjb;->objName:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, v7, Lc8/Bjb;->methodName:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lc8/Ngb;->createMessage(I[Ljava/lang/Object;)Lc8/Mgb;

    move-result-object v5

    .line 69
    .restart local v5    # "errorMessage":Lc8/Mgb;
    sget-object v9, Lc8/Ajb;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lc8/Jhb;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget v9, v5, Lc8/Mgb;->code:I

    iget-object v10, v5, Lc8/Mgb;->message:Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Lc8/ljb;->onFailure(ILjava/lang/String;)V

    .line 71
    const-string/jumbo v9, ""

    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    .line 72
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 78
    .end local v4    # "e":Ljava/lang/NoSuchMethodException;
    .end local v5    # "errorMessage":Lc8/Mgb;
    .restart local v2    # "bridgeMethod":Ljava/lang/reflect/Method;
    .restart local v6    # "isBridgeMethod":Z
    :cond_5
    :try_start_2
    iget-object v9, v7, Lc8/Bjb;->param:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 79
    :catch_1
    move-exception v4

    .line 80
    .local v4, "e":Ljava/lang/Exception;
    const/16 v9, 0x271a

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lc8/Ngb;->createMessage(I[Ljava/lang/Object;)Lc8/Mgb;

    move-result-object v5

    .line 82
    .restart local v5    # "errorMessage":Lc8/Mgb;
    sget-object v9, Lc8/Ajb;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lc8/Jhb;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget v9, v5, Lc8/Mgb;->code:I

    iget-object v10, v5, Lc8/Mgb;->message:Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Lc8/ljb;->onFailure(ILjava/lang/String;)V

    goto/16 :goto_2

    .line 87
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "errorMessage":Lc8/Mgb;
    :cond_6
    const/16 v9, 0x3b8

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, v7, Lc8/Bjb;->objName:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, v7, Lc8/Bjb;->methodName:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lc8/Ngb;->createMessage(I[Ljava/lang/Object;)Lc8/Mgb;

    move-result-object v5

    .line 88
    .restart local v5    # "errorMessage":Lc8/Mgb;
    sget-object v9, Lc8/Ajb;->TAG:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lc8/Jhb;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget v9, v5, Lc8/Mgb;->code:I

    iget-object v10, v5, Lc8/Mgb;->message:Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Lc8/ljb;->onFailure(ILjava/lang/String;)V

    goto/16 :goto_2
.end method
