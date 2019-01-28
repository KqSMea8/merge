.class public Lc8/uWc;
.super Ljava/lang/Object;
.source "HttpRequestManager.java"

# interfaces
.implements Lc8/wWc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baseproject/network/HttpRequestManager$NetEvent;
    }
.end annotation


# static fields
.field public static final FAIL:I = 0x2

.field public static final LOGIN_TAG:Ljava/lang/String; = "YKLogin.HttpCommunication.base.HttpRequestManager"

.field public static final METHOD_GET:Ljava/lang/String; = "GET"

.field public static final METHOD_POST:Ljava/lang/String; = "POST"

.field public static final STATE_ERROR_IO_EXCEPTION:Ljava/lang/String; = "IO\u5f02\u5e38\u54e6"

.field public static final STATE_ERROR_MALFORMED_URL_EXCEPTION:Ljava/lang/String; = "\u5730\u5740\u4e0d\u5408\u6cd5\u54e6"

.field public static final STATE_ERROR_PROTOCOL_EXCEPTION:Ljava/lang/String; = "\u534f\u8bae\u4e0d\u6b63\u786e\u54e6"

.field public static final STATE_ERROR_TIMEOUT:Ljava/lang/String; = "\u54a6\uff0c\u6682\u65f6\u6ca1\u6709\u83b7\u53d6\u5230\u6570\u636e\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

.field public static final STATE_ERROR_WITHOUT_NETWORK:Ljava/lang/String; = "\u65e0\u7f51\u7edc\u8fde\u63a5\uff0c\u8bf7\u68c0\u67e5\u540e\u91cd\u8bd5\uff0c\u5148\u53bb\u672c\u5730\u89c6\u9891\u770b\u770b\u5427\u3002"

.field public static final SUCCESS:I = 0x1


# instance fields
.field private connect_timeout_millis:I

.field private cookie:Ljava/lang/String;

.field private dataString:Ljava/lang/String;

.field private errorData:Ljava/lang/String;

.field public fail_reason:Ljava/lang/String;

.field private isSetCookie:Z

.field private method:Ljava/lang/String;

.field private read_timout_millis:I

.field private state:I

.field private task:Lc8/EWc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/EWc",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x2

    iput v0, p0, Lc8/uWc;->state:I

    .line 71
    const-string/jumbo v0, "GET"

    iput-object v0, p0, Lc8/uWc;->method:Ljava/lang/String;

    .line 106
    return-void
.end method

.method static synthetic access$000(Lc8/uWc;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/uWc;

    .prologue
    .line 54
    iget-object v0, p0, Lc8/uWc;->method:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lc8/uWc;)Z
    .locals 1
    .param p0, "x0"    # Lc8/uWc;

    .prologue
    .line 54
    iget-boolean v0, p0, Lc8/uWc;->isSetCookie:Z

    return v0
.end method

