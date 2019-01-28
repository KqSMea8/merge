.class public Lc8/vrf;
.super Ljava/lang/Object;
.source "ANetBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/urf;
    }
.end annotation


# static fields
.field private static final DEFAULT_CHARSET:Ljava/lang/String; = "UTF-8"

.field private static final ERR_BYTEARRAY_2_STRING:Ljava/lang/String; = "ByteArray -> String Error"

.field private static final ERR_PARSE_PARAM:Ljava/lang/String; = "parseParams error, param="

.field private static final HTTP_STATUS:Ljava/lang/String; = "status"

.field private static final HTTP_STATUS_CODE:Ljava/lang/String; = "status_code"

.field public static final KEY_DATA:Ljava/lang/String; = "data"

.field public static final KEY_HEADER:Ljava/lang/String; = "header"

.field public static final KEY_METHOD:Ljava/lang/String; = "method"

.field public static final KEY_URL:Ljava/lang/String; = "url"

.field public static final METHOD_POST:Ljava/lang/String; = "POST"

.field public static final MSG_ERR:I = -0x1

.field public static final MSG_OK:I = 0x1

.field public static final RESULT_CONTENT:Ljava/lang/String; = "content"

.field public static final RESULT_KEY:Ljava/lang/String; = "ret"

.field private static final TAG:Ljava/lang/String; = "ANetBridge"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mJsContext:Landroid/taobao/windvane/jsbridge/WVCallBackContext;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-static {}, Lc8/mOp;->getInstance()Lc8/mOp;

    move-result-object v0

    invoke-virtual {v0}, Lc8/mOp;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lc8/vrf;->mContext:Landroid/content/Context;

    .line 90
    new-instance v0, Lc8/trf;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lc8/trf;-><init>(Lc8/vrf;Landroid/os/Looper;)V

    iput-object v0, p0, Lc8/vrf;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lc8/vrf;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lc8/vrf;

    .prologue
    .line 34
    iget-object v0, p0, Lc8/vrf;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lc8/vrf;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .locals 1
    .param p0, "x0"    # Lc8/vrf;

    .prologue
    .line 34
    iget-object v0, p0, Lc8/vrf;->mJsContext:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    return-object v0
.end method

.method private parseParams(Ljava/lang/String;)Lc8/IN;
    .locals 16
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 144
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 145
    .local v7, "jsonParams":Lorg/json/JSONObject;
    const-string/jumbo v13, "url"

    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 146
    .local v11, "url":Ljava/lang/String;
    const-string/jumbo v13, "method"

    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 148
    .local v9, "method":Ljava/lang/String;
    new-instance v10, Lc8/IN;

    invoke-direct {v10, v11}, Lc8/IN;-><init>(Ljava/lang/String;)V

    .line 149
    .local v10, "request":Lc8/IN;
    invoke-virtual {v10, v9}, Lc8/IN;->setMethod(Ljava/lang/String;)V

    .line 150
    const-string/jumbo v13, "header"

    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 151
    .local v5, "headerJson":Lorg/json/JSONObject;
    if-eqz v5, :cond_2

    .line 152
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    .line 153
    .local v6, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 154
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 155
    .local v8, "key":Ljava/lang/String;
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 156
    .local v12, "value":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 159
    invoke-virtual {v10, v8, v12}, Lc8/IN;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 181
    .end local v5    # "headerJson":Lorg/json/JSONObject;
    .end local v6    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v7    # "jsonParams":Lorg/json/JSONObject;
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "method":Ljava/lang/String;
    .end local v10    # "request":Lc8/IN;
    .end local v11    # "url":Ljava/lang/String;
    .end local v12    # "value":Ljava/lang/String;
    :catch_0
    move-exception v13

    const-string/jumbo v13, "ANetBridge"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "parseParams error, param="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const/4 v10, 0x0

    :cond_1
    :goto_1
    return-object v10

    .line 164
    .restart local v5    # "headerJson":Lorg/json/JSONObject;
    .restart local v7    # "jsonParams":Lorg/json/JSONObject;
    .restart local v9    # "method":Ljava/lang/String;
    .restart local v10    # "request":Lc8/IN;
    .restart local v11    # "url":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string/jumbo v13, "POST"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 165
    const-string/jumbo v13, "data"

    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 166
    .local v3, "dataStr":Ljava/lang/String;
    invoke-static {v3}, Lc8/yMp;->isBlank(Ljava/lang/String;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v13

    if-nez v13, :cond_1

    .line 167
    const/4 v2, 0x0

    .line 169
    .local v2, "dataBytes":[B
    :try_start_2
    const-string/jumbo v13, "UTF-8"

    invoke-virtual {v3, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    .line 173
    :goto_2
    if-eqz v2, :cond_1

    .line 174
    :try_start_3
    new-instance v1, Lanet/channel/request/ByteArrayEntry;

    invoke-direct {v1, v2}, Lanet/channel/request/ByteArrayEntry;-><init>([B)V

    .line 175
    .local v1, "bodyEntry":Lanet/channel/request/BodyEntry;
    invoke-virtual {v10, v1}, Lc8/IN;->setBodyEntry(Lanet/channel/request/BodyEntry;)V

    goto :goto_1

    .line 170
    .end local v1    # "bodyEntry":Lanet/channel/request/BodyEntry;
    :catch_1
    move-exception v4

    .line 171
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2
.end method


# virtual methods
.method public sendRequest(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .param p2, "params"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 116
    invoke-static {}, Lc8/BMp;->isPrintLog()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 117
    const-string/jumbo v3, "ANetBridge"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Send Params: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/BMp;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_0
    iput-object p1, p0, Lc8/vrf;->mJsContext:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .line 120
    invoke-direct {p0, p2}, Lc8/vrf;->parseParams(Ljava/lang/String;)Lc8/IN;

    move-result-object v2

    .line 121
    .local v2, "request":Lc8/IN;
    if-nez v2, :cond_1

    .line 122
    iget-object v3, p0, Lc8/vrf;->mHandler:Landroid/os/Handler;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 124
    :cond_1
    new-instance v1, Lc8/sN;

    iget-object v3, p0, Lc8/vrf;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lc8/sN;-><init>(Landroid/content/Context;)V

    .line 125
    .local v1, "network":Lc8/sN;
    new-instance v0, Lc8/urf;

    invoke-direct {v0, p0, v6}, Lc8/urf;-><init>(Lc8/vrf;Lc8/trf;)V

    .line 126
    .local v0, "listener":Lc8/urf;
    invoke-virtual {v1, v2, v6, v6, v0}, Lc8/sN;->asyncSend(Lc8/uM;Ljava/lang/Object;Landroid/os/Handler;Lc8/sM;)Ljava/util/concurrent/Future;

    .line 127
    return-void
.end method
