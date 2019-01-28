.class public Lc8/zSb;
.super Ljava/lang/Object;
.source "WeexErrorCallBack.java"

# interfaces
.implements Lc8/FVf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ASb;->registAndCallBack(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private final ERROR_CODE:Ljava/lang/String;

.field private final FRAMEWORK_VERSION:Ljava/lang/String;

.field private final INSTANCE_ID:Ljava/lang/String;

.field final synthetic this$0:Lc8/ASb;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lc8/ASb;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 31
    iput-object p1, p0, Lc8/zSb;->this$0:Lc8/ASb;

    iput-object p2, p0, Lc8/zSb;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string/jumbo v0, "instanceId"

    iput-object v0, p0, Lc8/zSb;->INSTANCE_ID:Ljava/lang/String;

    .line 34
    const-string/jumbo v0, "frameWorkVersion"

    iput-object v0, p0, Lc8/zSb;->FRAMEWORK_VERSION:Ljava/lang/String;

    .line 35
    const-string/jumbo v0, "errorCode"

    iput-object v0, p0, Lc8/zSb;->ERROR_CODE:Ljava/lang/String;

    return-void
.end method

.method private exceptionUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "bundleUrl"    # Ljava/lang/String;

    .prologue
    .line 136
    const-string/jumbo v0, "https:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 141
    .end local p1    # "bundleUrl":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 138
    .restart local p1    # "bundleUrl":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "http:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public onJSException(Lc8/KXf;)V
    .locals 19
    .param p1, "exception"    # Lc8/KXf;

    .prologue
    .line 39
    if-eqz p1, :cond_7

    .line 43
    :try_start_0
    new-instance v8, Lc8/dSb;

    invoke-direct {v8}, Lc8/dSb;-><init>()V

    .line 44
    .local v8, "exceptionModule":Lc8/dSb;
    sget-object v17, Lcom/alibaba/motu/crashreportadapter/module/BusinessType;->WEEX_ERROR:Lcom/alibaba/motu/crashreportadapter/module/BusinessType;

    move-object/from16 v0, v17

    iput-object v0, v8, Lc8/dSb;->businessType:Lcom/alibaba/motu/crashreportadapter/module/BusinessType;

    .line 45
    sget-object v17, Lcom/alibaba/motu/crashreportadapter/module/AggregationType;->CONTENT:Lcom/alibaba/motu/crashreportadapter/module/AggregationType;

    move-object/from16 v0, v17

    iput-object v0, v8, Lc8/dSb;->aggregationType:Lcom/alibaba/motu/crashreportadapter/module/AggregationType;

    .line 48
    invoke-virtual/range {p1 .. p1}, Lc8/KXf;->getBundleUrl()Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, "bundleUrl":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 50
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lc8/zSb;->exceptionUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, "code":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x400

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_0

    .line 52
    const/16 v17, 0x0

    const/16 v18, 0x400

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 54
    :cond_0
    iput-object v3, v8, Lc8/dSb;->exceptionCode:Ljava/lang/String;

    .line 55
    iput-object v2, v8, Lc8/dSb;->exceptionDetail:Ljava/lang/String;

    .line 59
    .end local v3    # "code":Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lc8/KXf;->getWeexVersion()Ljava/lang/String;

    move-result-object v16

    .line 60
    .local v16, "weexVersion":Ljava/lang/String;
    if-eqz v16, :cond_2

    .line 61
    move-object/from16 v0, v16

    iput-object v0, v8, Lc8/dSb;->exceptionVersion:Ljava/lang/String;

    .line 63
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lc8/KXf;->getException()Ljava/lang/String;

    move-result-object v7

    .line 64
    .local v7, "exceptionContent":Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 65
    iput-object v7, v8, Lc8/dSb;->exceptionArg1:Ljava/lang/String;

    .line 67
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lc8/KXf;->getFunction()Ljava/lang/String;

    move-result-object v11

    .line 68
    .local v11, "function":Ljava/lang/String;
    if-eqz v11, :cond_4

    .line 69
    iput-object v11, v8, Lc8/dSb;->exceptionArg2:Ljava/lang/String;

    .line 73
    :cond_4
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 74
    .local v6, "exceptionArgs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual/range {p1 .. p1}, Lc8/KXf;->getErrCode()Ljava/lang/String;

    move-result-object v5

    .line 75
    .local v5, "errorCode":Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 76
    const-string/jumbo v17, "errorCode"

    move-object/from16 v0, v17

    invoke-interface {v6, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lc8/KXf;->getInstanceId()Ljava/lang/String;

    move-result-object v13

    .line 79
    .local v13, "instanceId":Ljava/lang/String;
    if-eqz v13, :cond_8

    .line 80
    const-string/jumbo v17, "instanceId"

    move-object/from16 v0, v17

    invoke-interface {v6, v0, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lc8/KXf;->getJsFrameworkVersion()Ljava/lang/String;

    move-result-object v10

    .line 85
    .local v10, "frameWorkVersion":Ljava/lang/String;
    if-eqz v10, :cond_9

    .line 86
    const-string/jumbo v17, "frameWorkVersion"

    move-object/from16 v0, v17

    invoke-interface {v6, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lc8/KXf;->getExtParams()Ljava/util/Map;

    move-result-object v9

    .line 91
    .local v9, "extParames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v9, :cond_6

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v17

    if-lez v17, :cond_6

    .line 92
    invoke-interface {v6, v9}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 94
    :cond_6
    iput-object v6, v8, Lc8/dSb;->exceptionArgs:Ljava/util/Map;

    .line 97
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v8, Lc8/dSb;->thread:Ljava/lang/Thread;

    .line 100
    new-instance v15, Lc8/kSb;

    invoke-direct {v15}, Lc8/kSb;-><init>()V

    .line 101
    .local v15, "reportAdapteHandler":Lc8/kSb;
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/zSb;->val$context:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0, v8}, Lc8/kSb;->adapter(Landroid/content/Context;Lc8/pSb;)V

    .line 105
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Lc8/KXf;->getInstanceId()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lc8/pVf;->getSDKInstance(Ljava/lang/String;)Lc8/nVf;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 106
    .local v12, "instance":Lc8/nVf;
    if-eqz v12, :cond_7

    .line 109
    :try_start_1
    invoke-static/range {p1 .. p1}, Lc8/AIb;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lc8/AIb;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v14

    .line 121
    .local v14, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_2
    :try_start_2
    const-string/jumbo v17, "exception"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0, v14}, Lc8/nVf;->fireGlobalEventCallback(Ljava/lang/String;Ljava/util/Map;)V

    .line 128
    .end local v2    # "bundleUrl":Ljava/lang/String;
    .end local v5    # "errorCode":Ljava/lang/String;
    .end local v6    # "exceptionArgs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v7    # "exceptionContent":Ljava/lang/String;
    .end local v8    # "exceptionModule":Lc8/dSb;
    .end local v9    # "extParames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "frameWorkVersion":Ljava/lang/String;
    .end local v11    # "function":Ljava/lang/String;
    .end local v12    # "instance":Lc8/nVf;
    .end local v13    # "instanceId":Ljava/lang/String;
    .end local v14    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v15    # "reportAdapteHandler":Lc8/kSb;
    .end local v16    # "weexVersion":Ljava/lang/String;
    :cond_7
    :goto_3
    return-void

    .line 82
    .restart local v2    # "bundleUrl":Ljava/lang/String;
    .restart local v5    # "errorCode":Ljava/lang/String;
    .restart local v6    # "exceptionArgs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v7    # "exceptionContent":Ljava/lang/String;
    .restart local v8    # "exceptionModule":Lc8/dSb;
    .restart local v11    # "function":Ljava/lang/String;
    .restart local v13    # "instanceId":Ljava/lang/String;
    .restart local v16    # "weexVersion":Ljava/lang/String;
    :cond_8
    const-string/jumbo v17, "instanceId"

    const-string/jumbo v18, "no instanceId"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 124
    .end local v2    # "bundleUrl":Ljava/lang/String;
    .end local v5    # "errorCode":Ljava/lang/String;
    .end local v6    # "exceptionArgs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v7    # "exceptionContent":Ljava/lang/String;
    .end local v8    # "exceptionModule":Lc8/dSb;
    .end local v11    # "function":Ljava/lang/String;
    .end local v13    # "instanceId":Ljava/lang/String;
    .end local v16    # "weexVersion":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 125
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v17, "weex js err"

    const-string/jumbo v18, "build weex callback data err"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 88
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v2    # "bundleUrl":Ljava/lang/String;
    .restart local v5    # "errorCode":Ljava/lang/String;
    .restart local v6    # "exceptionArgs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v7    # "exceptionContent":Ljava/lang/String;
    .restart local v8    # "exceptionModule":Lc8/dSb;
    .restart local v10    # "frameWorkVersion":Ljava/lang/String;
    .restart local v11    # "function":Ljava/lang/String;
    .restart local v13    # "instanceId":Ljava/lang/String;
    .restart local v16    # "weexVersion":Ljava/lang/String;
    :cond_9
    :try_start_3
    const-string/jumbo v17, "frameWorkVersion"

    const-string/jumbo v18, "no framework version"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 111
    .restart local v9    # "extParames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v12    # "instance":Lc8/nVf;
    .restart local v15    # "reportAdapteHandler":Lc8/kSb;
    :catch_1
    move-exception v17

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 112
    .restart local v14    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v17, "bundleUrl"

    invoke-virtual/range {p1 .. p1}, Lc8/KXf;->getBundleUrl()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string/jumbo v17, "errorCode"

    invoke-virtual/range {p1 .. p1}, Lc8/KXf;->getErrCode()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string/jumbo v17, "exception"

    invoke-virtual/range {p1 .. p1}, Lc8/KXf;->getException()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string/jumbo v17, "extParams"

    invoke-virtual/range {p1 .. p1}, Lc8/KXf;->getExtParams()Ljava/util/Map;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string/jumbo v17, "function"

    invoke-virtual/range {p1 .. p1}, Lc8/KXf;->getFunction()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string/jumbo v17, "instanceId"

    invoke-virtual/range {p1 .. p1}, Lc8/KXf;->getInstanceId()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string/jumbo v17, "jsFrameworkVersion"

    invoke-virtual/range {p1 .. p1}, Lc8/KXf;->getJsFrameworkVersion()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string/jumbo v17, "weexVersion"

    invoke-virtual/range {p1 .. p1}, Lc8/KXf;->getWeexVersion()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2
.end method
