.class public Lc8/mbk;
.super Ljava/lang/Object;
.source "HttpRequestManager.java"

# interfaces
.implements Lc8/TIj;


# static fields
.field public static final FAIL_TYPE_NO_NETWORK:Ljava/lang/String; = "NO_NETWORK"

.field public static final FAIL_TYPE_TIMEOUT:Ljava/lang/String; = "TIMEOUT"

.field public static final FAIL_TYPE_UNKNOWN:Ljava/lang/String; = "UNKNOWN"

.field public static STATE_ERROR_WITHOUT_NETWORK:Ljava/lang/String; = null

.field public static final TAG:Ljava/lang/String; = "Collection.HttpRequestManager"


# instance fields
.field private connect_timeout_millis:I

.field private dataString:Ljava/lang/String;

.field private eTag:Ljava/lang/String;

.field private fail_reason:Ljava/lang/String;

.field private isCacheData:Z

.field private isGetCookie:Z

.field private isSaveCookie:Z

.field private isSetCookie:Z

.field private method:Ljava/lang/String;

.field private read_timeout_millis:I

.field private state:I

.field private task:Lc8/pJj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/pJj",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x2

    iput v0, p0, Lc8/mbk;->state:I

    .line 60
    const-string/jumbo v0, "GET"

    iput-object v0, p0, Lc8/mbk;->method:Ljava/lang/String;

    .line 106
    return-void
.end method

.method static synthetic access$000(Lc8/mbk;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/mbk;

    .prologue
    .line 36
    iget-object v0, p0, Lc8/mbk;->uri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lc8/mbk;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/mbk;

    .prologue
    .line 36
    iget-object v0, p0, Lc8/mbk;->method:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lc8/mbk;)Z
    .locals 1
    .param p0, "x0"    # Lc8/mbk;

    .prologue
    .line 36
    iget-boolean v0, p0, Lc8/mbk;->isSetCookie:Z

    return v0
.end method

