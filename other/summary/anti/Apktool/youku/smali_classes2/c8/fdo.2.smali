.class public abstract Lc8/fdo;
.super Ljava/lang/Object;
.source "JSBProtocolHandler.java"

# interfaces
.implements Lc8/cdo;


# static fields
.field private static final EMPTY_STR:Ljava/lang/String; = ""

.field private static final JAVASCRIPT_BRIDGE_STR:Ljava/lang/String; = "javascript:ApiBridge"

.field private static final JS_BRIDGE_NAME:Ljava/lang/String; = "ApiBridge"

.field private static final JS_FETCH_QUEUE_FROM_JAVA:Ljava/lang/String; = "javascript:ApiBridge.fetchMessages();"

.field private static final JS_HANDLE_MESSAGE_FROM_JAVA:Ljava/lang/String; = "javascript:ApiBridge.onCallback(\'%s\',\'%s\');"

.field private static final SPLIT_MARK:Ljava/lang/String; = "/"

.field private static final TAG:Ljava/lang/String; = "JSBProtocolHandler"

.field protected static final TO_LOAD_JS:Ljava/lang/String; = "JavascriptBridge.js"

.field private static final UNDERLINE_STR:Ljava/lang/String; = "_"


# instance fields
.field private FETCH_QUEUE:Ljava/lang/String;

.field private RETURN_DATA:Ljava/lang/String;

.field private messageHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/Ico;",
            ">;"
        }
    .end annotation
.end field

.field private responseCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/Eco;",
            ">;"
        }
    .end annotation
.end field

.field private startupMessage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/Aco;",
            ">;"
        }
    .end annotation
.end field

.field private uniqueId:J

.field private webViewProxy:Lc8/Pco;


# direct methods
.method public constructor <init>(Lc8/Pco;)V
    .locals 2
    .param p1, "webViewProxy"    # Lc8/Pco;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/fdo;->responseCallbacks:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/fdo;->messageHandlers:Ljava/util/Map;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/fdo;->startupMessage:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lc8/fdo;->RETURN_DATA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_fetchQueue/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/fdo;->FETCH_QUEUE:Ljava/lang/String;

    .line 57
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/fdo;->uniqueId:J

    .line 62
    iput-object p1, p0, Lc8/fdo;->webViewProxy:Lc8/Pco;

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lc8/fdo;->getSchema()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "return/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/fdo;->RETURN_DATA:Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lc8/fdo;->RETURN_DATA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_fetchQueue/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/fdo;->FETCH_QUEUE:Ljava/lang/String;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lc8/fdo;Lc8/Aco;)V
    .locals 0
    .param p0, "x0"    # Lc8/fdo;
    .param p1, "x1"    # Lc8/Aco;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lc8/fdo;->handlerMessage(Lc8/Aco;)V

    return-void
.end method

