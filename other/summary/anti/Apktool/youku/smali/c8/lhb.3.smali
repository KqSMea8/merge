.class public Lc8/lhb;
.super Ljava/lang/Object;
.source "HttpConnectionHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final TBUSERGW_DAILY:Ljava/lang/String; = "http://hz.tbusergw.taobao.net/gw.do"

.field private static final TBUSERGW_ONLINE:Ljava/lang/String; = "https://mgw.m.taobao.com/gw.do"

.field private static final TBUSERGW_PRE:Ljava/lang/String; = "http://hz.pre.tbusergw.taobao.net/gw.do"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lc8/lhb;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/lhb;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decodeResponse(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 146
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 147
    .local v0, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    const/16 v10, 0x400

    new-array v2, v10, [B

    .line 149
    .local v2, "data":[B
    const/4 v6, 0x0

    .line 151
    .local v6, "response":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, "len":I
    const/4 v10, -0x1

    if-eq v5, v10, :cond_0

    .line 152
    const/4 v10, 0x0

    invoke-virtual {v0, v2, v10, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 172
    .end local v5    # "len":I
    :catch_0
    move-exception v3

    .line 173
    .local v3, "e":Lorg/json/JSONException;
    :goto_1
    new-instance v11, Lcom/ali/auth/third/core/rpc/protocol/RpcException;

    const/16 v10, 0xa

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "response  ="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v13, ":"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_2

    const-string/jumbo v10, ""

    .line 175
    :goto_2
    invoke-direct {v11, v12, v10}, Lcom/ali/auth/third/core/rpc/protocol/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v11

    .line 154
    .end local v3    # "e":Lorg/json/JSONException;
    .restart local v5    # "len":I
    :cond_0
    :try_start_1
    new-instance v7, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    invoke-direct {v7, v10, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 155
    .end local v6    # "response":Ljava/lang/String;
    .local v7, "response":Ljava/lang/String;
    :try_start_2
    invoke-static {}, Lc8/ohb;->get()Ljava/lang/String;

    move-result-object v9

    .line 156
    .local v9, "triDesKey":Ljava/lang/String;
    sget-object v10, Lc8/lhb;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "raw response = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lc8/Jhb;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-static {}, Lc8/phb;->instance()Lc8/phb;

    move-result-object v1

    .line 160
    .local v1, "crypto":Lc8/phb;
    invoke-virtual {v1, v7, v9}, Lc8/phb;->decryptWrapper(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v6

    .line 163
    .end local v7    # "response":Ljava/lang/String;
    .restart local v6    # "response":Ljava/lang/String;
    :try_start_3
    sget-object v10, Lc8/lhb;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "decrypt gateway response="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lc8/Jhb;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 166
    .local v4, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v10, "resultStatus"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 167
    .local v8, "resultStatus":I
    const/16 v10, 0x3e8

    if-eq v8, v10, :cond_1

    .line 168
    new-instance v10, Lcom/ali/auth/third/core/rpc/protocol/RpcException;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string/jumbo v12, "memo"

    invoke-direct {v10, v11, v12}, Lcom/ali/auth/third/core/rpc/protocol/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v10
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 176
    .end local v1    # "crypto":Lc8/phb;
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "len":I
    .end local v8    # "resultStatus":I
    .end local v9    # "triDesKey":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 177
    .local v3, "e":Ljava/lang/Exception;
    :goto_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 178
    new-instance v10, Lcom/ali/auth/third/core/rpc/protocol/RpcException;

    const-string/jumbo v11, "net work error"

    invoke-direct {v10, v11}, Lcom/ali/auth/third/core/rpc/protocol/RpcException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 170
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "crypto":Lc8/phb;
    .restart local v4    # "jsonObject":Lorg/json/JSONObject;
    .restart local v5    # "len":I
    .restart local v8    # "resultStatus":I
    .restart local v9    # "triDesKey":Ljava/lang/String;
    :cond_1
    :try_start_4
    const-string/jumbo v10, "result"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v10

    return-object v10

    .line 175
    .end local v1    # "crypto":Lc8/phb;
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "len":I
    .end local v8    # "resultStatus":I
    .end local v9    # "triDesKey":Ljava/lang/String;
    .local v3, "e":Lorg/json/JSONException;
    :cond_2
    invoke-virtual {v3}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2

    .line 176
    .end local v3    # "e":Lorg/json/JSONException;
    .end local v6    # "response":Ljava/lang/String;
    .restart local v5    # "len":I
    .restart local v7    # "response":Ljava/lang/String;
    :catch_2
    move-exception v3

    move-object v6, v7

    .end local v7    # "response":Ljava/lang/String;
    .restart local v6    # "response":Ljava/lang/String;
    goto :goto_3

    .line 172
    .end local v6    # "response":Ljava/lang/String;
    .restart local v7    # "response":Ljava/lang/String;
    :catch_3
    move-exception v3

    move-object v6, v7

    .end local v7    # "response":Ljava/lang/String;
    .restart local v6    # "response":Ljava/lang/String;
    goto/16 :goto_1
.end method

.method public static encodeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "target"    # Ljava/lang/String;
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;

    .prologue
    .line 110
    const/16 v3, 0x10

    invoke-static {v3}, Lc8/nhb;->getRandomString(I)Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, "triDesKey":Ljava/lang/String;
    invoke-static {v2}, Lc8/ohb;->set(Ljava/lang/String;)V

    .line 113
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "id=1&"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "apiName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "apiVersion="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestData="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2, p2}, Lc8/lhb;->getEncryptedData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    const-string/jumbo v3, "&symType=AES"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 120
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v3, Lc8/lhb;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/Jhb;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static filterResponseCode(I)V
    .locals 3
    .param p0, "responseCode"    # I

    .prologue
    .line 41
    const/16 v0, 0xc8

    if-eq p0, v0, :cond_0

    .line 42
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "http request exception, response code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    return-void
.end method

.method public static getCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "contentType"    # Ljava/lang/String;

    .prologue
    .line 183
    const-string/jumbo v0, "utf-8"

    return-object v0
.end method

.method public static getEncryptedData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "triDesKey"    # Ljava/lang/String;
    .param p1, "request"    # Ljava/lang/String;

    .prologue
    .line 127
    invoke-static {}, Lc8/Whb;->getRsaPubkey()Ljava/lang/String;

    move-result-object v4

    .line 128
    .local v4, "rsaKey":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 129
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "get rsa from server failed!!!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 131
    :cond_0
    invoke-static {p0, v4}, Lc8/Zhb;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 132
    .local v3, "encryptedKey":Ljava/lang/String;
    const/4 v2, 0x0

    .line 135
    .local v2, "encryptedContent":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lc8/phb;->instance()Lc8/phb;

    move-result-object v0

    .line 136
    .local v0, "crypto":Lc8/phb;
    invoke-virtual {v0, p1, p0}, Lc8/phb;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 140
    .end local v0    # "crypto":Lc8/phb;
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    const-string/jumbo v6, "%08X%s%08X%s"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 141
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v3, v7, v8

    const/4 v8, 0x2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    aput-object v2, v7, v8

    .line 140
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 137
    :catch_0
    move-exception v1

    .line 138
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static log(Ljava/util/Map;Ljava/lang/String;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v5, 0xa

    .line 47
    invoke-static {}, Lc8/Jhb;->isDebugEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 62
    :goto_0
    return-void

    .line 50
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 53
    :cond_1
    const-string/jumbo v3, "with no param"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    :cond_2
    sget-object v3, Lc8/lhb;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_3
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 56
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 57
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 58
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static post(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "target"    # Ljava/lang/String;
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;

    .prologue
    .line 67
    sget-object v6, Lc8/lhb;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "post target = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " params"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const/4 v4, 0x0

    .line 69
    .local v4, "outputStream":Ljava/io/OutputStreamWriter;
    const/4 v2, 0x0

    .line 71
    .local v2, "httpUrlConnection":Ljava/net/HttpURLConnection;
    :try_start_0
    invoke-static {}, Lc8/Bgb;->getEnvironment()Lcom/ali/auth/third/core/config/Environment;

    move-result-object v6

    sget-object v7, Lcom/ali/auth/third/core/config/Environment;->PRE:Lcom/ali/auth/third/core/config/Environment;

    if-ne v6, v7, :cond_2

    .line 72
    new-instance v6, Ljava/net/URL;

    const-string/jumbo v7, "http://hz.pre.tbusergw.taobao.net/gw.do"

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 78
    :goto_0
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 79
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 80
    const-string/jumbo v6, "POST"

    invoke-virtual {v2, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 81
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 82
    const-string/jumbo v6, "Content-Type"

    const-string/jumbo v7, "application/x-www-form-urlencoded"

    invoke-virtual {v2, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const/16 v6, 0x3a98

    invoke-virtual {v2, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 84
    const/16 v6, 0x3a98

    invoke-virtual {v2, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 85
    sget-object v6, Lc8/whb;->INSTANCE:Lc8/whb;

    invoke-virtual {v6}, Lc8/whb;->getInternalSession()Lc8/Sgb;

    move-result-object v3

    .line 87
    .local v3, "internalSession":Lc8/Sgb;
    iget-object v6, v3, Lc8/Sgb;->user:Lc8/chb;

    if-eqz v6, :cond_0

    iget-object v6, v3, Lc8/Sgb;->user:Lc8/chb;

    iget-object v6, v6, Lc8/chb;->userId:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 88
    const-string/jumbo v6, "userid"

    iget-object v7, v3, Lc8/Sgb;->user:Lc8/chb;

    iget-object v7, v7, Lc8/chb;->userId:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_0
    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    .end local v4    # "outputStream":Ljava/io/OutputStreamWriter;
    .local v5, "outputStream":Ljava/io/OutputStreamWriter;
    :try_start_1
    invoke-static {p0, p1, p2}, Lc8/lhb;->encodeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->flush()V

    .line 93
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    invoke-static {v6}, Lc8/lhb;->filterResponseCode(I)V

    .line 94
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lc8/lhb;->getCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lc8/lhb;->decodeResponse(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    .line 98
    invoke-static {v5}, Lc8/Uhb;->closeQuietly(Ljava/io/Closeable;)V

    .line 99
    if-eqz v2, :cond_1

    .line 101
    :try_start_2
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 104
    :cond_1
    :goto_1
    return-object v6

    .line 73
    .end local v3    # "internalSession":Lc8/Sgb;
    .end local v5    # "outputStream":Ljava/io/OutputStreamWriter;
    .restart local v4    # "outputStream":Ljava/io/OutputStreamWriter;
    :cond_2
    :try_start_3
    invoke-static {}, Lc8/Bgb;->getEnvironment()Lcom/ali/auth/third/core/config/Environment;

    move-result-object v6

    sget-object v7, Lcom/ali/auth/third/core/config/Environment;->TEST:Lcom/ali/auth/third/core/config/Environment;

    if-ne v6, v7, :cond_3

    .line 74
    new-instance v6, Ljava/net/URL;

    const-string/jumbo v7, "http://hz.tbusergw.taobao.net/gw.do"

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    goto/16 :goto_0

    .line 76
    :cond_3
    new-instance v6, Ljava/net/URL;

    const-string/jumbo v7, "https://mgw.m.taobao.com/gw.do"

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 95
    :catch_0
    move-exception v1

    .line 96
    .local v1, "e":Ljava/lang/Throwable;
    :goto_2
    :try_start_4
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 98
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v6

    :goto_3
    invoke-static {v4}, Lc8/Uhb;->closeQuietly(Ljava/io/Closeable;)V

    .line 99
    if-eqz v2, :cond_4

    .line 101
    :try_start_5
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 104
    :cond_4
    :goto_4
    throw v6

    .end local v4    # "outputStream":Ljava/io/OutputStreamWriter;
    .restart local v3    # "internalSession":Lc8/Sgb;
    .restart local v5    # "outputStream":Ljava/io/OutputStreamWriter;
    :catch_1
    move-exception v7

    goto :goto_1

    .end local v3    # "internalSession":Lc8/Sgb;
    .end local v5    # "outputStream":Ljava/io/OutputStreamWriter;
    .restart local v4    # "outputStream":Ljava/io/OutputStreamWriter;
    :catch_2
    move-exception v7

    goto :goto_4

    .line 98
    .end local v4    # "outputStream":Ljava/io/OutputStreamWriter;
    .restart local v3    # "internalSession":Lc8/Sgb;
    .restart local v5    # "outputStream":Ljava/io/OutputStreamWriter;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "outputStream":Ljava/io/OutputStreamWriter;
    .restart local v4    # "outputStream":Ljava/io/OutputStreamWriter;
    goto :goto_3

    .line 95
    .end local v4    # "outputStream":Ljava/io/OutputStreamWriter;
    .restart local v5    # "outputStream":Ljava/io/OutputStreamWriter;
    :catch_3
    move-exception v1

    move-object v4, v5

    .end local v5    # "outputStream":Ljava/io/OutputStreamWriter;
    .restart local v4    # "outputStream":Ljava/io/OutputStreamWriter;
    goto :goto_2
.end method
