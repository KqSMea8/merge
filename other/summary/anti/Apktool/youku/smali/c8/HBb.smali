.class public final Lc8/HBb;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/GBb;
    }
.end annotation


# static fields
.field public static final HTTP_REQ_TYPE_GET:I = 0x1

.field public static final HTTP_REQ_TYPE_POST_FORM_DATA:I = 0x2

.field public static final HTTP_REQ_TYPE_POST_URL_ENCODED:I = 0x3

.field private static final MAX_CONNECTION_TIME_OUT:I = 0x2710

.field public static final MAX_READ_CONNECTION_STREAM_TIME_OUT:I = 0xea60

.field private static final POST_Field_BOTTOM:Ljava/lang/String; = "--GJircTeP--\r\n"

.field private static final POST_Field_TOP:Ljava/lang/String; = "--GJircTeP\r\nContent-Disposition: form-data; name=\"%s\"; filename=\"%s\"\r\nContent-Type: application/octet-stream \r\n\r\n"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    const-string/jumbo v0, "http.keepAlive"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    return-void
.end method

.method public static sendRequest(ILjava/lang/String;Ljava/util/Map;Z)Lc8/GBb;
    .locals 31
    .param p0, "requestType"    # I
    .param p1, "aUrl"    # Ljava/lang/String;
    .param p3, "openGzip"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)",
            "Lc8/GBb;"
        }
    .end annotation

    .prologue
    .line 61
    .local p2, "pMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v26, Lc8/GBb;

    invoke-direct/range {v26 .. v26}, Lc8/GBb;-><init>()V

    .line 62
    .local v26, "repsonse":Lc8/GBb;
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-object v26

    .line 69
    :cond_1
    :try_start_0
    new-instance v27, Ljava/net/URL;

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 70
    .local v27, "url":Ljava/net/URL;
    invoke-virtual/range {v27 .. v27}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    check-cast v7, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 79
    .local v7, "conn":Ljava/net/HttpURLConnection;
    if-eqz v7, :cond_0

    .line 80
    const/16 v28, 0x2

    move/from16 v0, p0

    move/from16 v1, v28

    if-eq v0, v1, :cond_2

    const/16 v28, 0x3

    move/from16 v0, p0

    move/from16 v1, v28

    if-ne v0, v1, :cond_3

    .line 81
    :cond_2
    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 83
    :cond_3
    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 85
    const/16 v28, 0x2

    move/from16 v0, p0

    move/from16 v1, v28

    if-eq v0, v1, :cond_4

    const/16 v28, 0x3

    move/from16 v0, p0

    move/from16 v1, v28

    if-ne v0, v1, :cond_9

    .line 86
    :cond_4
    :try_start_1
    const-string/jumbo v28, "POST"

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_2

    .line 94
    :goto_1
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 95
    const/16 v28, 0x2710

    move/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 96
    const v28, 0xea60

    move/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 97
    const-string/jumbo v28, "Connection"

    const-string/jumbo v29, "close"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v7, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    if-eqz p3, :cond_5

    .line 99
    const-string/jumbo v28, "Accept-Encoding"

    const-string/jumbo v29, "gzip,deflate"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v7, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_5
    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 103
    const/4 v9, 0x0

    .line 106
    .local v9, "data":[B
    const/16 v28, 0x2

    move/from16 v0, p0

    move/from16 v1, v28

    if-eq v0, v1, :cond_6

    const/16 v28, 0x3

    move/from16 v0, p0

    move/from16 v1, v28

    if-ne v0, v1, :cond_11

    .line 108
    :cond_6
    const/16 v28, 0x2

    move/from16 v0, p0

    move/from16 v1, v28

    if-ne v0, v1, :cond_a

    .line 109
    const-string/jumbo v28, "Content-Type"

    const-string/jumbo v29, "multipart/form-data; boundary=GJircTeP"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v7, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_7
    :goto_2
    const/4 v8, 0x0

    .line 115
    .local v8, "contentLength":I
    if-eqz p2, :cond_f

    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->size()I

    move-result v28

    if-lez v28, :cond_f

    .line 116
    new-instance v18, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 117
    .local v18, "lBaos":Ljava/io/ByteArrayOutputStream;
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v17

    .line 119
    .local v17, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->size()I

    move-result v28

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    .line 120
    .local v19, "lKeysArr":[Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 122
    invoke-static {}, Lc8/MBb;->getInstance()Lc8/MBb;

    move-result-object v28

    const/16 v29, 0x1

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lc8/MBb;->sortResourcesList([Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v19

    .line 124
    move-object/from16 v4, v19

    .local v4, "arr$":[Ljava/lang/String;
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v21, v0

    .local v21, "len$":I
    const/4 v15, 0x0

    .local v15, "i$":I
    :goto_3
    move/from16 v0, v21

    if-ge v15, v0, :cond_d

    aget-object v16, v4, v15

    .line 125
    .local v16, "key":Ljava/lang/String;
    const/16 v28, 0x2

    move/from16 v0, p0

    move/from16 v1, v28

    if-ne v0, v1, :cond_b

    .line 126
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [B

    .line 127
    .local v20, "lValue":[B
    if-eqz v20, :cond_8

    .line 129
    :try_start_2
    const-string/jumbo v28, "--GJircTeP\r\nContent-Disposition: form-data; name=\"%s\"; filename=\"%s\"\r\nContent-Type: application/octet-stream \r\n\r\n"

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aput-object v16, v29, v30

    const/16 v30, 0x1

    aput-object v16, v29, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 130
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 131
    const-string/jumbo v28, "\r\n"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 124
    .end local v20    # "lValue":[B
    :cond_8
    :goto_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 71
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v7    # "conn":Ljava/net/HttpURLConnection;
    .end local v8    # "contentLength":I
    .end local v9    # "data":[B
    .end local v15    # "i$":I
    .end local v16    # "key":Ljava/lang/String;
    .end local v17    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v18    # "lBaos":Ljava/io/ByteArrayOutputStream;
    .end local v19    # "lKeysArr":[Ljava/lang/String;
    .end local v21    # "len$":I
    .end local v27    # "url":Ljava/net/URL;
    :catch_0
    move-exception v13

    .line 72
    .local v13, "e1":Ljava/net/MalformedURLException;
    invoke-virtual {v13}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto/16 :goto_0

    .line 74
    .end local v13    # "e1":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v13

    .line 75
    .local v13, "e1":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 88
    .end local v13    # "e1":Ljava/io/IOException;
    .restart local v7    # "conn":Ljava/net/HttpURLConnection;
    .restart local v27    # "url":Ljava/net/URL;
    :cond_9
    :try_start_3
    const-string/jumbo v28, "GET"

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/ProtocolException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    .line 90
    :catch_2
    move-exception v12

    .line 91
    .local v12, "e":Ljava/net/ProtocolException;
    invoke-virtual {v12}, Ljava/net/ProtocolException;->printStackTrace()V

    goto/16 :goto_0

    .line 110
    .end local v12    # "e":Ljava/net/ProtocolException;
    .restart local v9    # "data":[B
    :cond_a
    const/16 v28, 0x3

    move/from16 v0, p0

    move/from16 v1, v28

    if-ne v0, v1, :cond_7

    .line 111
    const-string/jumbo v28, "Content-Type"

    const-string/jumbo v29, "application/x-www-form-urlencoded"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v7, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 132
    .restart local v4    # "arr$":[Ljava/lang/String;
    .restart local v8    # "contentLength":I
    .restart local v15    # "i$":I
    .restart local v16    # "key":Ljava/lang/String;
    .restart local v17    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v18    # "lBaos":Ljava/io/ByteArrayOutputStream;
    .restart local v19    # "lKeysArr":[Ljava/lang/String;
    .restart local v20    # "lValue":[B
    .restart local v21    # "len$":I
    :catch_3
    move-exception v12

    .line 133
    .local v12, "e":Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 136
    .end local v12    # "e":Ljava/io/IOException;
    .end local v20    # "lValue":[B
    :cond_b
    const/16 v28, 0x3

    move/from16 v0, p0

    move/from16 v1, v28

    if-ne v0, v1, :cond_8

    .line 137
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 138
    .local v20, "lValue":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v28

    if-lez v28, :cond_c

    .line 140
    :try_start_4
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "&"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, "="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_4

    .line 141
    :catch_4
    move-exception v12

    .line 142
    .restart local v12    # "e":Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 146
    .end local v12    # "e":Ljava/io/IOException;
    :cond_c
    :try_start_5
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, "="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_4

    .line 147
    :catch_5
    move-exception v12

    .line 148
    .restart local v12    # "e":Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 154
    .end local v12    # "e":Ljava/io/IOException;
    .end local v16    # "key":Ljava/lang/String;
    .end local v20    # "lValue":Ljava/lang/String;
    :cond_d
    const/16 v28, 0x2

    move/from16 v0, p0

    move/from16 v1, v28

    if-ne v0, v1, :cond_e

    .line 155
    :try_start_6
    const-string/jumbo v28, "--GJircTeP--\r\n"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    .line 160
    :cond_e
    :goto_5
    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    .line 162
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v15    # "i$":I
    .end local v17    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v18    # "lBaos":Ljava/io/ByteArrayOutputStream;
    .end local v19    # "lKeysArr":[Ljava/lang/String;
    .end local v21    # "len$":I
    :cond_f
    if-eqz v9, :cond_10

    .line 163
    array-length v8, v9

    .line 165
    :cond_10
    const-string/jumbo v28, "Content-Length"

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v7, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .end local v8    # "contentLength":I
    :cond_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 170
    .local v22, "now":J
    const/16 v24, 0x0

    .line 172
    .local v24, "out":Ljava/io/DataOutputStream;
    :try_start_7
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->connect()V

    .line 174
    const/16 v28, 0x2

    move/from16 v0, p0

    move/from16 v1, v28

    if-eq v0, v1, :cond_12

    const/16 v28, 0x3

    move/from16 v0, p0

    move/from16 v1, v28

    if-ne v0, v1, :cond_13

    :cond_12
    if-eqz v9, :cond_13

    array-length v0, v9

    move/from16 v28, v0

    if-lez v28, :cond_13

    .line 175
    new-instance v25, Ljava/io/DataOutputStream;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_a
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 176
    .end local v24    # "out":Ljava/io/DataOutputStream;
    .local v25, "out":Ljava/io/DataOutputStream;
    :try_start_8
    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/io/DataOutputStream;->write([B)V

    .line 177
    invoke-virtual/range {v25 .. v25}, Ljava/io/DataOutputStream;->flush()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_10
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-object/from16 v24, v25

    .line 184
    .end local v25    # "out":Ljava/io/DataOutputStream;
    .restart local v24    # "out":Ljava/io/DataOutputStream;
    :cond_13
    if-eqz v24, :cond_14

    .line 186
    :try_start_9
    invoke-virtual/range {v24 .. v24}, Ljava/io/DataOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    .line 194
    :cond_14
    :goto_6
    :try_start_a
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, v26

    iput v0, v1, Lc8/GBb;->httpResponseCode:I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_d

    .line 199
    :goto_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    sub-long v28, v28, v22

    move-wide/from16 v0, v28

    move-object/from16 v2, v26

    iput-wide v0, v2, Lc8/GBb;->rt:J

    .line 201
    const/4 v10, 0x0

    .line 203
    .local v10, "dis":Ljava/io/InputStream;
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 205
    .local v5, "bs":Ljava/io/ByteArrayOutputStream;
    if-eqz p3, :cond_16

    :try_start_b
    const-string/jumbo v28, "gzip"

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_16

    .line 206
    new-instance v11, Ljava/util/zip/GZIPInputStream;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-direct {v11, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v10    # "dis":Ljava/io/InputStream;
    .local v11, "dis":Ljava/io/InputStream;
    move-object v10, v11

    .line 210
    .end local v11    # "dis":Ljava/io/InputStream;
    .restart local v10    # "dis":Ljava/io/InputStream;
    :goto_8
    const/16 v28, 0x800

    move/from16 v0, v28

    new-array v6, v0, [B

    .line 212
    .local v6, "buffer":[B
    :goto_9
    const/16 v28, 0x0

    const/16 v29, 0x800

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v10, v6, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v14

    .local v14, "i":I
    const/16 v28, -0x1

    move/from16 v0, v28

    if-eq v14, v0, :cond_17

    .line 213
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v5, v6, v0, v14}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_9

    .line 215
    .end local v6    # "buffer":[B
    .end local v14    # "i":I
    :catch_6
    move-exception v12

    .line 216
    .restart local v12    # "e":Ljava/io/IOException;
    :try_start_c
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 219
    if-eqz v10, :cond_0

    .line 221
    :try_start_d
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    goto/16 :goto_0

    .line 222
    :catch_7
    move-exception v12

    .line 223
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 157
    .end local v5    # "bs":Ljava/io/ByteArrayOutputStream;
    .end local v10    # "dis":Ljava/io/InputStream;
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v22    # "now":J
    .end local v24    # "out":Ljava/io/DataOutputStream;
    .restart local v4    # "arr$":[Ljava/lang/String;
    .restart local v8    # "contentLength":I
    .restart local v15    # "i$":I
    .restart local v17    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v18    # "lBaos":Ljava/io/ByteArrayOutputStream;
    .restart local v19    # "lKeysArr":[Ljava/lang/String;
    .restart local v21    # "len$":I
    :catch_8
    move-exception v12

    .line 158
    .local v12, "e":Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    .line 187
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v8    # "contentLength":I
    .end local v12    # "e":Ljava/io/IOException;
    .end local v15    # "i$":I
    .end local v17    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v18    # "lBaos":Ljava/io/ByteArrayOutputStream;
    .end local v19    # "lKeysArr":[Ljava/lang/String;
    .end local v21    # "len$":I
    .restart local v22    # "now":J
    .restart local v24    # "out":Ljava/io/DataOutputStream;
    :catch_9
    move-exception v12

    .line 188
    .restart local v12    # "e":Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 179
    .end local v12    # "e":Ljava/io/IOException;
    :catch_a
    move-exception v12

    .line 180
    .local v12, "e":Ljava/lang/Exception;
    :goto_a
    :try_start_e
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    sub-long v28, v28, v22

    move-wide/from16 v0, v28

    move-object/from16 v2, v26

    iput-wide v0, v2, Lc8/GBb;->rt:J
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 184
    if-eqz v24, :cond_0

    .line 186
    :try_start_f
    invoke-virtual/range {v24 .. v24}, Ljava/io/DataOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b

    goto/16 :goto_0

    .line 187
    :catch_b
    move-exception v12

    .line 188
    .local v12, "e":Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 184
    .end local v12    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v28

    :goto_b
    if-eqz v24, :cond_15

    .line 186
    :try_start_10
    invoke-virtual/range {v24 .. v24}, Ljava/io/DataOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c

    .line 190
    :cond_15
    :goto_c
    throw v28

    .line 187
    :catch_c
    move-exception v12

    .line 188
    .restart local v12    # "e":Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 195
    .end local v12    # "e":Ljava/io/IOException;
    :catch_d
    move-exception v13

    .line 197
    .restart local v13    # "e1":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_7

    .line 208
    .end local v13    # "e1":Ljava/io/IOException;
    .restart local v5    # "bs":Ljava/io/ByteArrayOutputStream;
    .restart local v10    # "dis":Ljava/io/InputStream;
    :cond_16
    :try_start_11
    new-instance v11, Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-direct {v11, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_6
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .end local v10    # "dis":Ljava/io/InputStream;
    .restart local v11    # "dis":Ljava/io/InputStream;
    move-object v10, v11

    .end local v11    # "dis":Ljava/io/InputStream;
    .restart local v10    # "dis":Ljava/io/InputStream;
    goto/16 :goto_8

    .line 219
    .restart local v6    # "buffer":[B
    .restart local v14    # "i":I
    :cond_17
    if-eqz v10, :cond_18

    .line 221
    :try_start_12
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_e

    .line 227
    :cond_18
    :goto_d
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v28

    if-lez v28, :cond_0

    .line 228
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    iput-object v0, v1, Lc8/GBb;->data:[B

    goto/16 :goto_0

    .line 222
    :catch_e
    move-exception v12

    .line 223
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d

    .line 219
    .end local v6    # "buffer":[B
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v14    # "i":I
    :catchall_1
    move-exception v28

    if-eqz v10, :cond_19

    .line 221
    :try_start_13
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_f

    .line 224
    :cond_19
    :goto_e
    throw v28

    .line 222
    :catch_f
    move-exception v12

    .line 223
    .restart local v12    # "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e

    .line 184
    .end local v5    # "bs":Ljava/io/ByteArrayOutputStream;
    .end local v10    # "dis":Ljava/io/InputStream;
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v24    # "out":Ljava/io/DataOutputStream;
    .restart local v25    # "out":Ljava/io/DataOutputStream;
    :catchall_2
    move-exception v28

    move-object/from16 v24, v25

    .end local v25    # "out":Ljava/io/DataOutputStream;
    .restart local v24    # "out":Ljava/io/DataOutputStream;
    goto :goto_b

    .line 179
    .end local v24    # "out":Ljava/io/DataOutputStream;
    .restart local v25    # "out":Ljava/io/DataOutputStream;
    :catch_10
    move-exception v12

    move-object/from16 v24, v25

    .end local v25    # "out":Ljava/io/DataOutputStream;
    .restart local v24    # "out":Ljava/io/DataOutputStream;
    goto :goto_a
.end method
