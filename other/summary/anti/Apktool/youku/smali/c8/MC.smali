.class public Lc8/MC;
.super Lc8/RD;
.source "WVServer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/KC;,
        Lc8/LC;
    }
.end annotation


# static fields
.field public static final API_SERVER:Ljava/lang/String; = "WVServer"

.field private static final NOTIFY_RESULT:I = 0x1f4

.field private static final NOT_REG_LOGIN:I = 0x1fe

.field static NeedApiLock:Z = false

.field private static final TAG:Ljava/lang/String; = "WVServer"

.field static lastlocktime:J

.field static notiTime:J


# instance fields
.field private isUserLogin:Z

.field private jsContext:Ljava/lang/Object;

.field private final lockLock:Ljava/lang/Object;

.field private lockQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lc8/tH;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mParams:Ljava/lang/String;

.field private needLock:Z

.field private singleExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 69
    sput-wide v2, Lc8/MC;->lastlocktime:J

    .line 70
    const/4 v0, 0x0

    sput-boolean v0, Lc8/MC;->NeedApiLock:Z

    .line 72
    sput-wide v2, Lc8/MC;->notiTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Lc8/RD;-><init>()V

    .line 60
    iput-object v1, p0, Lc8/MC;->mHandler:Landroid/os/Handler;

    .line 61
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lc8/MC;->singleExecutor:Ljava/util/concurrent/ExecutorService;

    .line 62
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lc8/MC;->lockQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lc8/MC;->lockLock:Ljava/lang/Object;

    .line 64
    iput-object v1, p0, Lc8/MC;->jsContext:Ljava/lang/Object;

    .line 65
    iput-object v1, p0, Lc8/MC;->mParams:Ljava/lang/String;

    .line 66
    iput-boolean v2, p0, Lc8/MC;->needLock:Z

    .line 67
    iput-boolean v2, p0, Lc8/MC;->isUserLogin:Z

    .line 75
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lc8/MC;->mHandler:Landroid/os/Handler;

    .line 76
    return-void
.end method

.method static synthetic access$000(Lc8/MC;Ljava/lang/String;)Lc8/qC;
    .locals 1
    .param p0, "x0"    # Lc8/MC;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lc8/MC;->parseParams(Ljava/lang/String;)Lc8/qC;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lc8/MC;Lc8/KC;)V
    .locals 0
    .param p0, "x0"    # Lc8/MC;
    .param p1, "x1"    # Lc8/KC;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lc8/MC;->callResult(Lc8/KC;)V

    return-void
.end method

.method static synthetic access$1000(Lc8/MC;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lc8/MC;

    .prologue
    .line 54
    iget-object v0, p0, Lc8/MC;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lc8/MC;)Z
    .locals 1
    .param p0, "x0"    # Lc8/MC;

    .prologue
    .line 54
    iget-boolean v0, p0, Lc8/MC;->needLock:Z

    return v0
.end method

