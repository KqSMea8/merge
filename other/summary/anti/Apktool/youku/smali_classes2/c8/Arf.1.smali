.class public Lc8/Arf;
.super Ljava/lang/Object;
.source "MtopBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/zrf;
    }
.end annotation


# static fields
.field private static final NOTIFY_RESULT:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "mtopsdk.MtopBridge"

.field private static scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private wvPluginRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lc8/Crf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lc8/Arf;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public constructor <init>(Lc8/Crf;)V
    .locals 2
    .param p1, "mtopWVPlugin"    # Lc8/Crf;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Arf;->wvPluginRef:Ljava/lang/ref/WeakReference;

    .line 38
    new-instance v0, Lc8/xrf;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lc8/xrf;-><init>(Lc8/Arf;Landroid/os/Looper;)V

    iput-object v0, p0, Lc8/Arf;->mHandler:Landroid/os/Handler;

    .line 61
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc8/Arf;->wvPluginRef:Ljava/lang/ref/WeakReference;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lc8/Arf;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lc8/Arf;

    .prologue
    .line 31
    iget-object v0, p0, Lc8/Arf;->wvPluginRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$100(Lc8/Arf;Lc8/wrf;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lc8/Arf;
    .param p1, "x1"    # Lc8/wrf;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lc8/Arf;->parseJSParams(Lc8/wrf;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lc8/Arf;Lc8/Brf;)V
    .locals 0
    .param p0, "x0"    # Lc8/Arf;
    .param p1, "x1"    # Lc8/Brf;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lc8/Arf;->dispatchToMainThread(Lc8/Brf;)V

    return-void
.end method

.method static synthetic access$300(Lc8/Arf;Landroid/taobao/windvane/jsbridge/WVCallBackContext;Lmtopsdk/mtop/domain/MtopResponse;)Lc8/Brf;
    .locals 1
    .param p0, "x0"    # Lc8/Arf;
    .param p1, "x1"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .param p2, "x2"    # Lmtopsdk/mtop/domain/MtopResponse;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lc8/Arf;->parseResult(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Lmtopsdk/mtop/domain/MtopResponse;)Lc8/Brf;

    move-result-object v0

    return-object v0
.end method

.method private dispatchToMainThread(Lc8/Brf;)V
    .locals 2
    .param p1, "result"    # Lc8/Brf;

    .prologue
    .line 69
    if-nez p1, :cond_0

    .line 73
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lc8/Arf;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private parseJSParams(Lc8/wrf;)Ljava/util/Map;
    .locals 13
    .param p1, "frontEndParams"    # Lc8/wrf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/wrf;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 148
    if-eqz p1, :cond_0

    iget-object v10, p1, Lc8/wrf;->jsParam:Ljava/lang/String;

    invoke-static {v10}, Lc8/yMp;->isBlank(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 149
    :cond_0
    const/4 v4, 0x0

    .line 219
    :goto_0
    return-object v4

    .line 151
    :cond_1
    const/4 v4, 0x0

    .line 153
    .local v4, "mtopJsParamsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v10, p1, Lc8/wrf;->jsParam:Ljava/lang/String;

    invoke-direct {v2, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 154
    .local v2, "jsonObject":Lorg/json/JSONObject;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .end local v4    # "mtopJsParamsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v5, "mtopJsParamsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_1
    const-string/jumbo v10, "api"

    const-string/jumbo v11, "api"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string/jumbo v10, "v"

    const-string/jumbo v11, "v"

    const-string/jumbo v12, "*"

    invoke-virtual {v2, v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string/jumbo v10, "data"

    const-string/jumbo v11, "param"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const-string/jumbo v10, "needLogin"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 161
    const-string/jumbo v10, "needLogin"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 165
    .local v6, "needLogin":Z
    :goto_1
    const-string/jumbo v10, "sessionOption"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 166
    .local v8, "sessionOption":Ljava/lang/String;
    const-string/jumbo v10, "needLogin"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string/jumbo v10, "sessionOption"

    invoke-interface {v5, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string/jumbo v3, "GET"

    .line 171
    .local v3, "method":Ljava/lang/String;
    const-string/jumbo v10, "method"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 172
    const-string/jumbo v10, "method"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 176
    :cond_2
    :goto_2
    const-string/jumbo v10, "method"

    invoke-interface {v5, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string/jumbo v10, "dataType"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 181
    const-string/jumbo v10, "dataType"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "dataType":Ljava/lang/String;
    :goto_3
    const-string/jumbo v10, "dataType"

    invoke-interface {v5, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string/jumbo v10, "secType"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 190
    const-string/jumbo v10, "secType"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    .line 194
    .local v7, "secType":I
    :goto_4
    const-string/jumbo v10, "secType"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const-string/jumbo v10, "timeout"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 199
    const-string/jumbo v10, "timeout"

    const/16 v11, 0x4e20

    invoke-virtual {v2, v10, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    .line 203
    .local v9, "timeout":I
    :goto_5
    if-gez v9, :cond_a

    .line 204
    const/16 v9, 0x4e20

    .line 208
    :cond_3
    :goto_6
    const-string/jumbo v10, "timeout"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const-string/jumbo v10, "ext_headers"

    const-string/jumbo v11, "ext_headers"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const-string/jumbo v10, "ttid"

    const-string/jumbo v11, "ttid"

    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const-string/jumbo v10, "user-agent"

    iget-object v11, p1, Lc8/wrf;->userAgent:Ljava/lang/String;

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const-string/jumbo v10, "pageUrl"

    iget-object v11, p1, Lc8/wrf;->pageUrl:Ljava/lang/String;

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v5

    .line 217
    .end local v5    # "mtopJsParamsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v4    # "mtopJsParamsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto/16 :goto_0

    .line 163
    .end local v0    # "dataType":Ljava/lang/String;
    .end local v3    # "method":Ljava/lang/String;
    .end local v4    # "mtopJsParamsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6    # "needLogin":Z
    .end local v7    # "secType":I
    .end local v8    # "sessionOption":Ljava/lang/String;
    .end local v9    # "timeout":I
    .restart local v5    # "mtopJsParamsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    const-string/jumbo v10, "ecode"

    const/4 v11, 0x0

    invoke-virtual {v2, v10, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_5

    const/4 v6, 0x1

    .restart local v6    # "needLogin":Z
    :cond_5
    goto/16 :goto_1

    .line 173
    .restart local v3    # "method":Ljava/lang/String;
    .restart local v8    # "sessionOption":Ljava/lang/String;
    :cond_6
    const-string/jumbo v10, "post"

    const/4 v11, 0x0

    invoke-virtual {v2, v10, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_2

    .line 174
    const-string/jumbo v3, "POST"

    goto/16 :goto_2

    .line 183
    :cond_7
    const-string/jumbo v10, "type"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "dataType":Ljava/lang/String;
    goto/16 :goto_3

    .line 192
    :cond_8
    const-string/jumbo v10, "isSec"

    const/4 v11, 0x0

    invoke-virtual {v2, v10, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .restart local v7    # "secType":I
    goto/16 :goto_4

    .line 201
    :cond_9
    const-string/jumbo v10, "timer"

    const/16 v11, 0x4e20

    invoke-virtual {v2, v10, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v9

    .restart local v9    # "timeout":I
    goto :goto_5

    .line 205
    :cond_a
    const v10, 0xea60

    if-le v9, v10, :cond_3

    .line 206
    const v9, 0xea60

    goto :goto_6

    .line 215
    .end local v0    # "dataType":Ljava/lang/String;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "method":Ljava/lang/String;
    .end local v5    # "mtopJsParamsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6    # "needLogin":Z
    .end local v7    # "secType":I
    .end local v8    # "sessionOption":Ljava/lang/String;
    .end local v9    # "timeout":I
    .restart local v4    # "mtopJsParamsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_0
    move-exception v1

    .line 216
    .local v1, "e":Ljava/lang/Exception;
    :goto_7
    const-string/jumbo v10, "mtopsdk.MtopBridge"

    const-string/jumbo v11, "parseJSParams error."

    invoke-static {v10, v11, v1}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 215
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "mtopJsParamsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v5    # "mtopJsParamsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_1
    move-exception v1

    move-object v4, v5

    .end local v5    # "mtopJsParamsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v4    # "mtopJsParamsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_7
.end method

.method private parseResult(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Lmtopsdk/mtop/domain/MtopResponse;)Lc8/Brf;
    .locals 14
    .param p1, "context"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .param p2, "response"    # Lmtopsdk/mtop/domain/MtopResponse;

    .prologue
    .line 226
    if-nez p1, :cond_1

    .line 227
    const-string/jumbo v9, "mtopsdk.MtopBridge"

    const-string/jumbo v10, "[parseResult]WVCallBackContext is null, webview may be destroyed"

    invoke-static {v9, v10}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const/4 v4, 0x0

    .line 285
    :cond_0
    :goto_0
    return-object v4

    .line 231
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 232
    .local v6, "start":J
    new-instance v4, Lc8/Brf;

    invoke-direct {v4, p1}, Lc8/Brf;-><init>(Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    .line 234
    .local v4, "result":Lc8/Brf;
    if-nez p2, :cond_2

    .line 235
    const-string/jumbo v9, "code"

    const-string/jumbo v10, "-1"

    invoke-virtual {v4, v9, v10}, Lc8/Brf;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string/jumbo v9, "ret"

    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    const-string/jumbo v11, "MP_TIME_OUT"

    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lc8/Brf;->addData(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 237
    const-string/jumbo v9, "mtopsdk.MtopBridge"

    const-string/jumbo v10, "[parseResult]time out"

    invoke-static {v9, v10}, Lc8/BMp;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 241
    :cond_2
    const-string/jumbo v9, "code"

    invoke-virtual/range {p2 .. p2}, Lmtopsdk/mtop/domain/MtopResponse;->getResponseCode()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lc8/Brf;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-virtual/range {p2 .. p2}, Lmtopsdk/mtop/domain/MtopResponse;->isSessionInvalid()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 243
    const-string/jumbo v9, "ret"

    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    const-string/jumbo v11, "ERR_SID_INVALID"

    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lc8/Brf;->addData(Ljava/lang/String;Lorg/json/JSONArray;)V

    goto :goto_0

    .line 247
    :cond_3
    const-string/jumbo v9, "ret"

    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    const-string/jumbo v11, "HY_FAILED"

    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lc8/Brf;->addData(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 249
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lmtopsdk/mtop/domain/MtopResponse;->getBytedata()[B

    move-result-object v9

    if-eqz v9, :cond_4

    .line 250
    new-instance v5, Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Lmtopsdk/mtop/domain/MtopResponse;->getBytedata()[B

    move-result-object v9

    const-string/jumbo v10, "utf-8"

    invoke-direct {v5, v9, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 252
    .local v5, "s":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 253
    .local v1, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v4, v1}, Lc8/Brf;->setData(Lorg/json/JSONObject;)V

    .line 254
    const-string/jumbo v9, "code"

    invoke-virtual/range {p2 .. p2}, Lmtopsdk/mtop/domain/MtopResponse;->getResponseCode()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 255
    const-string/jumbo v10, "isFromCache"

    invoke-virtual/range {p2 .. p2}, Lmtopsdk/mtop/domain/MtopResponse;->getSource()Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;

    move-result-object v9

    sget-object v11, Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;->NETWORK_REQUEST:Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;

    if-eq v9, v11, :cond_6

    const-string/jumbo v9, "1"

    :goto_1
    invoke-virtual {v1, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 258
    :try_start_1
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 259
    .local v8, "statObject":Lorg/json/JSONObject;
    const-string/jumbo v9, "stat"

    invoke-virtual {v1, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 260
    invoke-virtual/range {p2 .. p2}, Lmtopsdk/mtop/domain/MtopResponse;->getMtopStat()Lc8/pPp;

    move-result-object v2

    .line 261
    .local v2, "mtopStats":Lc8/pPp;
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lc8/pPp;->getNetworkStats()Lmtopsdk/network/domain/NetworkStats;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 262
    invoke-virtual {v2}, Lc8/pPp;->getNetworkStats()Lmtopsdk/network/domain/NetworkStats;

    move-result-object v3

    .line 263
    .local v3, "networkStats":Lmtopsdk/network/domain/NetworkStats;
    const-string/jumbo v9, "oneWayTime"

    iget-wide v10, v3, Lmtopsdk/network/domain/NetworkStats;->oneWayTime_ANet:J

    invoke-virtual {v8, v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 264
    const-string/jumbo v9, "recDataSize"

    iget-wide v10, v3, Lmtopsdk/network/domain/NetworkStats;->recvSize:J

    invoke-virtual {v8, v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 274
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "mtopStats":Lc8/pPp;
    .end local v3    # "networkStats":Lmtopsdk/network/domain/NetworkStats;
    .end local v5    # "s":Ljava/lang/String;
    .end local v8    # "statObject":Lorg/json/JSONObject;
    :cond_4
    :goto_2
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Lmtopsdk/mtop/domain/MtopResponse;->isApiSuccess()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 275
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Lc8/Brf;->setSuccess(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 282
    :cond_5
    :goto_3
    sget-object v9, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v9}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 283
    const-string/jumbo v9, "mtopsdk.MtopBridge"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "parseResult cost time(ms):"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v6

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lc8/BMp;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 255
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    .restart local v5    # "s":Ljava/lang/String;
    :cond_6
    :try_start_3
    const-string/jumbo v9, "0"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 266
    .restart local v2    # "mtopStats":Lc8/pPp;
    .restart local v8    # "statObject":Lorg/json/JSONObject;
    :cond_7
    :try_start_4
    const-string/jumbo v9, "oneWayTime"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 267
    const-string/jumbo v9, "recDataSize"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 270
    .end local v2    # "mtopStats":Lc8/pPp;
    .end local v8    # "statObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 271
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    const-string/jumbo v9, "mtopsdk.MtopBridge"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[parseResult] parse network stats error"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 278
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "s":Ljava/lang/String;
    :catch_1
    move-exception v9

    invoke-static {}, Lc8/BMp;->isPrintLog()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 279
    const-string/jumbo v9, "mtopsdk.MtopBridge"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[parseResult] mtop response parse fail, content: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Lmtopsdk/mtop/domain/MtopResponse;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3
.end method


# virtual methods
.method sendRequest(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 5
    .param p1, "wvCallBackContext"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .param p2, "params"    # Ljava/lang/String;

    .prologue
    .line 76
    sget-object v2, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v2}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    const-string/jumbo v2, "mtopsdk.MtopBridge"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MtopBridge JSParams: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/BMp;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_0
    new-instance v0, Lc8/wrf;

    invoke-direct {v0, p2}, Lc8/wrf;-><init>(Ljava/lang/String;)V

    .line 82
    .local v0, "frontEndParams":Lc8/wrf;
    iget-object v2, p0, Lc8/Arf;->wvPluginRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Crf;

    .line 83
    .local v1, "plugin":Lc8/Crf;
    if-eqz v1, :cond_1

    .line 84
    invoke-virtual {v1}, Lc8/Crf;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lc8/wrf;->userAgent:Ljava/lang/String;

    .line 85
    invoke-virtual {v1}, Lc8/Crf;->getCurrentUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lc8/wrf;->pageUrl:Ljava/lang/String;

    .line 88
    :cond_1
    sget-object v2, Lc8/Arf;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lc8/yrf;

    invoke-direct {v3, p0, v0, p1}, Lc8/yrf;-><init>(Lc8/Arf;Lc8/wrf;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 109
    return-void
.end method

.method public setWvPluginRef(Lc8/Crf;)V
    .locals 1
    .param p1, "mtopWVPlugin"    # Lc8/Crf;

    .prologue
    .line 65
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc8/Arf;->wvPluginRef:Ljava/lang/ref/WeakReference;

    .line 66
    return-void
.end method
