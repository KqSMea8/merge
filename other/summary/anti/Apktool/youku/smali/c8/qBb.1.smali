.class public Lc8/qBb;
.super Ljava/lang/Object;
.source "UrlWrapper.java"


# static fields
.field private static final ENVIRONMENT_BETA:I = 0x1

.field private static final ENVIRONMENT_DAILY:I = 0x3

.field private static final ENVIRONMENT_ONLINE:I = 0x0

.field private static final ENVIRONMENT_PRE:I = 0x2

.field private static final HTTP_ENVIRONMENT:I = 0x0

.field private static final MAX_CONNECTION_TIME_OUT:I = 0x2710

.field private static final MAX_READ_CONNECTION_STREAM_TIME_OUT:I = 0xea60

.field public static mErrorCode:I

.field public static final mMonitor:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

.field private static mUtSslSocketFactory:Lc8/rBb;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    const-string/jumbo v0, "http.keepAlive"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    sput v0, Lc8/qBb;->mErrorCode:I

    .line 57
    const/4 v0, 0x0

    sput-object v0, Lc8/qBb;->mUtSslSocketFactory:Lc8/rBb;

    .line 58
    new-instance v0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

    invoke-direct {v0}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;-><init>()V

    sput-object v0, Lc8/qBb;->mMonitor:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendRequest([B)Lc8/VAb;
    .locals 26
    .param p0, "bytes"    # [B

    .prologue
    .line 64
    invoke-static {}, Lc8/NBb;->d()V

    .line 65
    new-instance v4, Lc8/VAb;

    invoke-direct {v4}, Lc8/VAb;-><init>()V

    .line 72
    .local v4, "bizResponse":Lc8/VAb;
    :try_start_0
    new-instance v20, Ljava/net/URL;

    invoke-static {}, Lc8/WAb;->getInstance()Lc8/WAb;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lc8/WAb;->getHttpsUrl()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 83
    .local v20, "url":Ljava/net/URL;
    invoke-virtual/range {v20 .. v20}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    check-cast v7, Ljava/net/HttpURLConnection;

    .line 85
    .local v7, "conn":Ljava/net/HttpURLConnection;
    instance-of v0, v7, Ljavax/net/ssl/HttpsURLConnection;

    move/from16 v21, v0

    if-eqz v21, :cond_1

    .line 86
    sget-object v21, Lc8/qBb;->mUtSslSocketFactory:Lc8/rBb;

    if-nez v21, :cond_0

    invoke-virtual/range {v20 .. v20}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_0

    .line 87
    new-instance v21, Lc8/rBb;

    invoke-virtual/range {v20 .. v20}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lc8/rBb;-><init>(Ljava/lang/String;)V

    sput-object v21, Lc8/qBb;->mUtSslSocketFactory:Lc8/rBb;

    .line 89
    :cond_0
    move-object v0, v7

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object/from16 v21, v0

    sget-object v22, Lc8/qBb;->mUtSslSocketFactory:Lc8/rBb;

    invoke-virtual/range {v21 .. v22}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 99
    :cond_1
    if-eqz v7, :cond_7

    .line 100
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 101
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 103
    :try_start_1
    const-string/jumbo v21, "POST"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_3

    .line 108
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 109
    const/16 v21, 0x2710

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 110
    const v21, 0xea60

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 111
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 112
    const-string/jumbo v21, "Content-Type"

    const-string/jumbo v22, "application/x-www-form-urlencoded"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string/jumbo v21, "Charset"

    const-string/jumbo v22, "UTF-8"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lc8/uzb;->getAppkey()Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, "appkey":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_2

    .line 118
    const-string/jumbo v21, "x-k"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_2
    :try_start_2
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lc8/uzb;->getRequestAuthenticationInstance()Lcom/ut/mini/core/sign/IUTRequestAuthentication;

    move-result-object v18

    .line 125
    .local v18, "requestAuthentication":Lcom/ut/mini/core/sign/IUTRequestAuthentication;
    if-eqz v18, :cond_3

    .line 126
    invoke-static/range {p0 .. p0}, Lc8/OBb;->getMd5Hex([B)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/ut/mini/core/sign/IUTRequestAuthentication;->getSign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 127
    .local v19, "signValue":Ljava/lang/String;
    const-string/jumbo v21, ""

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string/jumbo v24, "signValue"

    aput-object v24, v22, v23

    const/16 v23, 0x1

    aput-object v19, v22, v23

    invoke-static/range {v21 .. v22}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    const-string/jumbo v21, "x-s"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;

    move/from16 v21, v0

    if-eqz v21, :cond_9

    .line 130
    check-cast v18, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;

    .end local v18    # "requestAuthentication":Lcom/ut/mini/core/sign/IUTRequestAuthentication;
    invoke-virtual/range {v18 .. v18}, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;->isEncode()Z

    move-result v21

    if-eqz v21, :cond_8

    .line 131
    const-string/jumbo v21, "x-t"

    const-string/jumbo v22, "2"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string/jumbo v21, ""

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string/jumbo v24, "x-t"

    aput-object v24, v22, v23

    const/16 v23, 0x1

    const/16 v24, 0x2

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4

    .line 148
    .end local v19    # "signValue":Ljava/lang/String;
    :cond_3
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 149
    .local v14, "now":J
    const/16 v16, 0x0

    .line 151
    .local v16, "out":Ljava/io/DataOutputStream;
    :try_start_3
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->connect()V

    .line 152
    if-eqz p0, :cond_4

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v21, v0

    if-lez v21, :cond_4

    .line 153
    new-instance v17, Ljava/io/DataOutputStream;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 154
    .end local v16    # "out":Ljava/io/DataOutputStream;
    .local v17, "out":Ljava/io/DataOutputStream;
    :try_start_4
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 155
    invoke-virtual/range {v17 .. v17}, Ljava/io/DataOutputStream;->flush()V
    :try_end_4
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_4 .. :try_end_4} :catch_10
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_f
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object/from16 v16, v17

    .line 173
    .end local v17    # "out":Ljava/io/DataOutputStream;
    .restart local v16    # "out":Ljava/io/DataOutputStream;
    :cond_4
    if-eqz v16, :cond_5

    .line 175
    :try_start_5
    invoke-virtual/range {v16 .. v16}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 182
    :cond_5
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    sub-long v22, v22, v14

    move-wide/from16 v0, v22

    iput-wide v0, v4, Lc8/VAb;->rt:J

    .line 184
    const/4 v8, 0x0

    .line 185
    .local v8, "dis":Ljava/io/InputStream;
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 187
    .local v5, "bs":Ljava/io/ByteArrayOutputStream;
    :try_start_6
    new-instance v9, Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v9, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_e
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 188
    .end local v8    # "dis":Ljava/io/InputStream;
    .local v9, "dis":Ljava/io/InputStream;
    const/16 v21, 0x800

    :try_start_7
    move/from16 v0, v21

    new-array v6, v0, [B

    .line 190
    .local v6, "buffer":[B
    :goto_2
    const/16 v21, 0x0

    const/16 v22, 0x800

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v9, v6, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v13

    .local v13, "i":I
    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v13, v0, :cond_d

    .line 191
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v5, v6, v0, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_2

    .line 193
    .end local v6    # "buffer":[B
    .end local v13    # "i":I
    :catch_0
    move-exception v10

    move-object v8, v9

    .line 194
    .end local v9    # "dis":Ljava/io/InputStream;
    .restart local v8    # "dis":Ljava/io/InputStream;
    .local v10, "e":Ljava/io/IOException;
    :goto_3
    :try_start_8
    const-string/jumbo v21, ""

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v10, v22, v23

    invoke-static/range {v21 .. v22}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 196
    if-eqz v8, :cond_6

    .line 198
    :try_start_9
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_c

    .line 204
    .end local v10    # "e":Ljava/io/IOException;
    :cond_6
    :goto_4
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v21

    if-lez v21, :cond_7

    .line 205
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lc8/UAb;->parseResult([B)I

    move-result v21

    sput v21, Lc8/qBb;->mErrorCode:I

    .line 206
    sget v21, Lc8/qBb;->mErrorCode:I

    move/from16 v0, v21

    iput v0, v4, Lc8/VAb;->errCode:I

    .line 207
    sget-object v21, Lc8/UAb;->mResponseAdditionalData:Ljava/lang/String;

    move-object/from16 v0, v21

    iput-object v0, v4, Lc8/VAb;->data:Ljava/lang/String;

    .line 210
    .end local v2    # "appkey":Ljava/lang/String;
    .end local v5    # "bs":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "conn":Ljava/net/HttpURLConnection;
    .end local v8    # "dis":Ljava/io/InputStream;
    .end local v14    # "now":J
    .end local v16    # "out":Ljava/io/DataOutputStream;
    .end local v20    # "url":Ljava/net/URL;
    :cond_7
    :goto_5
    return-object v4

    .line 91
    :catch_1
    move-exception v11

    .line 92
    .local v11, "e1":Ljava/net/MalformedURLException;
    const-string/jumbo v21, ""

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v11, v1}, Lc8/NBb;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_5

    .line 94
    .end local v11    # "e1":Ljava/net/MalformedURLException;
    :catch_2
    move-exception v12

    .line 95
    .local v12, "e2":Ljava/io/IOException;
    const-string/jumbo v21, ""

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v12, v1}, Lc8/NBb;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_5

    .line 104
    .end local v12    # "e2":Ljava/io/IOException;
    .restart local v7    # "conn":Ljava/net/HttpURLConnection;
    .restart local v20    # "url":Ljava/net/URL;
    :catch_3
    move-exception v10

    .line 105
    .local v10, "e":Ljava/net/ProtocolException;
    const-string/jumbo v21, ""

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v10, v1}, Lc8/NBb;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_5

    .line 134
    .end local v10    # "e":Ljava/net/ProtocolException;
    .restart local v2    # "appkey":Ljava/lang/String;
    .restart local v19    # "signValue":Ljava/lang/String;
    :cond_8
    :try_start_a
    const-string/jumbo v21, "x-t"

    const-string/jumbo v22, "3"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string/jumbo v21, ""

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string/jumbo v24, "x-t"

    aput-object v24, v22, v23

    const/16 v23, 0x1

    const/16 v24, 0x3

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_0

    .line 143
    .end local v19    # "signValue":Ljava/lang/String;
    :catch_4
    move-exception v10

    .line 144
    .local v10, "e":Ljava/lang/Throwable;
    const-string/jumbo v21, ""

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v10, v1}, Lc8/NBb;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 137
    .end local v10    # "e":Ljava/lang/Throwable;
    .restart local v18    # "requestAuthentication":Lcom/ut/mini/core/sign/IUTRequestAuthentication;
    .restart local v19    # "signValue":Ljava/lang/String;
    :cond_9
    :try_start_b
    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/ut/mini/core/sign/UTSecuritySDKRequestAuthentication;

    move/from16 v21, v0

    if-nez v21, :cond_a

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;

    move/from16 v21, v0

    if-eqz v21, :cond_3

    .line 139
    :cond_a
    const-string/jumbo v21, "x-t"

    const-string/jumbo v22, "1"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string/jumbo v21, ""

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string/jumbo v24, "x-t"

    aput-object v24, v22, v23

    const/16 v23, 0x1

    const/16 v24, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4

    goto/16 :goto_0

    .line 176
    .end local v18    # "requestAuthentication":Lcom/ut/mini/core/sign/IUTRequestAuthentication;
    .end local v19    # "signValue":Ljava/lang/String;
    .restart local v14    # "now":J
    .restart local v16    # "out":Ljava/io/DataOutputStream;
    :catch_5
    move-exception v10

    .line 177
    .local v10, "e":Ljava/io/IOException;
    const-string/jumbo v21, ""

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v10, v22, v23

    invoke-static/range {v21 .. v22}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 157
    .end local v10    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v10

    .line 158
    .local v10, "e":Ljavax/net/ssl/SSLHandshakeException;
    :goto_6
    :try_start_c
    const-string/jumbo v21, ""

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v10, v22, v23

    invoke-static/range {v21 .. v22}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lc8/uzb;->isSelfMonitorTurnOn()Z

    move-result v21

    if-eqz v21, :cond_b

    .line 161
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 162
    .local v3, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v21, "type"

    const-string/jumbo v22, "3"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v21, Lc8/qBb;->mMonitor:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

    sget v22, Lc8/JAb;->UPLOAD_FAILED:I

    invoke-static {v3}, Lc8/AIb;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lc8/JAb;->buildCountEvent(ILjava/lang/String;Ljava/lang/Double;)Lc8/JAb;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;->onEvent(Lc8/JAb;)V

    .line 166
    .end local v3    # "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    sub-long v22, v22, v14

    move-wide/from16 v0, v22

    iput-wide v0, v4, Lc8/VAb;->rt:J
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 173
    if-eqz v16, :cond_7

    .line 175
    :try_start_d
    invoke-virtual/range {v16 .. v16}, Ljava/io/DataOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    goto/16 :goto_5

    .line 176
    :catch_7
    move-exception v10

    .line 177
    .local v10, "e":Ljava/io/IOException;
    const-string/jumbo v21, ""

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v10, v22, v23

    invoke-static/range {v21 .. v22}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 168
    .end local v10    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v10

    .line 169
    .local v10, "e":Ljava/lang/Exception;
    :goto_7
    :try_start_e
    const-string/jumbo v21, ""

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v10, v22, v23

    invoke-static/range {v21 .. v22}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    sub-long v22, v22, v14

    move-wide/from16 v0, v22

    iput-wide v0, v4, Lc8/VAb;->rt:J
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 173
    if-eqz v16, :cond_7

    .line 175
    :try_start_f
    invoke-virtual/range {v16 .. v16}, Ljava/io/DataOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    goto/16 :goto_5

    .line 176
    :catch_9
    move-exception v10

    .line 177
    .local v10, "e":Ljava/io/IOException;
    const-string/jumbo v21, ""

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v10, v22, v23

    invoke-static/range {v21 .. v22}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 173
    .end local v10    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v21

    :goto_8
    if-eqz v16, :cond_c

    .line 175
    :try_start_10
    invoke-virtual/range {v16 .. v16}, Ljava/io/DataOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_a

    .line 178
    :cond_c
    :goto_9
    throw v21

    .line 176
    :catch_a
    move-exception v10

    .line 177
    .restart local v10    # "e":Ljava/io/IOException;
    const-string/jumbo v22, ""

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v10, v23, v24

    invoke-static/range {v22 .. v23}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9

    .line 196
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v5    # "bs":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "buffer":[B
    .restart local v9    # "dis":Ljava/io/InputStream;
    .restart local v13    # "i":I
    :cond_d
    if-eqz v9, :cond_f

    .line 198
    :try_start_11
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_b

    move-object v8, v9

    .line 201
    .end local v9    # "dis":Ljava/io/InputStream;
    .restart local v8    # "dis":Ljava/io/InputStream;
    goto/16 :goto_4

    .line 199
    .end local v8    # "dis":Ljava/io/InputStream;
    .restart local v9    # "dis":Ljava/io/InputStream;
    :catch_b
    move-exception v10

    .line 200
    .local v10, "e":Ljava/lang/Exception;
    const-string/jumbo v21, ""

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v10, v22, v23

    invoke-static/range {v21 .. v22}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v8, v9

    .line 201
    .end local v9    # "dis":Ljava/io/InputStream;
    .restart local v8    # "dis":Ljava/io/InputStream;
    goto/16 :goto_4

    .line 199
    .end local v6    # "buffer":[B
    .end local v13    # "i":I
    .local v10, "e":Ljava/io/IOException;
    :catch_c
    move-exception v10

    .line 200
    .local v10, "e":Ljava/lang/Exception;
    const-string/jumbo v21, ""

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v10, v22, v23

    invoke-static/range {v21 .. v22}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 196
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v21

    :goto_a
    if-eqz v8, :cond_e

    .line 198
    :try_start_12
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_d

    .line 201
    :cond_e
    :goto_b
    throw v21

    .line 199
    :catch_d
    move-exception v10

    .line 200
    .restart local v10    # "e":Ljava/lang/Exception;
    const-string/jumbo v22, ""

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v10, v23, v24

    invoke-static/range {v22 .. v23}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_b

    .line 196
    .end local v8    # "dis":Ljava/io/InputStream;
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v9    # "dis":Ljava/io/InputStream;
    :catchall_2
    move-exception v21

    move-object v8, v9

    .end local v9    # "dis":Ljava/io/InputStream;
    .restart local v8    # "dis":Ljava/io/InputStream;
    goto :goto_a

    .line 193
    :catch_e
    move-exception v10

    goto/16 :goto_3

    .line 173
    .end local v5    # "bs":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "dis":Ljava/io/InputStream;
    .end local v16    # "out":Ljava/io/DataOutputStream;
    .restart local v17    # "out":Ljava/io/DataOutputStream;
    :catchall_3
    move-exception v21

    move-object/from16 v16, v17

    .end local v17    # "out":Ljava/io/DataOutputStream;
    .restart local v16    # "out":Ljava/io/DataOutputStream;
    goto :goto_8

    .line 168
    .end local v16    # "out":Ljava/io/DataOutputStream;
    .restart local v17    # "out":Ljava/io/DataOutputStream;
    :catch_f
    move-exception v10

    move-object/from16 v16, v17

    .end local v17    # "out":Ljava/io/DataOutputStream;
    .restart local v16    # "out":Ljava/io/DataOutputStream;
    goto/16 :goto_7

    .line 157
    .end local v16    # "out":Ljava/io/DataOutputStream;
    .restart local v17    # "out":Ljava/io/DataOutputStream;
    :catch_10
    move-exception v10

    move-object/from16 v16, v17

    .end local v17    # "out":Ljava/io/DataOutputStream;
    .restart local v16    # "out":Ljava/io/DataOutputStream;
    goto/16 :goto_6

    .restart local v5    # "bs":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "buffer":[B
    .restart local v9    # "dis":Ljava/io/InputStream;
    .restart local v13    # "i":I
    :cond_f
    move-object v8, v9

    .end local v9    # "dis":Ljava/io/InputStream;
    .restart local v8    # "dis":Ljava/io/InputStream;
    goto/16 :goto_4
.end method