.method static synthetic access$300(Lc8/MC;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lc8/MC;

    .prologue
    .line 54
    iget-object v0, p0, Lc8/MC;->lockLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lc8/MC;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1
    .param p0, "x0"    # Lc8/MC;

    .prologue
    .line 54
    iget-object v0, p0, Lc8/MC;->lockQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method static synthetic access$502(Lc8/MC;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lc8/MC;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lc8/MC;->mParams:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lc8/MC;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lc8/MC;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 54
    iput-object p1, p0, Lc8/MC;->jsContext:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$700(Lc8/MC;Lc8/qC;)Lc8/YB;
    .locals 1
    .param p0, "x0"    # Lc8/MC;
    .param p1, "x1"    # Lc8/qC;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lc8/MC;->wrapRequest(Lc8/qC;)Lc8/YB;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lc8/MC;Ljava/lang/Object;Lc8/ZB;)V
    .locals 0
    .param p0, "x0"    # Lc8/MC;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Lc8/ZB;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lc8/MC;->parseResult(Ljava/lang/Object;Lc8/ZB;)V

    return-void
.end method

.method static synthetic access$900(Lc8/MC;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lc8/MC;

    .prologue
    .line 54
    iget-object v0, p0, Lc8/MC;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private callResult(Lc8/KC;)V
    .locals 2
    .param p1, "result"    # Lc8/KC;

    .prologue
    .line 382
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 383
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x1f4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 384
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 385
    iget-object v1, p0, Lc8/MC;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 386
    return-void
.end method

.method private notifyNext()V
    .locals 3

    .prologue
    .line 457
    iget-boolean v1, p0, Lc8/MC;->needLock:Z

    if-eqz v1, :cond_0

    .line 459
    iget-object v2, p0, Lc8/MC;->lockLock:Ljava/lang/Object;

    monitor-enter v2

    .line 460
    :try_start_0
    iget-object v1, p0, Lc8/MC;->lockQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/tH;

    .line 461
    .local v0, "lock":Lc8/tH;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    if-eqz v0, :cond_0

    .line 463
    invoke-virtual {v0}, Lc8/tH;->lnotify()V

    .line 465
    .end local v0    # "lock":Lc8/tH;
    :cond_0
    return-void

    .line 461
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private parseParams(Ljava/lang/String;)Lc8/qC;
    .locals 10
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 188
    :try_start_0
    new-instance v4, Lc8/qC;

    invoke-direct {v4}, Lc8/qC;-><init>()V

    .line 189
    .local v4, "mParams":Lc8/qC;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 190
    .local v2, "jso":Lorg/json/JSONObject;
    const-string/jumbo v8, "api"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lc8/qC;->api:Ljava/lang/String;

    .line 191
    const-string/jumbo v8, "v"

    const-string/jumbo v9, "*"

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lc8/qC;->v:Ljava/lang/String;

    .line 192
    const-string/jumbo v8, "post"

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_1

    move v8, v6

    :goto_0
    iput-boolean v8, v4, Lc8/qC;->post:Z

    .line 193
    const-string/jumbo v8, "ecode"

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_2

    move v8, v6

    :goto_1
    iput-boolean v8, v4, Lc8/qC;->ecode:Z

    .line 194
    const-string/jumbo v8, "isSec"

    const/4 v9, 0x1

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_3

    :goto_2
    iput-boolean v6, v4, Lc8/qC;->isSec:Z

    .line 195
    const-string/jumbo v6, "param"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 196
    .local v0, "dataParam":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 198
    .local v1, "it":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 199
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 200
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 201
    .local v5, "value":Ljava/lang/String;
    invoke-virtual {v4, v3, v5}, Lc8/qC;->addData(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 206
    .end local v0    # "dataParam":Lorg/json/JSONObject;
    .end local v1    # "it":Ljava/util/Iterator;
    .end local v2    # "jso":Lorg/json/JSONObject;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "mParams":Lc8/qC;
    .end local v5    # "value":Ljava/lang/String;
    :catch_0
    move-exception v6

    const-string/jumbo v6, "WVServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "parseParams error, param="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const/4 v4, 0x0

    :cond_0
    return-object v4

    .restart local v2    # "jso":Lorg/json/JSONObject;
    .restart local v4    # "mParams":Lc8/qC;
    :cond_1
    move v8, v7

    .line 192
    goto :goto_0

    :cond_2
    move v8, v7

    .line 193
    goto :goto_1

    :cond_3
    move v6, v7

    .line 194
    goto :goto_2
.end method

.method private parseResult(Ljava/lang/Object;Lc8/ZB;)V
    .locals 17
    .param p1, "context"    # Ljava/lang/Object;
    .param p2, "response"    # Lc8/ZB;

    .prologue
    .line 277
    new-instance v11, Lc8/KC;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v11, v0, v1}, Lc8/KC;-><init>(Lc8/MC;Ljava/lang/Object;)V

    .line 278
    .local v11, "result":Lc8/KC;
    const-string/jumbo v14, "ret"

    new-instance v15, Lorg/json/JSONArray;

    invoke-direct {v15}, Lorg/json/JSONArray;-><init>()V

    const-string/jumbo v16, "HY_FAILED"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Lc8/KC;->addData(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 279
    const-string/jumbo v14, "code"

    invoke-virtual/range {p2 .. p2}, Lc8/ZB;->getHttpCode()I

    move-result v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Lc8/KC;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-virtual/range {p2 .. p2}, Lc8/ZB;->isSuccess()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-virtual/range {p2 .. p2}, Lc8/ZB;->getData()[B

    move-result-object v14

    if-nez v14, :cond_5

    .line 281
    :cond_0
    const-string/jumbo v14, "WVServer"

    const-string/jumbo v15, "parseResult: request illegal, response is null"

    invoke-static {v14, v15}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-virtual/range {p2 .. p2}, Lc8/ZB;->getHttpCode()I

    move-result v10

    .line 285
    .local v10, "responseCode":I
    const/16 v14, 0x1a4

    if-eq v10, v14, :cond_1

    const/16 v14, 0x1f3

    if-eq v10, v14, :cond_1

    const/16 v14, 0x257

    if-ne v10, v14, :cond_3

    .line 287
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sput-wide v14, Lc8/MC;->lastlocktime:J

    .line 288
    const/4 v14, 0x1

    sput-boolean v14, Lc8/MC;->NeedApiLock:Z

    .line 289
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/MC;->mHandler:Landroid/os/Handler;

    if-eqz v14, :cond_2

    .line 290
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/MC;->mHandler:Landroid/os/Handler;

    new-instance v15, Lc8/IC;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lc8/IC;-><init>(Lc8/MC;)V

    invoke-virtual {v14, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 322
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lc8/MC;->callResult(Lc8/KC;)V

    .line 379
    .end local v10    # "responseCode":I
    :goto_1
    return-void

    .line 298
    .restart local v10    # "responseCode":I
    :cond_3
    const/16 v14, 0x19a

    if-lt v10, v14, :cond_2

    const/16 v14, 0x1a3

    if-gt v10, v14, :cond_2

    .line 300
    invoke-virtual/range {p2 .. p2}, Lc8/ZB;->getHeaders()Ljava/util/Map;

    move-result-object v9

    .line 301
    .local v9, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v8, "http://h5.m.taobao.com/"

    .line 302
    .local v8, "locationurl":Ljava/lang/String;
    if-eqz v9, :cond_4

    const-string/jumbo v14, "location"

    invoke-interface {v9, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 303
    const-string/jumbo v14, "location"

    invoke-interface {v9, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "locationurl":Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 304
    .restart local v8    # "locationurl":Ljava/lang/String;
    :cond_4
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 305
    .local v5, "intent":Landroid/content/Intent;
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v5, v14}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 306
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/MC;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/MC;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 309
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/MC;->mHandler:Landroid/os/Handler;

    if-eqz v14, :cond_2

    .line 310
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/MC;->mHandler:Landroid/os/Handler;

    new-instance v15, Lc8/JC;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lc8/JC;-><init>(Lc8/MC;)V

    invoke-virtual {v14, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v14

    goto :goto_0

    .line 344
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v8    # "locationurl":Ljava/lang/String;
    .end local v9    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "responseCode":I
    :cond_5
    :try_start_1
    new-instance v2, Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Lc8/ZB;->getData()[B

    move-result-object v14

    const-string/jumbo v15, "utf-8"

    invoke-direct {v2, v14, v15}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 345
    .local v2, "dataStr":Ljava/lang/String;
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 346
    const-string/jumbo v14, "WVServer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "parseResult: content="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    .line 355
    :cond_6
    :try_start_2
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 356
    .local v7, "jso":Lorg/json/JSONObject;
    const-string/jumbo v14, "code"

    invoke-virtual/range {p2 .. p2}, Lc8/ZB;->getHttpCode()I

    move-result v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 357
    const-string/jumbo v14, "ret"

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 358
    .local v6, "jArray":Lorg/json/JSONArray;
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v13

    .line 359
    .local v13, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v13, :cond_7

    .line 360
    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 361
    .local v12, "retStr":Ljava/lang/String;
    const-string/jumbo v14, "SUCCESS"

    invoke-virtual {v12, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 362
    const/4 v14, 0x1

    invoke-virtual {v11, v14}, Lc8/KC;->setSuccess(Z)V

    .line 373
    .end local v12    # "retStr":Ljava/lang/String;
    :cond_7
    invoke-virtual {v11, v7}, Lc8/KC;->setData(Lorg/json/JSONObject;)V

    .line 374
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lc8/MC;->callResult(Lc8/KC;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 376
    .end local v4    # "i":I
    .end local v6    # "jArray":Lorg/json/JSONArray;
    .end local v7    # "jso":Lorg/json/JSONObject;
    .end local v13    # "size":I
    :catch_1
    move-exception v14

    const-string/jumbo v14, "WVServer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "parseResult mtop response parse fail, content: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lc8/MC;->callResult(Lc8/KC;)V

    goto/16 :goto_1

    .line 348
    .end local v2    # "dataStr":Ljava/lang/String;
    :catch_2
    move-exception v3

    .line 349
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 350
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lc8/MC;->callResult(Lc8/KC;)V

    goto/16 :goto_1

    .line 364
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v2    # "dataStr":Ljava/lang/String;
    .restart local v4    # "i":I
    .restart local v6    # "jArray":Lorg/json/JSONArray;
    .restart local v7    # "jso":Lorg/json/JSONObject;
    .restart local v12    # "retStr":Ljava/lang/String;
    .restart local v13    # "size":I
    :cond_8
    :try_start_3
    const-string/jumbo v14, "ERR_SID_INVALID"

    invoke-virtual {v12, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 365
    sget-object v14, Lc8/oB;->wvAdapter:Lc8/mC;

    if-eqz v14, :cond_7

    .line 366
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lc8/MC;->isUserLogin:Z

    .line 367
    sget-object v14, Lc8/oB;->wvAdapter:Lc8/mC;

    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/MC;->mHandler:Landroid/os/Handler;

    invoke-interface {v14, v15}, Lc8/mC;->login(Landroid/os/Handler;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 359
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method private wrapRequest(Lc8/qC;)Lc8/YB;
    .locals 10
    .param p1, "sParams"    # Lc8/qC;

    .prologue
    const/4 v9, 0x0

    .line 216
    new-instance v4, Lc8/fC;

    invoke-direct {v4}, Lc8/fC;-><init>()V

    .line 217
    .local v4, "request":Lc8/fC;
    const-string/jumbo v6, "api"

    iget-object v7, p1, Lc8/qC;->api:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Lc8/fC;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string/jumbo v6, "v"

    iget-object v7, p1, Lc8/qC;->v:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Lc8/fC;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    sget-object v6, Lc8/oB;->wvAdapter:Lc8/mC;

    if-nez v6, :cond_1

    .line 220
    const-string/jumbo v6, "WVServer"

    const-string/jumbo v7, "wrapRequest wvAdapter is not exist."

    invoke-static {v6, v7}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-boolean v6, p1, Lc8/qC;->ecode:Z

    if-eqz v6, :cond_2

    .line 222
    iget-object v6, p0, Lc8/MC;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x1fe

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 223
    const/4 v3, 0x0

    .line 270
    :cond_0
    :goto_0
    return-object v3

    .line 226
    :cond_1
    iput-boolean v9, p0, Lc8/MC;->isUserLogin:Z

    .line 227
    sget-object v6, Lc8/oB;->wvAdapter:Lc8/mC;

    iget-object v7, p0, Lc8/MC;->mHandler:Landroid/os/Handler;

    invoke-interface {v6, v7}, Lc8/mC;->getLoginInfo(Landroid/os/Handler;)Ljava/util/Map;

    move-result-object v1

    .line 228
    .local v1, "logininfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-boolean v6, p1, Lc8/qC;->ecode:Z

    if-eqz v6, :cond_4

    .line 229
    if-nez v1, :cond_3

    .line 230
    const-string/jumbo v6, "WVServer"

    const-string/jumbo v7, "wrapRequest loginInfo is null."

    invoke-static {v6, v7}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    .end local v1    # "logininfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lc8/qC;->getData()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v4, v6}, Lc8/fC;->addDataParams(Ljava/util/Map;)V

    .line 246
    invoke-static {}, Lc8/xB;->getMtopUrl()Ljava/lang/String;

    move-result-object v5

    .line 247
    .local v5, "url":Ljava/lang/String;
    const/4 v2, 0x0

    .line 248
    .local v2, "postData":Ljava/lang/String;
    iget-boolean v6, p1, Lc8/qC;->isSec:Z

    if-eqz v6, :cond_5

    .line 249
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lc8/fC;->setSec(Z)V

    .line 250
    const-class v6, Lc8/QC;

    invoke-static {v4, v6}, Lc8/iC;->formatBody(Lc8/fC;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    .line 260
    :goto_2
    new-instance v3, Lc8/YB;

    invoke-direct {v3, v5}, Lc8/YB;-><init>(Ljava/lang/String;)V

    .line 261
    .local v3, "req":Lc8/YB;
    invoke-virtual {v3, v9}, Lc8/YB;->setRedirect(Z)V

    .line 262
    if-eqz v2, :cond_0

    .line 263
    const-string/jumbo v6, "POST"

    invoke-virtual {v3, v6}, Lc8/YB;->setMethod(Ljava/lang/String;)V

    .line 265
    :try_start_0
    const-string/jumbo v6, "utf-8"

    invoke-virtual {v2, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v3, v6}, Lc8/YB;->setPostData([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 232
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v2    # "postData":Ljava/lang/String;
    .end local v3    # "req":Lc8/YB;
    .end local v5    # "url":Ljava/lang/String;
    .restart local v1    # "logininfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    const-string/jumbo v7, "sid"

    const-string/jumbo v6, "sid"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v7, v6}, Lc8/fC;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string/jumbo v7, "ecode"

    const-string/jumbo v6, "ecode"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v7, v6}, Lc8/fC;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 235
    const-string/jumbo v7, "WVServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "login info, sid: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v6, "sid"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " ecode: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v6, "ecode"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 240
    :cond_4
    if-eqz v1, :cond_2

    .line 241
    const-string/jumbo v7, "sid"

    const-string/jumbo v6, "sid"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v7, v6}, Lc8/fC;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 252
    .end local v1    # "logininfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2    # "postData":Ljava/lang/String;
    .restart local v5    # "url":Ljava/lang/String;
    :cond_5
    iget-boolean v6, p1, Lc8/qC;->post:Z

    if-eqz v6, :cond_6

    .line 253
    const-class v6, Lc8/QC;

    invoke-static {v4, v6}, Lc8/iC;->formatBody(Lc8/fC;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 255
    :cond_6
    const-class v6, Lc8/QC;

    invoke-static {v4, v6}, Lc8/iC;->formatUrl(Lc8/fC;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 10
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 89
    :try_start_0
    invoke-virtual {p3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->getWebview()Landroid/taobao/windvane/webview/IWVWebView;

    move-result-object v6

    invoke-interface {v6}, Landroid/taobao/windvane/webview/IWVWebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 90
    .local v3, "url":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "WVServer:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "101"

    invoke-static {v3, v6, v7}, Lc8/EF;->commitOffMonitor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .end local v3    # "url":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lc8/OH;->isAppDebug()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 96
    .local v0, "currentTime":J
    sget-wide v6, Lc8/MC;->notiTime:J

    sub-long v6, v0, v6

    const-wide/32 v8, 0x36ee80

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 97
    sput-wide v0, Lc8/MC;->notiTime:J

    .line 98
    iget-object v6, p0, Lc8/MC;->mContext:Landroid/content/Context;

    instance-of v6, v6, Landroid/app/Activity;

    if-eqz v6, :cond_0

    .line 99
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lc8/MC;->mContext:Landroid/content/Context;

    invoke-direct {v2, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 100
    .local v2, "dlg":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v6, "\u56e0\u5b89\u5168\u539f\u56e0\uff0clib-mtop.js \u9700\u5347\u7ea7\u81f31.5.0\u4ee5\u4e0a\uff0cWVServer\u63a5\u53e3\u5df2\u5e9f\u5f03\uff0c\u8bf7\u4f7f\u7528MtopWVPlugin\u3002 \u8be6\u8be2 \uff1a\u76ca\u96f6"

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 101
    const-string/jumbo v6, "\u8b66\u544a(\u4ec5debug\u7248\u672c\u4f1a\u5f39\u51fa)"

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 102
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 103
    const v6, 0x104000a

    new-instance v7, Lc8/HC;

    invoke-direct {v7, p0}, Lc8/HC;-><init>(Lc8/MC;)V

    invoke-virtual {v2, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 110
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 111
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 115
    .end local v0    # "currentTime":J
    .end local v2    # "dlg":Landroid/app/AlertDialog$Builder;
    :cond_0
    const-string/jumbo v6, "send"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 116
    sget-boolean v6, Lc8/MC;->NeedApiLock:Z

    if-eqz v6, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-wide v8, Lc8/MC;->lastlocktime:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x1388

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    .line 117
    iget-object v5, p0, Lc8/MC;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "\u54ce\u5466\u5582\uff0c\u88ab\u6324\u7206\u5566\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-static {v5, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 125
    :goto_1
    return v4

    .line 120
    :cond_1
    sput-boolean v5, Lc8/MC;->NeedApiLock:Z

    .line 121
    invoke-virtual {p0, p3, p2}, Lc8/MC;->send(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move v4, v5

    .line 123
    goto :goto_1

    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 390
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    move v2, v3

    .line 453
    :cond_0
    :goto_0
    return v2

    .line 392
    :sswitch_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Lc8/KC;

    if-eqz v3, :cond_2

    .line 393
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lc8/KC;

    .line 394
    .local v1, "result":Lc8/KC;
    invoke-virtual {v1}, Lc8/KC;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 395
    invoke-virtual {v1}, Lc8/KC;->getJsContext()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    if-eqz v3, :cond_1

    .line 396
    invoke-virtual {v1}, Lc8/KC;->getJsContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .line 397
    .local v0, "ctx":Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    invoke-virtual {v1}, Lc8/KC;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Ljava/lang/String;)V

    .line 405
    .end local v0    # "ctx":Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    :cond_1
    :goto_1
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 406
    const-string/jumbo v3, "WVServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "call result, retString: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lc8/KC;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    .end local v1    # "result":Lc8/KC;
    :cond_2
    invoke-direct {p0}, Lc8/MC;->notifyNext()V

    goto :goto_0

    .line 400
    .restart local v1    # "result":Lc8/KC;
    :cond_3
    invoke-virtual {v1}, Lc8/KC;->getJsContext()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    if-eqz v3, :cond_1

    .line 401
    invoke-virtual {v1}, Lc8/KC;->getJsContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .line 402
    .restart local v0    # "ctx":Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    invoke-virtual {v1}, Lc8/KC;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 413
    .end local v0    # "ctx":Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .end local v1    # "result":Lc8/KC;
    :sswitch_1
    invoke-direct {p0}, Lc8/MC;->notifyNext()V

    .line 414
    iput-boolean v3, p0, Lc8/MC;->isUserLogin:Z

    .line 415
    iget-object v3, p0, Lc8/MC;->singleExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lc8/LC;

    iget-object v5, p0, Lc8/MC;->jsContext:Ljava/lang/Object;

    iget-object v6, p0, Lc8/MC;->mParams:Ljava/lang/String;

    invoke-direct {v4, p0, v5, v6}, Lc8/LC;-><init>(Lc8/MC;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 416
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 417
    const-string/jumbo v3, "WVServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "login success, execute task, mParams:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lc8/MC;->mParams:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 422
    :sswitch_2
    iget-boolean v4, p0, Lc8/MC;->isUserLogin:Z

    if-eqz v4, :cond_6

    .line 423
    new-instance v1, Lc8/KC;

    invoke-direct {v1, p0}, Lc8/KC;-><init>(Lc8/MC;)V

    .line 424
    .restart local v1    # "result":Lc8/KC;
    const-string/jumbo v4, "ret"

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    const-string/jumbo v6, "ERR_SID_INVALID"

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lc8/KC;->addData(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 425
    iget-object v4, p0, Lc8/MC;->jsContext:Ljava/lang/Object;

    instance-of v4, v4, Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    if-eqz v4, :cond_4

    .line 426
    iget-object v0, p0, Lc8/MC;->jsContext:Ljava/lang/Object;

    check-cast v0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .line 427
    .restart local v0    # "ctx":Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    invoke-virtual {v1}, Lc8/KC;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Ljava/lang/String;)V

    .line 429
    .end local v0    # "ctx":Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    :cond_4
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 430
    const-string/jumbo v4, "WVServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "login fail, call result, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lc8/KC;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    :cond_5
    iput-boolean v3, p0, Lc8/MC;->isUserLogin:Z

    .line 434
    .end local v1    # "result":Lc8/KC;
    :cond_6
    invoke-direct {p0}, Lc8/MC;->notifyNext()V

    goto/16 :goto_0

    .line 438
    :sswitch_3
    new-instance v1, Lc8/KC;

    invoke-direct {v1, p0}, Lc8/KC;-><init>(Lc8/MC;)V

    .line 439
    .restart local v1    # "result":Lc8/KC;
    const-string/jumbo v3, "ret"

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    const-string/jumbo v5, "HY_FAILED"

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lc8/KC;->addData(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 440
    const-string/jumbo v3, "code"

    const-string/jumbo v4, "-1"

    invoke-virtual {v1, v3, v4}, Lc8/KC;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    iget-object v3, p0, Lc8/MC;->jsContext:Ljava/lang/Object;

    instance-of v3, v3, Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    if-eqz v3, :cond_7

    .line 442
    iget-object v0, p0, Lc8/MC;->jsContext:Ljava/lang/Object;

    check-cast v0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .line 443
    .restart local v0    # "ctx":Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    invoke-virtual {v1}, Lc8/KC;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Ljava/lang/String;)V

    .line 446
    .end local v0    # "ctx":Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    :cond_7
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 447
    const-string/jumbo v3, "WVServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "not reg login, call fail, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lc8/KC;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    :cond_8
    invoke-direct {p0}, Lc8/MC;->notifyNext()V

    goto/16 :goto_0

    .line 390
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_1
        0x1f4 -> :sswitch_0
        0x1fe -> :sswitch_3
    .end sparse-switch
.end method

.method public isLock()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lc8/MC;->needLock:Z

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lc8/MC;->lockQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 470
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/MC;->jsContext:Ljava/lang/Object;

    .line 471
    return-void
.end method

.method public send(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Ljava/lang/Object;
    .param p2, "params"    # Ljava/lang/String;
    .annotation runtime Lc8/lE;
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lc8/MC;->singleExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lc8/LC;

    invoke-direct {v1, p0, p1, p2}, Lc8/LC;-><init>(Lc8/MC;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 134
    return-void
.end method

.method public setLock(Z)V
    .locals 0
    .param p1, "lock"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lc8/MC;->needLock:Z

    .line 84
    return-void
.end method
