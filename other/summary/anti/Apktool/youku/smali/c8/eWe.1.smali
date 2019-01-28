.class public Lc8/eWe;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# static fields
.field private static final MAX_CONNECTION_TIME_OUT:I = 0x2710

.field private static final MAX_READ_CONNECTION_STREAM_TIME_OUT:I = 0x2710

.field private static final TIME_SCOPE:J = 0x1b7740L

.field private static mUtdidSslSocketFactory:Lc8/hWe;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    const-string/jumbo v0, "http.keepAlive"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    sput-object v0, Lc8/eWe;->mUtdidSslSocketFactory:Lc8/hWe;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendRequest(Ljava/lang/String;Ljava/lang/String;Z)Lc8/dWe;
    .locals 34
    .param p0, "aUrl"    # Ljava/lang/String;
    .param p1, "body"    # Ljava/lang/String;
    .param p2, "postType"    # Z

    .prologue
    .line 49
    new-instance v23, Lc8/dWe;

    invoke-direct/range {v23 .. v23}, Lc8/dWe;-><init>()V

    .line 50
    .local v23, "repsonse":Lc8/dWe;
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-object v23

    .line 57
    :cond_1
    :try_start_0
    new-instance v27, Ljava/net/URL;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 58
    .local v27, "url":Ljava/net/URL;
    invoke-virtual/range {v27 .. v27}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    check-cast v9, Ljava/net/HttpURLConnection;

    .line 60
    .local v9, "conn":Ljava/net/HttpURLConnection;
    instance-of v0, v9, Ljavax/net/ssl/HttpsURLConnection;

    move/from16 v28, v0

    if-eqz v28, :cond_3

    .line 61
    sget-object v28, Lc8/eWe;->mUtdidSslSocketFactory:Lc8/hWe;

    if-nez v28, :cond_2

    invoke-virtual/range {v27 .. v27}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_2

    .line 62
    new-instance v28, Lc8/hWe;

    invoke-virtual/range {v27 .. v27}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Lc8/hWe;-><init>(Ljava/lang/String;)V

    sput-object v28, Lc8/eWe;->mUtdidSslSocketFactory:Lc8/hWe;

    .line 64
    :cond_2
    move-object v0, v9

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object/from16 v28, v0

    sget-object v29, Lc8/eWe;->mUtdidSslSocketFactory:Lc8/hWe;

    invoke-virtual/range {v28 .. v29}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5

    .line 77
    :cond_3
    if-eqz v9, :cond_0

    .line 78
    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 79
    if-eqz p2, :cond_a

    .line 80
    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 82
    :try_start_1
    const-string/jumbo v28, "POST"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_6

    .line 95
    :goto_1
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 96
    const/16 v28, 0x2710

    move/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 97
    const/16 v28, 0x2710

    move/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 98
    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 99
    const-string/jumbo v28, "Content-Type"

    const-string/jumbo v29, "application/x-www-form-urlencoded"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v9, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string/jumbo v28, "Charset"

    const-string/jumbo v29, "UTF-8"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v9, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .local v24, "stringBuilder":Ljava/lang/StringBuilder;
    invoke-static {}, Lc8/oVe;->getInstance()Lc8/oVe;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lc8/oVe;->getAppkey()Ljava/lang/String;

    move-result-object v4

    .line 104
    .local v4, "appkey":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_4

    .line 105
    const-string/jumbo v28, "x-audid-appkey"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    :cond_4
    invoke-static {}, Lc8/oVe;->getInstance()Lc8/oVe;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lc8/oVe;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 110
    .local v5, "appname":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_5

    .line 112
    :try_start_2
    const-string/jumbo v28, "x-audid-appname"

    const-string/jumbo v29, "UTF-8"

    move-object/from16 v0, v29

    invoke-static {v5, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v9, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_14

    .line 119
    :cond_5
    :goto_2
    const-string/jumbo v28, "x-audid-sdk"

    const-string/jumbo v29, "2.0.5"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v9, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string/jumbo v28, "2.0.5"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-static {}, Lc8/oVe;->getInstance()Lc8/oVe;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lc8/oVe;->getCurrentTimeMillisString()Ljava/lang/String;

    move-result-object v26

    .line 123
    .local v26, "timestamp":Ljava/lang/String;
    const-string/jumbo v28, "x-audid-timestamp"

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v9, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string/jumbo v28, ""

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "timestamp:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    aput-object v31, v29, v30

    invoke-static/range {v28 .. v29}, Lc8/yWe;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lc8/nWe;->getHmacMd5Hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 129
    .local v18, "md5":Ljava/lang/String;
    const-string/jumbo v28, "signature"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    const/16 v30, 0x2

    invoke-static/range {v29 .. v30}, Lc8/FWe;->encodeToString([BI)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v9, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 132
    .local v20, "now":J
    const/16 v19, 0x0

    .line 134
    .local v19, "out":Ljava/io/DataOutputStream;
    :try_start_3
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->connect()V

    .line 135
    if-eqz p1, :cond_6

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v28

    if-lez v28, :cond_6

    .line 136
    new-instance v22, Ljava/io/DataOutputStream;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v28

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 137
    .end local v19    # "out":Ljava/io/DataOutputStream;
    .local v22, "out":Ljava/io/DataOutputStream;
    :try_start_4
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 138
    invoke-virtual/range {v22 .. v22}, Ljava/io/DataOutputStream;->flush()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_13
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object/from16 v19, v22

    .line 145
    .end local v22    # "out":Ljava/io/DataOutputStream;
    .restart local v19    # "out":Ljava/io/DataOutputStream;
    :cond_6
    if-eqz v19, :cond_7

    .line 147
    :try_start_5
    invoke-virtual/range {v19 .. v19}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8

    .line 155
    :cond_7
    :goto_3
    :try_start_6
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, v23

    iput v0, v1, Lc8/dWe;->httpResponseCode:I

    .line 156
    const-string/jumbo v28, "signature"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    iput-object v0, v1, Lc8/dWe;->signature:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_c

    .line 163
    :goto_4
    :try_start_7
    const-string/jumbo v28, "x-audid-timestamp"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 164
    .local v6, "audidTimestamp":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, v23

    iput-wide v0, v2, Lc8/dWe;->timestamp:J

    .line 165
    const-string/jumbo v28, ""

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "repsonse.timestamp:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v23

    iget-wide v0, v0, Lc8/dWe;->timestamp:J

    move-wide/from16 v32, v0

    invoke-virtual/range {v31 .. v33}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    aput-object v31, v29, v30

    invoke-static/range {v28 .. v29}, Lc8/yWe;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    invoke-static {}, Lc8/oVe;->getInstance()Lc8/oVe;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lc8/oVe;->getCurrentTimeMillis()J

    move-result-wide v10

    .line 167
    .local v10, "currentTime":J
    move-object/from16 v0, v23

    iget-wide v0, v0, Lc8/dWe;->timestamp:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x0

    cmp-long v28, v28, v30

    if-lez v28, :cond_9

    move-object/from16 v0, v23

    iget-wide v0, v0, Lc8/dWe;->timestamp:J

    move-wide/from16 v28, v0

    const-wide/32 v30, 0x1b7740

    add-long v30, v30, v10

    cmp-long v28, v28, v30

    if-gtz v28, :cond_8

    move-object/from16 v0, v23

    iget-wide v0, v0, Lc8/dWe;->timestamp:J

    move-wide/from16 v28, v0

    const-wide/32 v30, 0x1b7740

    sub-long v30, v10, v30

    cmp-long v28, v28, v30

    if-gez v28, :cond_9

    .line 170
    :cond_8
    invoke-static {}, Lc8/oVe;->getInstance()Lc8/oVe;

    move-result-object v28

    move-object/from16 v0, v23

    iget-wide v0, v0, Lc8/dWe;->timestamp:J

    move-wide/from16 v30, v0

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lc8/oVe;->setSystemTime(J)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_12

    .line 176
    .end local v6    # "audidTimestamp":Ljava/lang/String;
    .end local v10    # "currentTime":J
    :cond_9
    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    sub-long v28, v28, v20

    move-wide/from16 v0, v28

    move-object/from16 v2, v23

    iput-wide v0, v2, Lc8/dWe;->rt:J

    .line 178
    const/4 v12, 0x0

    .line 179
    .local v12, "dis":Ljava/io/InputStream;
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 181
    .local v7, "bs":Ljava/io/ByteArrayOutputStream;
    :try_start_8
    new-instance v13, Ljava/io/DataInputStream;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-direct {v13, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_11
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 182
    .end local v12    # "dis":Ljava/io/InputStream;
    .local v13, "dis":Ljava/io/InputStream;
    const/16 v28, 0x800

    :try_start_9
    move/from16 v0, v28

    new-array v8, v0, [B

    .line 184
    .local v8, "buffer":[B
    :goto_6
    const/16 v28, 0x0

    const/16 v29, 0x800

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v13, v8, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v17

    .local v17, "i":I
    const/16 v28, -0x1

    move/from16 v0, v17

    move/from16 v1, v28

    if-eq v0, v1, :cond_c

    .line 185
    const/16 v28, 0x0

    move/from16 v0, v28

    move/from16 v1, v17

    invoke-virtual {v7, v8, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_6

    .line 187
    .end local v8    # "buffer":[B
    .end local v17    # "i":I
    :catch_0
    move-exception v14

    .line 188
    .local v14, "e":Ljava/io/IOException;
    :goto_7
    :try_start_a
    const-string/jumbo v28, ""

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aput-object v14, v29, v30

    invoke-static/range {v28 .. v29}, Lc8/yWe;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 190
    :try_start_b
    new-instance v12, Ljava/io/DataInputStream;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-direct {v12, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_10
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 191
    .end local v13    # "dis":Ljava/io/InputStream;
    .restart local v12    # "dis":Ljava/io/InputStream;
    const/16 v28, 0x800

    :try_start_c
    move/from16 v0, v28

    new-array v8, v0, [B

    .line 193
    .restart local v8    # "buffer":[B
    :goto_8
    const/16 v28, 0x0

    const/16 v29, 0x800

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v12, v8, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v17

    .restart local v17    # "i":I
    const/16 v28, -0x1

    move/from16 v0, v17

    move/from16 v1, v28

    if-eq v0, v1, :cond_e

    .line 194
    const/16 v28, 0x0

    move/from16 v0, v28

    move/from16 v1, v17

    invoke-virtual {v7, v8, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_8

    .line 196
    .end local v8    # "buffer":[B
    .end local v17    # "i":I
    :catch_1
    move-exception v16

    .line 197
    .local v16, "e1":Ljava/lang/Exception;
    :goto_9
    :try_start_d
    const-string/jumbo v28, ""

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aput-object v16, v29, v30

    invoke-static/range {v28 .. v29}, Lc8/yWe;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 201
    if-eqz v12, :cond_0

    .line 203
    :try_start_e
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2

    goto/16 :goto_0

    .line 204
    :catch_2
    move-exception v14

    .line 205
    .local v14, "e":Ljava/lang/Exception;
    const-string/jumbo v28, ""

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aput-object v14, v29, v30

    invoke-static/range {v28 .. v29}, Lc8/yWe;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 66
    .end local v4    # "appkey":Ljava/lang/String;
    .end local v5    # "appname":Ljava/lang/String;
    .end local v7    # "bs":Ljava/io/ByteArrayOutputStream;
    .end local v9    # "conn":Ljava/net/HttpURLConnection;
    .end local v12    # "dis":Ljava/io/InputStream;
    .end local v14    # "e":Ljava/lang/Exception;
    .end local v16    # "e1":Ljava/lang/Exception;
    .end local v18    # "md5":Ljava/lang/String;
    .end local v19    # "out":Ljava/io/DataOutputStream;
    .end local v20    # "now":J
    .end local v24    # "stringBuilder":Ljava/lang/StringBuilder;
    .end local v26    # "timestamp":Ljava/lang/String;
    .end local v27    # "url":Ljava/net/URL;
    :catch_3
    move-exception v15

    .line 67
    .local v15, "e0":Ljava/net/MalformedURLException;
    const-string/jumbo v28, ""

    const/16 v29, 0x0

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v15, v1}, Lc8/yWe;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 69
    .end local v15    # "e0":Ljava/net/MalformedURLException;
    :catch_4
    move-exception v16

    .line 70
    .local v16, "e1":Ljava/io/IOException;
    const-string/jumbo v28, ""

    const/16 v29, 0x0

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2}, Lc8/yWe;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 72
    .end local v16    # "e1":Ljava/io/IOException;
    :catch_5
    move-exception v25

    .line 73
    .local v25, "t":Ljava/lang/Throwable;
    const-string/jumbo v28, ""

    const/16 v29, 0x0

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2}, Lc8/yWe;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 83
    .end local v25    # "t":Ljava/lang/Throwable;
    .restart local v9    # "conn":Ljava/net/HttpURLConnection;
    .restart local v27    # "url":Ljava/net/URL;
    :catch_6
    move-exception v14

    .line 84
    .local v14, "e":Ljava/net/ProtocolException;
    const-string/jumbo v28, ""

    const/16 v29, 0x0

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v14, v1}, Lc8/yWe;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 89
    .end local v14    # "e":Ljava/net/ProtocolException;
    :cond_a
    :try_start_f
    const-string/jumbo v28, "GET"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/net/ProtocolException; {:try_start_f .. :try_end_f} :catch_7

    goto/16 :goto_1

    .line 90
    :catch_7
    move-exception v14

    .line 91
    .restart local v14    # "e":Ljava/net/ProtocolException;
    const-string/jumbo v28, ""

    const/16 v29, 0x0

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v14, v1}, Lc8/yWe;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 148
    .end local v14    # "e":Ljava/net/ProtocolException;
    .restart local v4    # "appkey":Ljava/lang/String;
    .restart local v5    # "appname":Ljava/lang/String;
    .restart local v18    # "md5":Ljava/lang/String;
    .restart local v19    # "out":Ljava/io/DataOutputStream;
    .restart local v20    # "now":J
    .restart local v24    # "stringBuilder":Ljava/lang/StringBuilder;
    .restart local v26    # "timestamp":Ljava/lang/String;
    :catch_8
    move-exception v14

    .line 149
    .local v14, "e":Ljava/io/IOException;
    const-string/jumbo v28, ""

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aput-object v14, v29, v30

    invoke-static/range {v28 .. v29}, Lc8/yWe;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 140
    .end local v14    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v14

    .line 141
    .local v14, "e":Ljava/lang/Throwable;
    :goto_a
    :try_start_10
    const-string/jumbo v28, ""

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aput-object v14, v29, v30

    invoke-static/range {v28 .. v29}, Lc8/yWe;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    sub-long v28, v28, v20

    move-wide/from16 v0, v28

    move-object/from16 v2, v23

    iput-wide v0, v2, Lc8/dWe;->rt:J
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 145
    if-eqz v19, :cond_0

    .line 147
    :try_start_11
    invoke-virtual/range {v19 .. v19}, Ljava/io/DataOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_a

    goto/16 :goto_0

    .line 148
    :catch_a
    move-exception v14

    .line 149
    .local v14, "e":Ljava/io/IOException;
    const-string/jumbo v28, ""

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aput-object v14, v29, v30

    invoke-static/range {v28 .. v29}, Lc8/yWe;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 145
    .end local v14    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v28

    :goto_b
    if-eqz v19, :cond_b

    .line 147
    :try_start_12
    invoke-virtual/range {v19 .. v19}, Ljava/io/DataOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_b

    .line 150
    :cond_b
    :goto_c
    throw v28

    .line 148
    :catch_b
    move-exception v14

    .line 149
    .restart local v14    # "e":Ljava/io/IOException;
    const-string/jumbo v29, ""

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aput-object v14, v30, v31

    invoke-static/range {v29 .. v30}, Lc8/yWe;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_c

    .line 157
    .end local v14    # "e":Ljava/io/IOException;
    :catch_c
    move-exception v14

    .line 159
    .local v14, "e":Ljava/lang/Exception;
    const-string/jumbo v28, ""

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aput-object v14, v29, v30

    invoke-static/range {v28 .. v29}, Lc8/yWe;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 201
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v7    # "bs":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "buffer":[B
    .restart local v13    # "dis":Ljava/io/InputStream;
    .restart local v17    # "i":I
    :cond_c
    if-eqz v13, :cond_10

    .line 203
    :try_start_13
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_d

    move-object v12, v13

    .line 209
    .end local v13    # "dis":Ljava/io/InputStream;
    .restart local v12    # "dis":Ljava/io/InputStream;
    :cond_d
    :goto_d
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v28

    if-lez v28, :cond_0

    .line 210
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    iput-object v0, v1, Lc8/dWe;->data:[B

    goto/16 :goto_0

    .line 204
    .end local v12    # "dis":Ljava/io/InputStream;
    .restart local v13    # "dis":Ljava/io/InputStream;
    :catch_d
    move-exception v14

    .line 205
    .restart local v14    # "e":Ljava/lang/Exception;
    const-string/jumbo v28, ""

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aput-object v14, v29, v30

    invoke-static/range {v28 .. v29}, Lc8/yWe;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v12, v13

    .line 206
    .end local v13    # "dis":Ljava/io/InputStream;
    .restart local v12    # "dis":Ljava/io/InputStream;
    goto :goto_d

    .line 201
    .local v14, "e":Ljava/io/IOException;
    :cond_e
    if-eqz v12, :cond_d

    .line 203
    :try_start_14
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_e

    goto :goto_d

    .line 204
    :catch_e
    move-exception v14

    .line 205
    .local v14, "e":Ljava/lang/Exception;
    const-string/jumbo v28, ""

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aput-object v14, v29, v30

    invoke-static/range {v28 .. v29}, Lc8/yWe;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_d

    .line 201
    .end local v8    # "buffer":[B
    .end local v14    # "e":Ljava/lang/Exception;
    .end local v17    # "i":I
    :catchall_1
    move-exception v28

    :goto_e
    if-eqz v12, :cond_f

    .line 203
    :try_start_15
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_f

    .line 206
    :cond_f
    :goto_f
    throw v28

    .line 204
    :catch_f
    move-exception v14

    .line 205
    .restart local v14    # "e":Ljava/lang/Exception;
    const-string/jumbo v29, ""

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aput-object v14, v30, v31

    invoke-static/range {v29 .. v30}, Lc8/yWe;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_f

    .line 201
    .end local v12    # "dis":Ljava/io/InputStream;
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v13    # "dis":Ljava/io/InputStream;
    :catchall_2
    move-exception v28

    move-object v12, v13

    .end local v13    # "dis":Ljava/io/InputStream;
    .restart local v12    # "dis":Ljava/io/InputStream;
    goto :goto_e

    .line 196
    .end local v12    # "dis":Ljava/io/InputStream;
    .restart local v13    # "dis":Ljava/io/InputStream;
    .local v14, "e":Ljava/io/IOException;
    :catch_10
    move-exception v16

    move-object v12, v13

    .end local v13    # "dis":Ljava/io/InputStream;
    .restart local v12    # "dis":Ljava/io/InputStream;
    goto/16 :goto_9

    .line 187
    .end local v14    # "e":Ljava/io/IOException;
    :catch_11
    move-exception v14

    move-object v13, v12

    .end local v12    # "dis":Ljava/io/InputStream;
    .restart local v13    # "dis":Ljava/io/InputStream;
    goto/16 :goto_7

    .end local v7    # "bs":Ljava/io/ByteArrayOutputStream;
    .end local v13    # "dis":Ljava/io/InputStream;
    :catch_12
    move-exception v28

    goto/16 :goto_5

    .line 145
    .end local v19    # "out":Ljava/io/DataOutputStream;
    .restart local v22    # "out":Ljava/io/DataOutputStream;
    :catchall_3
    move-exception v28

    move-object/from16 v19, v22

    .end local v22    # "out":Ljava/io/DataOutputStream;
    .restart local v19    # "out":Ljava/io/DataOutputStream;
    goto/16 :goto_b

    .line 140
    .end local v19    # "out":Ljava/io/DataOutputStream;
    .restart local v22    # "out":Ljava/io/DataOutputStream;
    :catch_13
    move-exception v14

    move-object/from16 v19, v22

    .end local v22    # "out":Ljava/io/DataOutputStream;
    .restart local v19    # "out":Ljava/io/DataOutputStream;
    goto/16 :goto_a

    .end local v18    # "md5":Ljava/lang/String;
    .end local v19    # "out":Ljava/io/DataOutputStream;
    .end local v20    # "now":J
    .end local v26    # "timestamp":Ljava/lang/String;
    :catch_14
    move-exception v28

    goto/16 :goto_2

    .restart local v7    # "bs":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "buffer":[B
    .restart local v13    # "dis":Ljava/io/InputStream;
    .restart local v17    # "i":I
    .restart local v18    # "md5":Ljava/lang/String;
    .restart local v19    # "out":Ljava/io/DataOutputStream;
    .restart local v20    # "now":J
    .restart local v26    # "timestamp":Ljava/lang/String;
    :cond_10
    move-object v12, v13

    .end local v13    # "dis":Ljava/io/InputStream;
    .restart local v12    # "dis":Ljava/io/InputStream;
    goto/16 :goto_d
.end method