.method static synthetic access$200(Lc8/uWc;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/uWc;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lc8/uWc;->downloadUri(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lc8/uWc;)I
    .locals 1
    .param p0, "x0"    # Lc8/uWc;

    .prologue
    .line 54
    iget v0, p0, Lc8/uWc;->state:I

    return v0
.end method

.method private downloadUri(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 10
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "isSetCookie"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 128
    invoke-static {}, Lc8/tSh;->hasInternet()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 129
    invoke-static {}, Lc8/tSh;->disableConnectionReuseIfNecessary()V

    .line 130
    const/4 v3, 0x0

    .line 132
    .local v3, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 133
    .local v6, "url":Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 134
    .local v1, "conn":Ljava/net/HttpURLConnection;
    iget v7, p0, Lc8/uWc;->read_timout_millis:I

    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 135
    iget v7, p0, Lc8/uWc;->connect_timeout_millis:I

    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 136
    invoke-virtual {v1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 137
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 139
    if-eqz p3, :cond_2

    .line 140
    iget-object v7, p0, Lc8/uWc;->cookie:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 141
    new-instance v7, Ljava/lang/NullPointerException;

    const-string/jumbo v8, "the cookie is not setted!"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v6    # "url":Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 194
    .local v2, "e":Ljava/net/MalformedURLException;
    :try_start_1
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 195
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lc8/uWc;->fail_reason:Ljava/lang/String;

    .line 196
    iget-object v7, p0, Lc8/uWc;->dataString:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    if-eqz v3, :cond_0

    .line 212
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a

    .line 219
    .end local v2    # "e":Ljava/net/MalformedURLException;
    .end local v3    # "is":Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-object v7

    .line 143
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v6    # "url":Ljava/net/URL;
    :cond_1
    :try_start_3
    const-string/jumbo v7, "Cookie"

    iget-object v8, p0, Lc8/uWc;->cookie:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_2
    const-string/jumbo v7, "User-Agent"

    sget-object v8, Lc8/oSh;->User_Agent:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 151
    sget-object v7, Lcom/baseproject/network/HttpRequestManager$NetEvent;->netRequest:Lcom/baseproject/network/HttpRequestManager$NetEvent;

    .line 153
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    .line 154
    .local v5, "response":I
    const/16 v7, 0xc8

    if-ne v5, v7, :cond_4

    .line 155
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 156
    invoke-static {v3}, Lc8/tSh;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lc8/uWc;->dataString:Ljava/lang/String;

    .line 157
    const/4 v7, 0x1

    iput v7, p0, Lc8/uWc;->state:I
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 160
    :try_start_4
    new-instance v4, Lorg/json/JSONObject;

    iget-object v7, p0, Lc8/uWc;->dataString:Ljava/lang/String;

    invoke-direct {v4, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 164
    .local v4, "obj":Lorg/json/JSONObject;
    :goto_1
    :try_start_5
    const-string/jumbo v7, "code"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "code":Ljava/lang/String;
    const-string/jumbo v7, "-309"

    invoke-static {v7, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 166
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "code >>> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    invoke-static {}, Lc8/Gko;->refreshSToken()V

    .line 192
    .end local v0    # "code":Ljava/lang/String;
    .end local v4    # "obj":Lorg/json/JSONObject;
    :cond_3
    :goto_2
    iget-object v7, p0, Lc8/uWc;->dataString:Ljava/lang/String;
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 210
    if-eqz v3, :cond_0

    .line 212
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    :catch_1
    move-exception v8

    goto :goto_0

    .line 162
    :catch_2
    move-exception v7

    :try_start_7
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .restart local v4    # "obj":Lorg/json/JSONObject;
    goto :goto_1

    .line 169
    .end local v4    # "obj":Lorg/json/JSONObject;
    :cond_4
    const/16 v7, 0x190

    if-ne v5, v7, :cond_5

    .line 170
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3

    .line 171
    invoke-static {v3}, Lc8/tSh;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lc8/uWc;->fail_reason:Ljava/lang/String;
    :try_end_7
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 197
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v5    # "response":I
    .end local v6    # "url":Ljava/net/URL;
    :catch_3
    move-exception v2

    .line 198
    .local v2, "e":Ljava/net/ProtocolException;
    :try_start_8
    invoke-virtual {v2}, Ljava/net/ProtocolException;->printStackTrace()V

    .line 199
    invoke-virtual {v2}, Ljava/net/ProtocolException;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lc8/uWc;->fail_reason:Ljava/lang/String;

    .line 200
    iget-object v7, p0, Lc8/uWc;->dataString:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 210
    if-eqz v3, :cond_0

    .line 212
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v8

    goto/16 :goto_0

    .line 172
    .end local v2    # "e":Ljava/net/ProtocolException;
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local v5    # "response":I
    .restart local v6    # "url":Ljava/net/URL;
    :cond_5
    const/16 v7, 0x191

    if-ne v5, v7, :cond_8

    .line 173
    :try_start_a
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3

    .line 174
    if-eqz v3, :cond_7

    invoke-static {v3}, Lc8/tSh;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    :goto_3
    iput-object v7, p0, Lc8/uWc;->errorData:Ljava/lang/String;
    :try_end_a
    .catch Ljava/net/MalformedURLException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 177
    :try_start_b
    new-instance v4, Lorg/json/JSONObject;

    iget-object v7, p0, Lc8/uWc;->errorData:Ljava/lang/String;

    invoke-direct {v4, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 181
    .restart local v4    # "obj":Lorg/json/JSONObject;
    :goto_4
    :try_start_c
    const-string/jumbo v7, "desc"

    const-string/jumbo v8, "\u6b64\u64cd\u4f5c\u9700\u8981\u767b\u5f55"

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lc8/uWc;->fail_reason:Ljava/lang/String;

    .line 182
    const/4 v7, 0x2

    iput v7, p0, Lc8/uWc;->state:I

    .line 183
    const-string/jumbo v7, "code"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 184
    .restart local v0    # "code":Ljava/lang/String;
    const-string/jumbo v7, "-301"

    invoke-static {v7, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string/jumbo v7, "-310"

    invoke-static {v7, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 185
    :cond_6
    iget v7, p0, Lc8/uWc;->state:I

    or-int/lit8 v7, v7, 0x4

    iput v7, p0, Lc8/uWc;->state:I

    .line 186
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "code >>> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    const-string/jumbo v7, "YKLogin.HttpCommunication.base.HttpRequestManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "HttpCommunication.base.HttpReqeustManager Logout >>> url: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", statusCode: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", code: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lc8/wHf;->logi(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/net/MalformedURLException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_2

    .line 201
    .end local v0    # "code":Ljava/lang/String;
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v4    # "obj":Lorg/json/JSONObject;
    .end local v5    # "response":I
    .end local v6    # "url":Ljava/net/URL;
    :catch_5
    move-exception v2

    .line 202
    .local v2, "e":Ljava/net/SocketTimeoutException;
    :try_start_d
    invoke-virtual {v2}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    .line 203
    const-string/jumbo v7, "\u54a6\uff0c\u6682\u65f6\u6ca1\u6709\u83b7\u53d6\u5230\u6570\u636e\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    iput-object v7, p0, Lc8/uWc;->fail_reason:Ljava/lang/String;

    .line 204
    iget-object v7, p0, Lc8/uWc;->dataString:Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 210
    if-eqz v3, :cond_0

    .line 212
    :try_start_e
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    goto/16 :goto_0

    :catch_6
    move-exception v8

    goto/16 :goto_0

    .line 174
    .end local v2    # "e":Ljava/net/SocketTimeoutException;
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local v5    # "response":I
    .restart local v6    # "url":Ljava/net/URL;
    :cond_7
    :try_start_f
    const-string/jumbo v7, ""

    goto/16 :goto_3

    .line 179
    :catch_7
    move-exception v7

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .restart local v4    # "obj":Lorg/json/JSONObject;
    goto/16 :goto_4

    .line 190
    .end local v4    # "obj":Lorg/json/JSONObject;
    :cond_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lc8/uWc;->fail_reason:Ljava/lang/String;
    :try_end_f
    .catch Ljava/net/MalformedURLException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_f .. :try_end_f} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_f .. :try_end_f} :catch_5
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_2

    .line 205
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v5    # "response":I
    .end local v6    # "url":Ljava/net/URL;
    :catch_8
    move-exception v2

    .line 206
    .local v2, "e":Ljava/io/IOException;
    :try_start_10
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 207
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lc8/uWc;->fail_reason:Ljava/lang/String;

    .line 208
    iget-object v7, p0, Lc8/uWc;->dataString:Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 210
    if-eqz v3, :cond_0

    .line 212
    :try_start_11
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_9

    goto/16 :goto_0

    :catch_9
    move-exception v8

    goto/16 :goto_0

    .line 210
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    if-eqz v3, :cond_9

    .line 212
    :try_start_12
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_b

    .line 214
    :cond_9
    :goto_5
    throw v7

    .line 218
    .end local v3    # "is":Ljava/io/InputStream;
    :cond_a
    const-string/jumbo v7, "\u65e0\u7f51\u7edc\u8fde\u63a5\uff0c\u8bf7\u68c0\u67e5\u540e\u91cd\u8bd5\uff0c\u5148\u53bb\u672c\u5730\u89c6\u9891\u770b\u770b\u5427\u3002"

    iput-object v7, p0, Lc8/uWc;->fail_reason:Ljava/lang/String;

    .line 219
    iget-object v7, p0, Lc8/uWc;->dataString:Ljava/lang/String;

    goto/16 :goto_0

    .local v2, "e":Ljava/net/MalformedURLException;
    .restart local v3    # "is":Ljava/io/InputStream;
    :catch_a
    move-exception v8

    goto/16 :goto_0

    .end local v2    # "e":Ljava/net/MalformedURLException;
    :catch_b
    move-exception v8

    goto :goto_5
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lc8/uWc;->task:Lc8/EWc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/uWc;->task:Lc8/EWc;

    invoke-virtual {v0}, Lc8/EWc;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    iget-object v0, p0, Lc8/uWc;->task:Lc8/EWc;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc8/EWc;->cancel(Z)Z

    .line 316
    :cond_0
    return-void
.end method

.method public getDataString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lc8/uWc;->dataString:Ljava/lang/String;

    return-object v0
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
    .line 258
    .local p1, "dataObject":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/uWc;->dataString:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/AIb;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    .line 259
    return-object p1
.end method

.method public request(Lcom/baseproject/network/HttpIntent;Lc8/vWc;)V
    .locals 2
    .param p1, "httpIntent"    # Lcom/baseproject/network/HttpIntent;
    .param p2, "callBack"    # Lc8/vWc;

    .prologue
    const/4 v1, 0x0

    .line 264
    const-string/jumbo v0, "uri"

    invoke-virtual {p1, v0}, Lcom/baseproject/network/HttpIntent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/uWc;->uri:Ljava/lang/String;

    .line 265
    const-string/jumbo v0, "method"

    invoke-virtual {p1, v0}, Lcom/baseproject/network/HttpIntent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/uWc;->method:Ljava/lang/String;

    .line 266
    const-string/jumbo v0, "is_set_cookie"

    invoke-virtual {p1, v0, v1}, Lcom/baseproject/network/HttpIntent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lc8/uWc;->isSetCookie:Z

    .line 267
    const-string/jumbo v0, "connect_timeout"

    invoke-virtual {p1, v0, v1}, Lcom/baseproject/network/HttpIntent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lc8/uWc;->connect_timeout_millis:I

    .line 268
    const-string/jumbo v0, "read_timeout"

    invoke-virtual {p1, v0, v1}, Lcom/baseproject/network/HttpIntent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lc8/uWc;->read_timout_millis:I

    .line 270
    new-instance v0, Lc8/tWc;

    invoke-direct {v0, p0, p2}, Lc8/tWc;-><init>(Lc8/uWc;Lc8/vWc;)V

    iput-object v0, p0, Lc8/uWc;->task:Lc8/EWc;

    .line 307
    iget-object v0, p0, Lc8/uWc;->task:Lc8/EWc;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lc8/EWc;->execute([Ljava/lang/Object;)Lc8/EWc;

    .line 309
    return-void
.end method

.method public setCookie(Ljava/lang/String;)V
    .locals 0
    .param p1, "cookie"    # Ljava/lang/String;

    .prologue
    .line 339
    iput-object p1, p0, Lc8/uWc;->cookie:Ljava/lang/String;

    .line 340
    return-void
.end method