.method static synthetic access$300(Lc8/mbk;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/mbk;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lc8/mbk;->downloadUri(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lc8/mbk;)I
    .locals 1
    .param p0, "x0"    # Lc8/mbk;

    .prologue
    .line 36
    iget v0, p0, Lc8/mbk;->state:I

    return v0
.end method

.method static synthetic access$500(Lc8/mbk;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/mbk;

    .prologue
    .line 36
    iget-object v0, p0, Lc8/mbk;->fail_reason:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lc8/mbk;)Z
    .locals 1
    .param p0, "x0"    # Lc8/mbk;

    .prologue
    .line 36
    iget-boolean v0, p0, Lc8/mbk;->isCacheData:Z

    return v0
.end method

.method static synthetic access$700(Lc8/mbk;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/mbk;

    .prologue
    .line 36
    iget-object v0, p0, Lc8/mbk;->dataString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lc8/mbk;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/mbk;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lc8/mbk;->downloadUri(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private downloadUri(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "isSetCookie"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/16 v8, 0xc8

    .line 171
    invoke-static {}, Lc8/tSh;->hasInternet()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 172
    invoke-static {}, Lc8/tSh;->disableConnectionReuseIfNecessary()V

    .line 173
    const/4 v2, 0x0

    .line 175
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 176
    .local v5, "url":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 177
    .local v1, "conn":Ljava/net/HttpURLConnection;
    iget v6, p0, Lc8/mbk;->read_timeout_millis:I

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 178
    iget v6, p0, Lc8/mbk;->connect_timeout_millis:I

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 179
    invoke-virtual {v1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 180
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 181
    iget-boolean v6, p0, Lc8/mbk;->isCacheData:Z

    if-eqz v6, :cond_0

    invoke-direct {p0}, Lc8/mbk;->isLocalDataAvailable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 182
    const-string/jumbo v6, "if-None-Match"

    iget-object v7, p0, Lc8/mbk;->eTag:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :cond_0
    if-eqz p3, :cond_1

    .line 184
    const-string/jumbo v7, "Cookie"

    const-class v6, Lc8/vdn;

    invoke-static {v6}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc8/vdn;

    invoke-interface {v6}, Lc8/vdn;->getCookie()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v7, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_1
    const-string/jumbo v6, "User-Agent"

    sget-object v7, Lc8/oSh;->User_Agent:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 187
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 188
    .local v4, "response":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "responseCode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    const-string/jumbo v6, "Etag"

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lc8/mbk;->eTag:Ljava/lang/String;

    .line 190
    if-eq v4, v8, :cond_2

    const/16 v6, 0x190

    if-ne v4, v6, :cond_6

    .line 193
    :cond_2
    if-ne v4, v8, :cond_5

    .line 194
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 195
    invoke-static {v2}, Lc8/tSh;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lc8/mbk;->dataString:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    iget-object v6, p0, Lc8/mbk;->dataString:Ljava/lang/String;

    invoke-direct {v3, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    .local v3, "obj":Lorg/json/JSONObject;
    :goto_0
    :try_start_2
    const-string/jumbo v6, "code"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "code":Ljava/lang/String;
    const-string/jumbo v6, "-309"

    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 204
    invoke-static {}, Lc8/Gko;->refreshSToken()V

    .line 205
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "code >>> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .end local v0    # "code":Ljava/lang/String;
    .end local v3    # "obj":Lorg/json/JSONObject;
    :cond_3
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "dataString"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lc8/mbk;->dataString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    const/4 v6, 0x1

    iput v6, p0, Lc8/mbk;->state:I

    .line 224
    :goto_2
    iget-object v6, p0, Lc8/mbk;->dataString:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 230
    if-eqz v2, :cond_4

    .line 232
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 240
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v4    # "response":I
    .end local v5    # "url":Ljava/net/URL;
    :cond_4
    :goto_3
    return-object v6

    .line 200
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v4    # "response":I
    .restart local v5    # "url":Ljava/net/URL;
    :catch_0
    move-exception v6

    :try_start_4
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .restart local v3    # "obj":Lorg/json/JSONObject;
    goto :goto_0

    .line 208
    .end local v3    # "obj":Lorg/json/JSONObject;
    :cond_5
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    .line 209
    invoke-static {v2}, Lc8/tSh;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lc8/mbk;->dataString:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 227
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v4    # "response":I
    .end local v5    # "url":Ljava/net/URL;
    :catch_1
    move-exception v6

    :try_start_5
    const-string/jumbo v6, "TIMEOUT"

    iput-object v6, p0, Lc8/mbk;->fail_reason:Ljava/lang/String;

    .line 228
    iget-object v6, p0, Lc8/mbk;->dataString:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 230
    if-eqz v2, :cond_4

    .line 232
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    :catch_2
    move-exception v7

    goto :goto_3

    .line 213
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local v4    # "response":I
    .restart local v5    # "url":Ljava/net/URL;
    :cond_6
    const/16 v6, 0xcc

    if-eq v4, v6, :cond_7

    const/16 v6, 0x130

    if-ne v4, v6, :cond_9

    .line 216
    :cond_7
    const/4 v6, 0x1

    :try_start_7
    iput v6, p0, Lc8/mbk;->state:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 230
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v4    # "response":I
    .end local v5    # "url":Ljava/net/URL;
    :catchall_0
    move-exception v6

    if-eqz v2, :cond_8

    .line 232
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 235
    :cond_8
    :goto_4
    throw v6

    .line 217
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local v4    # "response":I
    .restart local v5    # "url":Ljava/net/URL;
    :cond_9
    const/16 v6, 0x191

    if-ne v4, v6, :cond_a

    .line 218
    :try_start_9
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    .line 219
    invoke-static {v2}, Lc8/tSh;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lc8/mbk;->dataString:Ljava/lang/String;

    .line 220
    const/4 v6, 0x4

    iput v6, p0, Lc8/mbk;->state:I

    goto :goto_2

    .line 222
    :cond_a
    const-string/jumbo v6, "UNKNOWN"

    iput-object v6, p0, Lc8/mbk;->fail_reason:Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2

    .line 239
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v4    # "response":I
    .end local v5    # "url":Ljava/net/URL;
    :cond_b
    const-string/jumbo v6, "NO_NETWORK"

    iput-object v6, p0, Lc8/mbk;->fail_reason:Ljava/lang/String;

    .line 240
    iget-object v6, p0, Lc8/mbk;->dataString:Ljava/lang/String;

    goto :goto_3

    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v4    # "response":I
    .restart local v5    # "url":Ljava/net/URL;
    :catch_3
    move-exception v7

    goto :goto_3

    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v4    # "response":I
    .end local v5    # "url":Ljava/net/URL;
    :catch_4
    move-exception v7

    goto :goto_4
.end method

.method private downloadUri(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "isSetCookie"    # Z
    .param p4, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/16 v10, 0xc8

    .line 246
    invoke-static {}, Lc8/tSh;->hasInternet()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 247
    invoke-static {}, Lc8/tSh;->disableConnectionReuseIfNecessary()V

    .line 248
    const/4 v3, 0x0

    .line 250
    .local v3, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 251
    .local v7, "url":Ljava/net/URL;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "HttpRequestManager#downloadUri()"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 254
    .local v1, "conn":Ljava/net/HttpURLConnection;
    const-string/jumbo v8, "charset"

    const-string/jumbo v9, "utf-8"

    invoke-virtual {v1, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget v8, p0, Lc8/mbk;->read_timeout_millis:I

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 256
    iget v8, p0, Lc8/mbk;->connect_timeout_millis:I

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 257
    invoke-virtual {v1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 258
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 259
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 260
    iget-boolean v8, p0, Lc8/mbk;->isCacheData:Z

    if-eqz v8, :cond_0

    invoke-direct {p0}, Lc8/mbk;->isLocalDataAvailable()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 261
    const-string/jumbo v8, "if-None-Match"

    iget-object v9, p0, Lc8/mbk;->eTag:Ljava/lang/String;

    invoke-virtual {v1, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    :cond_0
    if-eqz p3, :cond_1

    .line 263
    const-string/jumbo v9, "Cookie"

    const-class v8, Lc8/vdn;

    .line 264
    invoke-static {v8}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lc8/vdn;

    invoke-interface {v8}, Lc8/vdn;->getCookie()Ljava/lang/String;

    move-result-object v8

    .line 263
    invoke-virtual {v1, v9, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :cond_1
    const-string/jumbo v8, "User-Agent"

    sget-object v9, Lc8/oSh;->User_Agent:Ljava/lang/String;

    invoke-virtual {v1, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 267
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    .line 268
    .local v5, "out":Ljava/io/OutputStream;
    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/OutputStream;->write([B)V

    .line 269
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 270
    .local v6, "response":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "responseCode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    const-string/jumbo v8, "Etag"

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lc8/mbk;->eTag:Ljava/lang/String;

    .line 272
    if-eq v6, v10, :cond_2

    const/16 v8, 0x190

    if-ne v6, v8, :cond_6

    .line 275
    :cond_2
    if-ne v6, v10, :cond_5

    .line 276
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 277
    invoke-static {v3}, Lc8/tSh;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lc8/mbk;->dataString:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    iget-object v8, p0, Lc8/mbk;->dataString:Ljava/lang/String;

    invoke-direct {v4, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 284
    .local v4, "obj":Lorg/json/JSONObject;
    :goto_0
    :try_start_2
    const-string/jumbo v8, "code"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, "code":Ljava/lang/String;
    const-string/jumbo v8, "-309"

    invoke-static {v8, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 286
    invoke-static {}, Lc8/Gko;->refreshSToken()V

    .line 287
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "code >>> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 293
    .end local v0    # "code":Ljava/lang/String;
    .end local v4    # "obj":Lorg/json/JSONObject;
    :cond_3
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "dataString"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lc8/mbk;->dataString:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 294
    const/4 v8, 0x1

    iput v8, p0, Lc8/mbk;->state:I

    .line 310
    :goto_2
    iget-object v8, p0, Lc8/mbk;->dataString:Ljava/lang/String;
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 332
    if-eqz v3, :cond_4

    .line 334
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b

    .line 341
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v6    # "response":I
    .end local v7    # "url":Ljava/net/URL;
    :cond_4
    :goto_3
    return-object v8

    .line 282
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v6    # "response":I
    .restart local v7    # "url":Ljava/net/URL;
    :catch_0
    move-exception v8

    :try_start_4
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .restart local v4    # "obj":Lorg/json/JSONObject;
    goto :goto_0

    .line 290
    .end local v4    # "obj":Lorg/json/JSONObject;
    :cond_5
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3

    .line 291
    invoke-static {v3}, Lc8/tSh;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lc8/mbk;->dataString:Ljava/lang/String;
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/net/ProtocolException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 311
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v6    # "response":I
    .end local v7    # "url":Ljava/net/URL;
    :catch_1
    move-exception v2

    .line 312
    .local v2, "e":Ljava/net/MalformedURLException;
    :try_start_5
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 313
    const-string/jumbo v8, "TIMEOUT"

    iput-object v8, p0, Lc8/mbk;->fail_reason:Ljava/lang/String;

    .line 314
    iget-object v8, p0, Lc8/mbk;->dataString:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 332
    if-eqz v3, :cond_4

    .line 334
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    :catch_2
    move-exception v9

    goto :goto_3

    .line 295
    .end local v2    # "e":Ljava/net/MalformedURLException;
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v6    # "response":I
    .restart local v7    # "url":Ljava/net/URL;
    :cond_6
    const/16 v8, 0xcc

    if-ne v6, v8, :cond_7

    .line 298
    const/4 v8, 0x1

    :try_start_7
    iput v8, p0, Lc8/mbk;->state:I
    :try_end_7
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/net/ProtocolException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_9
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 315
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v6    # "response":I
    .end local v7    # "url":Ljava/net/URL;
    :catch_3
    move-exception v2

    .line 316
    .local v2, "e":Ljava/net/ProtocolException;
    :try_start_8
    invoke-virtual {v2}, Ljava/net/ProtocolException;->printStackTrace()V

    .line 317
    const-string/jumbo v8, "TIMEOUT"

    iput-object v8, p0, Lc8/mbk;->fail_reason:Ljava/lang/String;

    .line 318
    iget-object v8, p0, Lc8/mbk;->dataString:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 332
    if-eqz v3, :cond_4

    .line 334
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_3

    :catch_4
    move-exception v9

    goto :goto_3

    .line 299
    .end local v2    # "e":Ljava/net/ProtocolException;
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v6    # "response":I
    .restart local v7    # "url":Ljava/net/URL;
    :cond_7
    const/16 v8, 0x130

    if-ne v6, v8, :cond_8

    .line 302
    const/4 v8, 0x1

    :try_start_a
    iput v8, p0, Lc8/mbk;->state:I
    :try_end_a
    .catch Ljava/net/MalformedURLException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/net/ProtocolException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_2

    .line 319
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v6    # "response":I
    .end local v7    # "url":Ljava/net/URL;
    :catch_5
    move-exception v2

    .line 320
    .local v2, "e":Ljava/net/SocketTimeoutException;
    :try_start_b
    invoke-virtual {v2}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    .line 321
    const-string/jumbo v8, "TIMEOUT"

    iput-object v8, p0, Lc8/mbk;->fail_reason:Ljava/lang/String;

    .line 322
    iget-object v8, p0, Lc8/mbk;->dataString:Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 332
    if-eqz v3, :cond_4

    .line 334
    :try_start_c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    goto :goto_3

    :catch_6
    move-exception v9

    goto :goto_3

    .line 303
    .end local v2    # "e":Ljava/net/SocketTimeoutException;
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v6    # "response":I
    .restart local v7    # "url":Ljava/net/URL;
    :cond_8
    const/16 v8, 0x191

    if-ne v6, v8, :cond_9

    .line 304
    :try_start_d
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3

    .line 305
    invoke-static {v3}, Lc8/tSh;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lc8/mbk;->dataString:Ljava/lang/String;

    .line 306
    const/4 v8, 0x4

    iput v8, p0, Lc8/mbk;->state:I
    :try_end_d
    .catch Ljava/net/MalformedURLException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/net/ProtocolException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_2

    .line 323
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v6    # "response":I
    .end local v7    # "url":Ljava/net/URL;
    :catch_7
    move-exception v2

    .line 324
    .local v2, "e":Ljava/io/IOException;
    :try_start_e
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 325
    const-string/jumbo v8, "TIMEOUT"

    iput-object v8, p0, Lc8/mbk;->fail_reason:Ljava/lang/String;

    .line 326
    iget-object v8, p0, Lc8/mbk;->dataString:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 332
    if-eqz v3, :cond_4

    .line 334
    :try_start_f
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8

    goto/16 :goto_3

    :catch_8
    move-exception v9

    goto/16 :goto_3

    .line 308
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v6    # "response":I
    .restart local v7    # "url":Ljava/net/URL;
    :cond_9
    :try_start_10
    const-string/jumbo v8, "UNKNOWN"

    iput-object v8, p0, Lc8/mbk;->fail_reason:Ljava/lang/String;
    :try_end_10
    .catch Ljava/net/MalformedURLException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/net/ProtocolException; {:try_start_10 .. :try_end_10} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_10 .. :try_end_10} :catch_5
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_9
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_2

    .line 327
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v6    # "response":I
    .end local v7    # "url":Ljava/net/URL;
    :catch_9
    move-exception v2

    .line 328
    .local v2, "e":Ljava/lang/Exception;
    :try_start_11
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 329
    const-string/jumbo v8, "TIMEOUT"

    iput-object v8, p0, Lc8/mbk;->fail_reason:Ljava/lang/String;

    .line 330
    iget-object v8, p0, Lc8/mbk;->dataString:Ljava/lang/String;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 332
    if-eqz v3, :cond_4

    .line 334
    :try_start_12
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_a

    goto/16 :goto_3

    :catch_a
    move-exception v9

    goto/16 :goto_3

    .line 332
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    if-eqz v3, :cond_a

    .line 334
    :try_start_13
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_c

    .line 336
    :cond_a
    :goto_4
    throw v8

    .line 340
    .end local v3    # "is":Ljava/io/InputStream;
    :cond_b
    const-string/jumbo v8, "NO_NETWORK"

    iput-object v8, p0, Lc8/mbk;->fail_reason:Ljava/lang/String;

    .line 341
    iget-object v8, p0, Lc8/mbk;->dataString:Ljava/lang/String;

    goto/16 :goto_3

    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v6    # "response":I
    .restart local v7    # "url":Ljava/net/URL;
    :catch_b
    move-exception v9

    goto/16 :goto_3

    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v6    # "response":I
    .end local v7    # "url":Ljava/net/URL;
    :catch_c
    move-exception v9

    goto :goto_4
.end method

.method private isLocalDataAvailable()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 146
    iget-object v1, p0, Lc8/mbk;->dataString:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 148
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lc8/mbk;->dataString:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 149
    iget-object v1, p0, Lc8/mbk;->dataString:Ljava/lang/String;

    const-string/jumbo v2, "[]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    :cond_0
    :goto_0
    return v0

    .line 152
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private setErrorNetworkStr()V
    .locals 1

    .prologue
    .line 506
    sget-object v0, Lc8/mbk;->STATE_ERROR_WITHOUT_NETWORK:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    const-string/jumbo v0, "\u5f53\u524d\u65e0\u7f51\u7edc\u8fde\u63a5"

    sput-object v0, Lc8/mbk;->STATE_ERROR_WITHOUT_NETWORK:Ljava/lang/String;

    .line 515
    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 540
    return-void
.end method

.method public getDataString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lc8/mbk;->dataString:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/mbk;->dataString:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getErrorData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 529
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFailReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 524
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    .prologue
    .line 534
    const/4 v0, 0x0

    return v0
.end method

.method public isCancel()Z
    .locals 1

    .prologue
    .line 544
    const/4 v0, 0x0

    return v0
.end method

.method public parse(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 397
    .local p1, "dataObject":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/mbk;->dataString:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/AIb;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    .line 398
    return-object p1
.end method

.method public request(Lcom/youku/network/HttpIntent;Lc8/SIj;)V
    .locals 3
    .param p1, "i"    # Lcom/youku/network/HttpIntent;
    .param p2, "callBack"    # Lc8/SIj;

    .prologue
    const/4 v2, 0x0

    .line 403
    invoke-direct {p0}, Lc8/mbk;->setErrorNetworkStr()V

    .line 404
    const-string/jumbo v0, "uri"

    invoke-virtual {p1, v0}, Lcom/youku/network/HttpIntent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/mbk;->uri:Ljava/lang/String;

    .line 405
    const-string/jumbo v0, "method"

    invoke-virtual {p1, v0}, Lcom/youku/network/HttpIntent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/mbk;->method:Ljava/lang/String;

    .line 406
    const-string/jumbo v0, "is_set_cookie"

    invoke-virtual {p1, v0, v2}, Lcom/youku/network/HttpIntent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lc8/mbk;->isSetCookie:Z

    .line 407
    const-string/jumbo v0, "is_cache_data"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/youku/network/HttpIntent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lc8/mbk;->isCacheData:Z

    .line 408
    const-string/jumbo v0, "connect_timeout"

    invoke-virtual {p1, v0, v2}, Lcom/youku/network/HttpIntent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lc8/mbk;->connect_timeout_millis:I

    .line 409
    const-string/jumbo v0, "read_timeout"

    invoke-virtual {p1, v0, v2}, Lcom/youku/network/HttpIntent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lc8/mbk;->read_timeout_millis:I

    .line 410
    new-instance v0, Lc8/kbk;

    invoke-direct {v0, p0, p2}, Lc8/kbk;-><init>(Lc8/mbk;Lc8/SIj;)V

    iput-object v0, p0, Lc8/mbk;->task:Lc8/pJj;

    .line 450
    iget-object v0, p0, Lc8/mbk;->task:Lc8/pJj;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lc8/pJj;->execute([Ljava/lang/Object;)Lc8/pJj;

    .line 451
    return-void
.end method

.method public request(Lcom/youku/network/HttpIntent;Lc8/SIj;Ljava/lang/String;)V
    .locals 3
    .param p1, "i"    # Lcom/youku/network/HttpIntent;
    .param p2, "callBack"    # Lc8/SIj;
    .param p3, "content"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 454
    invoke-direct {p0}, Lc8/mbk;->setErrorNetworkStr()V

    .line 455
    const-string/jumbo v0, "uri"

    invoke-virtual {p1, v0}, Lcom/youku/network/HttpIntent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/mbk;->uri:Ljava/lang/String;

    .line 456
    const-string/jumbo v0, "method"

    invoke-virtual {p1, v0}, Lcom/youku/network/HttpIntent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/mbk;->method:Ljava/lang/String;

    .line 457
    const-string/jumbo v0, "is_set_cookie"

    invoke-virtual {p1, v0, v2}, Lcom/youku/network/HttpIntent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lc8/mbk;->isSetCookie:Z

    .line 458
    const-string/jumbo v0, "is_cache_data"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/youku/network/HttpIntent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lc8/mbk;->isCacheData:Z

    .line 459
    const-string/jumbo v0, "connect_timeout"

    invoke-virtual {p1, v0, v2}, Lcom/youku/network/HttpIntent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lc8/mbk;->connect_timeout_millis:I

    .line 460
    const-string/jumbo v0, "read_timeout"

    invoke-virtual {p1, v0, v2}, Lcom/youku/network/HttpIntent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lc8/mbk;->read_timeout_millis:I

    .line 461
    new-instance v0, Lc8/lbk;

    invoke-direct {v0, p0, p3, p2}, Lc8/lbk;-><init>(Lc8/mbk;Ljava/lang/String;Lc8/SIj;)V

    iput-object v0, p0, Lc8/mbk;->task:Lc8/pJj;

    .line 502
    iget-object v0, p0, Lc8/mbk;->task:Lc8/pJj;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lc8/pJj;->execute([Ljava/lang/Object;)Lc8/pJj;

    .line 503
    return-void
.end method

.method public setGetCookie(Z)V
    .locals 0
    .param p1, "isGetCookie"    # Z

    .prologue
    .line 123
    iput-boolean p1, p0, Lc8/mbk;->isGetCookie:Z

    .line 124
    return-void
.end method

.method public setParseErrorCode(Z)V
    .locals 0
    .param p1, "isParseErrorCode"    # Z

    .prologue
    .line 131
    return-void
.end method

.method public setSaveCookie(Z)V
    .locals 0
    .param p1, "isSaveCookie"    # Z

    .prologue
    .line 114
    iput-boolean p1, p0, Lc8/mbk;->isSaveCookie:Z

    .line 115
    return-void
.end method