.method private doSend(Ljava/lang/String;Ljava/lang/String;Lc8/Eco;)V
    .locals 6
    .param p1, "handlerName"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "responseCallback"    # Lc8/Eco;

    .prologue
    .line 167
    new-instance v1, Lc8/Aco;

    invoke-direct {v1}, Lc8/Aco;-><init>()V

    .line 168
    .local v1, "m":Lc8/Aco;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 169
    invoke-virtual {v1, p2}, Lc8/Aco;->setData(Ljava/lang/String;)V

    .line 171
    :cond_0
    if-eqz p3, :cond_1

    .line 173
    iget-wide v2, p0, Lc8/fdo;->uniqueId:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lc8/fdo;->uniqueId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "callBackStr":Ljava/lang/String;
    iget-object v2, p0, Lc8/fdo;->responseCallbacks:Ljava/util/Map;

    invoke-interface {v2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    invoke-virtual {v1, v0}, Lc8/Aco;->setCallbackId(Ljava/lang/String;)V

    .line 177
    .end local v0    # "callBackStr":Ljava/lang/String;
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 178
    invoke-virtual {v1, p1}, Lc8/Aco;->setMethod(Ljava/lang/String;)V

    .line 180
    :cond_2
    invoke-virtual {p0, v1}, Lc8/fdo;->dispatchMessage(Lc8/Aco;)V

    .line 181
    return-void
.end method

.method private getDataFromReturnUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 400
    iget-object v4, p0, Lc8/fdo;->FETCH_QUEUE:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 401
    iget-object v4, p0, Lc8/fdo;->FETCH_QUEUE:Ljava/lang/String;

    const-string/jumbo v5, ""

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 414
    :goto_0
    return-object v4

    .line 404
    :cond_0
    iget-object v4, p0, Lc8/fdo;->RETURN_DATA:Ljava/lang/String;

    const-string/jumbo v5, ""

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 405
    .local v3, "temp":Ljava/lang/String;
    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, "functionAndData":[Ljava/lang/String;
    array-length v4, v0

    const/4 v5, 0x2

    if-lt v4, v5, :cond_2

    .line 408
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 409
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_1

    .line 410
    aget-object v4, v0, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 412
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 414
    .end local v1    # "i":I
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private getDataFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 392
    iget-object v0, p0, Lc8/fdo;->FETCH_QUEUE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lc8/fdo;->FETCH_QUEUE:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 396
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lc8/fdo;->getSchema()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getFunctionFromReturnUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 418
    iget-object v2, p0, Lc8/fdo;->RETURN_DATA:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 419
    .local v1, "temp":Ljava/lang/String;
    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, "functionAndData":[Ljava/lang/String;
    array-length v2, v0

    if-lez v2, :cond_0

    .line 421
    const/4 v2, 0x0

    aget-object v2, v0, v2

    .line 423
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private handlerMessage(Lc8/Aco;)V
    .locals 4
    .param p1, "message"    # Lc8/Aco;

    .prologue
    .line 279
    if-nez p1, :cond_1

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    invoke-virtual {p1}, Lc8/Aco;->getCallbackId()Ljava/lang/String;

    move-result-object v2

    .line 284
    .local v2, "responseId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 290
    const/4 v1, 0x0

    .line 292
    .local v1, "responseFunction":Lc8/Eco;
    invoke-virtual {p1}, Lc8/Aco;->getCallbackId()Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, "callbackId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 294
    new-instance v1, Lc8/edo;

    .end local v1    # "responseFunction":Lc8/Eco;
    invoke-direct {v1, p0, v0}, Lc8/edo;-><init>(Lc8/fdo;Ljava/lang/String;)V

    .line 306
    .restart local v1    # "responseFunction":Lc8/Eco;
    :cond_2
    invoke-direct {p0, p1, v1}, Lc8/fdo;->invokeJavaScriptInterface(Lc8/Aco;Lc8/Eco;)V

    goto :goto_0
.end method

.method private invokeJavaScriptInterface(Lc8/Aco;Lc8/Eco;)V
    .locals 6
    .param p1, "m"    # Lc8/Aco;
    .param p2, "responseFunction"    # Lc8/Eco;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x3

    .line 319
    invoke-virtual {p1}, Lc8/Aco;->getClazz()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 320
    const-string/jumbo v1, "JSBProtocolHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invokeJavaScriptInterface, interface class not defined: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lc8/Aco;->toJson()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/Oao;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    if-eqz p2, :cond_0

    .line 322
    const-string/jumbo v1, "Sorry, the function is not found"

    invoke-interface {p2, v4, v1, v5}, Lc8/Eco;->onCallBack(ILjava/lang/String;Ljava/lang/String;)V

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    iget-object v1, p0, Lc8/fdo;->messageHandlers:Ljava/util/Map;

    invoke-virtual {p1}, Lc8/Aco;->getClazz()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Ico;

    .line 327
    .local v0, "bridgeProxy":Lc8/Ico;
    if-nez v0, :cond_2

    .line 328
    const-string/jumbo v1, "JSBProtocolHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invokeJavaScriptInterface, java interface class not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lc8/Aco;->toJson()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/Oao;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    if-eqz p2, :cond_0

    .line 330
    const-string/jumbo v1, "Sorry, the function is not found"

    invoke-interface {p2, v4, v1, v5}, Lc8/Eco;->onCallBack(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 334
    :cond_2
    invoke-virtual {p1}, Lc8/Aco;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lc8/Aco;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Lc8/Ico;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Lc8/Eco;)V

    goto :goto_0
.end method

.method private static parseFunctionName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "jsUrl"    # Ljava/lang/String;

    .prologue
    .line 388
    const-string/jumbo v0, "javascript:ApiBridge."

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\\(.*\\);"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private parseParams(Lc8/Aco;)[Ljava/lang/Object;
    .locals 6
    .param p1, "message"    # Lc8/Aco;

    .prologue
    .line 346
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 347
    .local v0, "dataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lc8/Aco;->getData()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lc8/abo;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 349
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lc8/Aco;->getData()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 350
    .local v2, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 351
    .local v4, "keyIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 352
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 353
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 355
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "keyIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 356
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 359
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v5

    return-object v5
.end method

.method private queueMessage(Lc8/Aco;)V
    .locals 1
    .param p1, "m"    # Lc8/Aco;

    .prologue
    .line 184
    iget-object v0, p0, Lc8/fdo;->startupMessage:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lc8/fdo;->startupMessage:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    :goto_0
    return-void

    .line 187
    :cond_0
    invoke-virtual {p0, p1}, Lc8/fdo;->dispatchMessage(Lc8/Aco;)V

    goto :goto_0
.end method


# virtual methods
.method dispatchMessage(Lc8/Aco;)V
    .locals 6
    .param p1, "m"    # Lc8/Aco;

    .prologue
    .line 192
    invoke-virtual {p1}, Lc8/Aco;->toJson()Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, "messageJson":Ljava/lang/String;
    const-string/jumbo v2, "(\\\\)([^utrn])"

    const-string/jumbo v3, "\\\\\\\\$1$2"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 195
    const-string/jumbo v2, "(?<=[^\\\\])(\")"

    const-string/jumbo v3, "\\\\\""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 196
    const/4 v0, 0x0

    .line 197
    .local v0, "javascriptCommand":Ljava/lang/String;
    invoke-virtual {p1}, Lc8/Aco;->getCallbackId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/abo;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 198
    const-string/jumbo v2, "javascript:ApiBridge.onCallback(\'%s\',\'%s\');"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lc8/Aco;->getCallbackId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 200
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 201
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dispatchMessage.javascriptCommand: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/Oao;->e(Ljava/lang/String;)I

    .line 202
    iget-object v2, p0, Lc8/fdo;->webViewProxy:Lc8/Pco;

    invoke-interface {v2, v0}, Lc8/Pco;->loadUrl(Ljava/lang/String;)V

    .line 204
    :cond_1
    return-void
.end method

.method dispatchResponse(Lc8/Bco;)V
    .locals 6
    .param p1, "m"    # Lc8/Bco;

    .prologue
    .line 207
    invoke-virtual {p1}, Lc8/Bco;->toJson()Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, "messageJson":Ljava/lang/String;
    const-string/jumbo v2, "(\\\\)([^utrn])"

    const-string/jumbo v3, "\\\\\\\\$1$2"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 210
    const-string/jumbo v2, "(?<=[^\\\\])(\")"

    const-string/jumbo v3, "\\\\\""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 211
    const/4 v0, 0x0

    .line 212
    .local v0, "javascriptCommand":Ljava/lang/String;
    invoke-virtual {p1}, Lc8/Bco;->getResponseId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/abo;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 213
    const-string/jumbo v2, "javascript:ApiBridge.onCallback(\'%s\',\'%s\');"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lc8/Bco;->getResponseId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 215
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 216
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dispatchMessage.javascriptCommand: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/Oao;->e(Ljava/lang/String;)I

    .line 217
    iget-object v2, p0, Lc8/fdo;->webViewProxy:Lc8/Pco;

    invoke-interface {v2, v0}, Lc8/Pco;->loadUrl(Ljava/lang/String;)V

    .line 219
    :cond_1
    return-void
.end method

.method public flushMessageQueue()V
    .locals 2

    .prologue
    .line 248
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 249
    const-string/jumbo v0, "javascript:ApiBridge.fetchMessages();"

    new-instance v1, Lc8/ddo;

    invoke-direct {v1, p0}, Lc8/ddo;-><init>(Lc8/fdo;)V

    invoke-virtual {p0, v0, v1}, Lc8/fdo;->loadUrl(Ljava/lang/String;Lc8/Eco;)V

    .line 271
    :cond_0
    return-void
.end method

.method public abstract getExtendJsFile()Ljava/lang/String;
.end method

.method public getStartupMessage()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lc8/Aco;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lc8/fdo;->startupMessage:Ljava/util/List;

    return-object v0
.end method

.method public handlerAction(Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 226
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 227
    invoke-direct {p0, p1}, Lc8/fdo;->getDataFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "data":Ljava/lang/String;
    const/4 v2, 0x0

    .line 231
    .local v2, "message":Lc8/Aco;
    :try_start_0
    invoke-static {v0}, Lc8/Aco;->toObject(Ljava/lang/String;)Lc8/Aco;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 235
    :goto_0
    if-nez v2, :cond_1

    .line 240
    .end local v0    # "data":Ljava/lang/String;
    .end local v2    # "message":Lc8/Aco;
    :cond_0
    :goto_1
    return-void

    .line 232
    .restart local v0    # "data":Ljava/lang/String;
    .restart local v2    # "message":Lc8/Aco;
    :catch_0
    move-exception v1

    .line 233
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 238
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-direct {p0, v2}, Lc8/fdo;->handlerMessage(Lc8/Aco;)V

    goto :goto_1
.end method

.method public handlerReturnData(Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lc8/fdo;->getFunctionFromReturnUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, "functionName":Ljava/lang/String;
    iget-object v3, p0, Lc8/fdo;->responseCallbacks:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Eco;

    .line 150
    .local v1, "f":Lc8/Eco;
    invoke-direct {p0, p1}, Lc8/fdo;->getDataFromReturnUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "data":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 152
    const/4 v3, 0x0

    const-string/jumbo v4, "ok"

    invoke-interface {v1, v3, v4, v0}, Lc8/Eco;->onCallBack(ILjava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v3, p0, Lc8/fdo;->responseCallbacks:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    :cond_0
    return-void
.end method

.method public invoke(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 102
    invoke-virtual {p0}, Lc8/fdo;->getSchema()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    invoke-virtual {p0, p2}, Lc8/fdo;->handlerAction(Ljava/lang/String;)V

    .line 109
    :goto_0
    return v0

    .line 105
    :cond_0
    iget-object v1, p0, Lc8/fdo;->RETURN_DATA:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    invoke-virtual {p0, p2}, Lc8/fdo;->handlerReturnData(Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invokeWeb(Ljava/lang/String;Ljava/lang/String;Lc8/Eco;)V
    .locals 0
    .param p1, "funcName"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "callBack"    # Lc8/Eco;

    .prologue
    .line 114
    invoke-direct {p0, p1, p2, p3}, Lc8/fdo;->doSend(Ljava/lang/String;Ljava/lang/String;Lc8/Eco;)V

    .line 115
    return-void
.end method

.method public isSupport(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-static {p1}, Lc8/abo;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    const/4 v0, 0x0

    .line 73
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lc8/fdo;->getSchema()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public loadUrl(Ljava/lang/String;Lc8/Eco;)V
    .locals 2
    .param p1, "jsUrl"    # Ljava/lang/String;
    .param p2, "returnCallback"    # Lc8/Eco;

    .prologue
    .line 369
    iget-object v0, p0, Lc8/fdo;->webViewProxy:Lc8/Pco;

    invoke-interface {v0, p1}, Lc8/Pco;->loadUrl(Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lc8/fdo;->responseCallbacks:Ljava/util/Map;

    invoke-static {p1}, Lc8/fdo;->parseFunctionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    return-void
.end method

.method public onPageLoad(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 85
    const-string/jumbo v1, "JavascriptBridge.js"

    invoke-static {v1}, Lc8/abo;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "JavascriptBridge.js"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lc8/fdo;->getExtendJsFile()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lc8/Zco;->webViewLoadLocalJs(Landroid/webkit/WebView;[Ljava/lang/String;)V

    .line 91
    :cond_0
    iget-object v1, p0, Lc8/fdo;->startupMessage:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 92
    iget-object v1, p0, Lc8/fdo;->startupMessage:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Aco;

    .line 93
    .local v0, "m":Lc8/Aco;
    invoke-virtual {p0, v0}, Lc8/fdo;->dispatchMessage(Lc8/Aco;)V

    goto :goto_0

    .line 95
    .end local v0    # "m":Lc8/Aco;
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lc8/fdo;->startupMessage:Ljava/util/List;

    .line 97
    :cond_2
    return-void
.end method

.method public registerInterface(Lc8/Hco;)V
    .locals 4
    .param p1, "jsBridge"    # Lc8/Hco;

    .prologue
    .line 125
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lc8/Gco;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 126
    .local v0, "annos":Ljava/lang/annotation/Annotation;
    if-eqz v0, :cond_0

    .line 127
    check-cast v0, Lc8/Gco;

    .end local v0    # "annos":Ljava/lang/annotation/Annotation;
    invoke-interface {v0}, Lc8/Gco;->value()Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, "handlerName":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v1, p1}, Lc8/fdo;->registerInterface(Ljava/lang/String;Lc8/Hco;)V

    .line 132
    return-void

    .line 129
    .end local v1    # "handlerName":Ljava/lang/String;
    .restart local v0    # "annos":Ljava/lang/annotation/Annotation;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "handlerName":Ljava/lang/String;
    goto :goto_0
.end method

.method public registerInterface(Ljava/lang/String;Lc8/Hco;)V
    .locals 2
    .param p1, "handlerName"    # Ljava/lang/String;
    .param p2, "jsBridge"    # Lc8/Hco;

    .prologue
    .line 381
    if-eqz p2, :cond_0

    .line 382
    iget-object v0, p0, Lc8/fdo;->messageHandlers:Ljava/util/Map;

    new-instance v1, Lc8/Ico;

    invoke-direct {v1, p2}, Lc8/Ico;-><init>(Lc8/Hco;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    :cond_0
    return-void
.end method

.method public send(Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 159
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lc8/fdo;->send(Ljava/lang/String;Lc8/Eco;)V

    .line 160
    return-void
.end method

.method public send(Ljava/lang/String;Lc8/Eco;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "responseCallback"    # Lc8/Eco;

    .prologue
    .line 163
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lc8/fdo;->doSend(Ljava/lang/String;Ljava/lang/String;Lc8/Eco;)V

    .line 164
    return-void
.end method

.method public setStartupMessage(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/Aco;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, "startupMessage":Ljava/util/List;, "Ljava/util/List<Lcom/youku/us/baseuikit/webview/interaction/Message;>;"
    iput-object p1, p0, Lc8/fdo;->startupMessage:Ljava/util/List;

    .line 140
    return-void
.end method
