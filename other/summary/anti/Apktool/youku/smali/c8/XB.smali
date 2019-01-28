.class public Lc8/XB;
.super Ljava/lang/Object;
.source "HttpConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/taobao/windvane/connect/HttpConnector$RedirectException;,
        Landroid/taobao/windvane/connect/HttpConnector$HttpOverFlowException;,
        Landroid/taobao/windvane/connect/HttpConnector$NetWorkErrorException;,
        Landroid/taobao/windvane/connect/HttpConnector$HttpsErrorException;
    }
.end annotation


# static fields
.field public static final CACHE_CONTROL:Ljava/lang/String; = "cache-control"

.field public static final CONTENT_LENGTH:Ljava/lang/String; = "content-length"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "content-type"

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final ETAG:Ljava/lang/String; = "etag"

.field public static final EXPIRES:Ljava/lang/String; = "expires"

.field public static final IF_MODIFY_SINCE:Ljava/lang/String; = "If-Modified-Since"

.field public static final IF_NONE_MATCH:Ljava/lang/String; = "If-None-Match"

.field public static final LAST_MODIFIED:Ljava/lang/String; = "last-modified"

.field public static final REDIRECT_LOCATION:Ljava/lang/String; = "location"

.field public static final RESPONSE_CODE:Ljava/lang/String; = "response-code"

.field public static final SET_COOKIE:Ljava/lang/String; = "Set-Cookie"

.field private static TAG:Ljava/lang/String; = null

.field public static final URL:Ljava/lang/String; = "url"


# instance fields
.field private mListener:Lc8/WB;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/WB",
            "<",
            "Lc8/ZB;",
            ">;"
        }
    .end annotation
.end field

.field private redirectTime:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    const-string/jumbo v0, "HttpConnector"

    sput-object v0, Lc8/XB;->TAG:Ljava/lang/String;

    .line 58
    const-string/jumbo v0, "http.keepAlive"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lc8/XB;->redirectTime:I

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/XB;->mListener:Lc8/WB;

    .line 65
    return-void
.end method

.method private dataConnect(Lc8/YB;)Lc8/ZB;
    .locals 40
    .param p1, "request"    # Lc8/YB;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/taobao/windvane/connect/HttpConnector$NetWorkErrorException;,
            Landroid/taobao/windvane/connect/HttpConnector$HttpOverFlowException;,
            Landroid/taobao/windvane/connect/HttpConnector$RedirectException;,
            Landroid/taobao/windvane/connect/HttpConnector$HttpsErrorException;
        }
    .end annotation

    .prologue
    .line 132
    invoke-virtual/range {p1 .. p1}, Lc8/YB;->getUri()Landroid/net/Uri;

    move-result-object v33

    .line 133
    .local v33, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/XB;->mListener:Lc8/WB;

    move-object/from16 v36, v0

    if-eqz v36, :cond_0

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/XB;->mListener:Lc8/WB;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lc8/WB;->onStart()V

    .line 136
    :cond_0
    new-instance v29, Lc8/ZB;

    invoke-direct/range {v29 .. v29}, Lc8/ZB;-><init>()V

    .line 137
    .local v29, "result":Lc8/ZB;
    const-string/jumbo v36, "https"

    invoke-virtual/range {v33 .. v33}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    .line 138
    .local v20, "isHttps":Z
    const/4 v7, 0x0

    .line 139
    .local v7, "conn":Ljava/net/HttpURLConnection;
    const/16 v18, 0x0

    .line 140
    .local v18, "is":Ljava/util/zip/GZIPInputStream;
    const/16 v31, 0x0

    .line 141
    .local v31, "tmp":Ljava/io/InputStream;
    const/4 v11, 0x0

    .line 143
    .local v11, "dis":Ljava/io/DataInputStream;
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    const/16 v36, 0x80

    move/from16 v0, v36

    invoke-direct {v6, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 145
    .local v6, "bs":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v34, Ljava/net/URL;

    invoke-virtual/range {v33 .. v33}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 146
    .local v34, "url":Ljava/net/URL;
    invoke-virtual/range {v34 .. v34}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v15

    .line 148
    .local v15, "host":Ljava/lang/String;
    if-eqz v20, :cond_b

    .line 149
    sget-object v36, Lc8/XB;->TAG:Ljava/lang/String;

    const-string/jumbo v37, "proxy or https"

    invoke-static/range {v36 .. v37}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const/16 v32, 0x0

    .line 153
    .local v32, "tunnelFactory":Lc8/nH;
    sget-object v36, Lc8/xB;->context:Landroid/app/Application;

    invoke-static/range {v36 .. v36}, Lc8/TH;->getHttpsProxyInfo(Landroid/content/Context;)Lorg/apache/http/HttpHost;

    move-result-object v26

    .line 155
    .local v26, "proxy":Lorg/apache/http/HttpHost;
    if-eqz v26, :cond_9

    .line 156
    new-instance v32, Lc8/nH;

    .end local v32    # "tunnelFactory":Lc8/nH;
    invoke-virtual/range {v26 .. v26}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v26 .. v26}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v37

    const/16 v38, 0x0

    const-string/jumbo v39, "taobao_hybrid_8.3.0"

    move-object/from16 v0, v32

    move-object/from16 v1, v36

    move/from16 v2, v37

    move-object/from16 v3, v38

    move-object/from16 v4, v39

    invoke-direct {v0, v1, v2, v3, v4}, Lc8/nH;-><init>(Ljava/lang/String;ILjavax/net/ssl/SSLSocketFactory;Ljava/lang/String;)V

    .line 162
    .restart local v32    # "tunnelFactory":Lc8/nH;
    :goto_0
    invoke-virtual/range {v34 .. v34}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v16

    check-cast v16, Ljavax/net/ssl/HttpsURLConnection;

    .line 165
    .local v16, "httpsConn":Ljavax/net/ssl/HttpsURLConnection;
    if-eqz v32, :cond_1

    .line 166
    move-object/from16 v0, v16

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 168
    :cond_1
    new-instance v36, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;

    invoke-direct/range {v36 .. v36}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 171
    move-object/from16 v7, v16

    const-string/jumbo v36, "Connection"

    const-string/jumbo v37, "Keep-Alive"

    move-object/from16 v0, v16

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .end local v16    # "httpsConn":Ljavax/net/ssl/HttpsURLConnection;
    .end local v26    # "proxy":Lorg/apache/http/HttpHost;
    .end local v32    # "tunnelFactory":Lc8/nH;
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v1}, Lc8/XB;->setConnectProp(Ljava/net/HttpURLConnection;Lc8/YB;)V

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/XB;->mListener:Lc8/WB;

    move-object/from16 v36, v0

    if-eqz v36, :cond_2

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/XB;->mListener:Lc8/WB;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    invoke-virtual/range {v36 .. v37}, Lc8/WB;->onProcess(I)V

    .line 183
    :cond_2
    const-string/jumbo v36, "post"

    invoke-virtual/range {p1 .. p1}, Lc8/YB;->getMethod()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_c

    .line 184
    sget-object v36, Lc8/XB;->TAG:Ljava/lang/String;

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "post data: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    new-instance v38, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lc8/YB;->getPostData()[B

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const/16 v36, 0x1

    move/from16 v0, v36

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 187
    const/16 v36, 0x1

    move/from16 v0, v36

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 188
    const-string/jumbo v36, "POST"

    move-object/from16 v0, v36

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->connect()V

    .line 192
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v24

    .line 193
    .local v24, "os":Ljava/io/OutputStream;
    invoke-virtual/range {p1 .. p1}, Lc8/YB;->getPostData()[B

    move-result-object v36

    move-object/from16 v0, v24

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 194
    invoke-virtual/range {v24 .. v24}, Ljava/io/OutputStream;->flush()V

    .line 195
    invoke-virtual/range {v24 .. v24}, Ljava/io/OutputStream;->close()V

    .line 205
    .end local v24    # "os":Ljava/io/OutputStream;
    :goto_2
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v28

    .line 206
    .local v28, "responeCode":I
    sget-object v36, Lc8/XB;->TAG:Ljava/lang/String;

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "responeCode:"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const/16 v36, 0x12c

    move/from16 v0, v28

    move/from16 v1, v36

    if-lt v0, v1, :cond_1a

    const/16 v36, 0x190

    move/from16 v0, v28

    move/from16 v1, v36

    if-ge v0, v1, :cond_1a

    const/16 v36, 0x130

    move/from16 v0, v28

    move/from16 v1, v36

    if-eq v0, v1, :cond_1a

    invoke-virtual/range {p1 .. p1}, Lc8/YB;->isRedirect()Z

    move-result v36

    if-eqz v36, :cond_1a

    .line 211
    move-object/from16 v0, p0

    iget v0, v0, Lc8/XB;->redirectTime:I

    move/from16 v36, v0

    const/16 v37, 0x5

    move/from16 v0, v36

    move/from16 v1, v37

    if-le v0, v1, :cond_e

    .line 212
    new-instance v36, Landroid/taobao/windvane/connect/HttpConnector$RedirectException;

    const-string/jumbo v37, "too many redirect"

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Landroid/taobao/windvane/connect/HttpConnector$RedirectException;-><init>(Lc8/XB;Ljava/lang/String;)V

    throw v36
    :try_end_0
    .catch Landroid/taobao/windvane/connect/HttpConnector$RedirectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/taobao/windvane/connect/HttpConnector$HttpOverFlowException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_e
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    .end local v15    # "host":Ljava/lang/String;
    .end local v28    # "responeCode":I
    .end local v34    # "url":Ljava/net/URL;
    :catch_0
    move-exception v13

    .line 280
    .local v13, "e":Landroid/taobao/windvane/connect/HttpConnector$RedirectException;
    :goto_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/XB;->mListener:Lc8/WB;

    move-object/from16 v36, v0

    if-eqz v36, :cond_3

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/XB;->mListener:Lc8/WB;

    move-object/from16 v36, v0

    const/16 v37, -0x1

    const-string/jumbo v38, "too many redirect"

    invoke-virtual/range {v36 .. v38}, Lc8/WB;->onError(ILjava/lang/String;)V

    .line 283
    :cond_3
    throw v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 321
    .end local v13    # "e":Landroid/taobao/windvane/connect/HttpConnector$RedirectException;
    :catchall_0
    move-exception v36

    :goto_4
    if-eqz v11, :cond_4

    .line 323
    :try_start_2
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1b

    .line 328
    :cond_4
    :goto_5
    if-eqz v31, :cond_5

    .line 330
    :try_start_3
    invoke-virtual/range {v31 .. v31}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1c

    .line 335
    :cond_5
    :goto_6
    if-eqz v18, :cond_6

    .line 337
    :try_start_4
    invoke-virtual/range {v18 .. v18}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1d

    .line 342
    :cond_6
    :goto_7
    if-eqz v6, :cond_7

    .line 344
    :try_start_5
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1e

    .line 349
    :cond_7
    :goto_8
    if-eqz v7, :cond_8

    .line 350
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8
    throw v36

    .line 159
    .restart local v15    # "host":Ljava/lang/String;
    .restart local v26    # "proxy":Lorg/apache/http/HttpHost;
    .restart local v32    # "tunnelFactory":Lc8/nH;
    .restart local v34    # "url":Ljava/net/URL;
    :cond_9
    :try_start_6
    sget-object v36, Lc8/XB;->TAG:Ljava/lang/String;

    const-string/jumbo v37, "https:proxy: none"

    invoke-static/range {v36 .. v37}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/taobao/windvane/connect/HttpConnector$RedirectException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Landroid/taobao/windvane/connect/HttpConnector$HttpOverFlowException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_d
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_e
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 284
    .end local v15    # "host":Ljava/lang/String;
    .end local v26    # "proxy":Lorg/apache/http/HttpHost;
    .end local v32    # "tunnelFactory":Lc8/nH;
    .end local v34    # "url":Ljava/net/URL;
    :catch_1
    move-exception v13

    .line 285
    .local v13, "e":Landroid/taobao/windvane/connect/HttpConnector$HttpOverFlowException;
    :goto_9
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/XB;->mListener:Lc8/WB;

    move-object/from16 v36, v0

    if-eqz v36, :cond_a

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/XB;->mListener:Lc8/WB;

    move-object/from16 v36, v0

    const/16 v37, -0x2

    const-string/jumbo v38, "connect file is too large"

    invoke-virtual/range {v36 .. v38}, Lc8/WB;->onError(ILjava/lang/String;)V

    .line 288
    :cond_a
    throw v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 175
    .end local v13    # "e":Landroid/taobao/windvane/connect/HttpConnector$HttpOverFlowException;
    .restart local v15    # "host":Ljava/lang/String;
    .restart local v34    # "url":Ljava/net/URL;
    :cond_b
    :try_start_8
    invoke-virtual/range {v34 .. v34}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v36

    move-object/from16 v0, v36

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v7, v0
    :try_end_8
    .catch Landroid/taobao/windvane/connect/HttpConnector$RedirectException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Landroid/taobao/windvane/connect/HttpConnector$HttpOverFlowException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_d
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_e
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    .line 198
    :cond_c
    :try_start_9
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_9
    .catch Ljava/lang/AssertionError; {:try_start_9 .. :try_end_9} :catch_2
    .catch Landroid/taobao/windvane/connect/HttpConnector$RedirectException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Landroid/taobao/windvane/connect/HttpConnector$HttpOverFlowException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_d
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_e
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_2

    .line 199
    :catch_2
    move-exception v13

    .line 200
    .local v13, "e":Ljava/lang/AssertionError;
    :try_start_a
    new-instance v36, Landroid/taobao/windvane/connect/HttpConnector$NetWorkErrorException;

    invoke-virtual {v13}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Landroid/taobao/windvane/connect/HttpConnector$NetWorkErrorException;-><init>(Lc8/XB;Ljava/lang/String;)V

    throw v36
    :try_end_a
    .catch Landroid/taobao/windvane/connect/HttpConnector$RedirectException; {:try_start_a .. :try_end_a} :catch_0
    .catch Landroid/taobao/windvane/connect/HttpConnector$HttpOverFlowException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_d
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_e
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 289
    .end local v13    # "e":Ljava/lang/AssertionError;
    .end local v15    # "host":Ljava/lang/String;
    .end local v34    # "url":Ljava/net/URL;
    :catch_3
    move-exception v13

    .line 290
    .local v13, "e":Ljavax/net/ssl/SSLHandshakeException;
    :goto_a
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/XB;->mListener:Lc8/WB;

    move-object/from16 v36, v0

    if-eqz v36, :cond_d

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/XB;->mListener:Lc8/WB;

    move-object/from16 v36, v0

    const/16 v37, -0x3

    const-string/jumbo v38, "ssl handshake exception"

    invoke-virtual/range {v36 .. v38}, Lc8/WB;->onError(ILjava/lang/String;)V

    .line 293
    :cond_d
    invoke-virtual {v13}, Ljavax/net/ssl/SSLHandshakeException;->getCause()Ljava/lang/Throwable;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result-object v30

    .line 294
    .local v30, "t":Ljava/lang/Throwable;
    if-eqz v30, :cond_32

    .line 296
    :try_start_c
    throw v30
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 297
    :catch_4
    move-exception v14

    .line 298
    .local v14, "e1":Ljava/lang/Throwable;
    :try_start_d
    new-instance v36, Landroid/taobao/windvane/connect/HttpConnector$HttpsErrorException;

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Landroid/taobao/windvane/connect/HttpConnector$HttpsErrorException;-><init>(Lc8/XB;Ljava/lang/String;)V

    throw v36
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 214
    .end local v13    # "e":Ljavax/net/ssl/SSLHandshakeException;
    .end local v14    # "e1":Ljava/lang/Throwable;
    .end local v30    # "t":Ljava/lang/Throwable;
    .restart local v15    # "host":Ljava/lang/String;
    .restart local v28    # "responeCode":I
    .restart local v34    # "url":Ljava/net/URL;
    :cond_e
    :try_start_e
    move-object/from16 v0, p0

    iget v0, v0, Lc8/XB;->redirectTime:I

    move/from16 v36, v0

    add-int/lit8 v36, v36, 0x1

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lc8/XB;->redirectTime:I

    .line 215
    const-string/jumbo v36, "location"

    move-object/from16 v0, v36

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 216
    .local v27, "redirectUrl":Ljava/lang/String;
    if-eqz v27, :cond_1a

    .line 217
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v36

    const-string/jumbo v37, "http"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_f

    .line 218
    new-instance v36, Ljava/net/URL;

    const-string/jumbo v37, "http"

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v15, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v36 .. v36}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v27

    .line 220
    :cond_f
    const/16 v36, 0x131

    move/from16 v0, v28

    move/from16 v1, v36

    if-eq v0, v1, :cond_15

    .line 221
    invoke-static/range {v27 .. v27}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v36

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lc8/YB;->setUri(Landroid/net/Uri;)V

    .line 222
    invoke-direct/range {p0 .. p1}, Lc8/XB;->dataConnect(Lc8/YB;)Lc8/ZB;
    :try_end_e
    .catch Landroid/taobao/windvane/connect/HttpConnector$RedirectException; {:try_start_e .. :try_end_e} :catch_0
    .catch Landroid/taobao/windvane/connect/HttpConnector$HttpOverFlowException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e .. :try_end_e} :catch_d
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-result-object v29

    .line 321
    .end local v29    # "result":Lc8/ZB;
    if-eqz v11, :cond_10

    .line 323
    :try_start_f
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5

    .line 328
    :cond_10
    :goto_b
    if-eqz v31, :cond_11

    .line 330
    :try_start_10
    invoke-virtual/range {v31 .. v31}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_6

    .line 335
    :cond_11
    :goto_c
    if-eqz v18, :cond_12

    .line 337
    :try_start_11
    invoke-virtual/range {v18 .. v18}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_7

    .line 342
    :cond_12
    :goto_d
    if-eqz v6, :cond_13

    .line 344
    :try_start_12
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_8

    .line 349
    :cond_13
    :goto_e
    if-eqz v7, :cond_14

    .line 350
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 356
    .end local v15    # "host":Ljava/lang/String;
    .end local v27    # "redirectUrl":Ljava/lang/String;
    .end local v28    # "responeCode":I
    .end local v34    # "url":Ljava/net/URL;
    :cond_14
    :goto_f
    return-object v29

    .line 324
    .restart local v15    # "host":Ljava/lang/String;
    .restart local v27    # "redirectUrl":Ljava/lang/String;
    .restart local v28    # "responeCode":I
    .restart local v34    # "url":Ljava/net/URL;
    :catch_5
    move-exception v13

    .line 325
    .local v13, "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b

    .line 331
    .end local v13    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v13

    .line 332
    .restart local v13    # "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c

    .line 338
    .end local v13    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v13

    .line 339
    .restart local v13    # "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d

    .line 345
    .end local v13    # "e":Ljava/lang/Exception;
    :catch_8
    move-exception v13

    .line 346
    .restart local v13    # "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e

    .line 224
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v29    # "result":Lc8/ZB;
    :cond_15
    :try_start_13
    new-instance v36, Lc8/YB;

    move-object/from16 v0, v36

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lc8/YB;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lc8/XB;->dataConnect(Lc8/YB;)Lc8/ZB;
    :try_end_13
    .catch Landroid/taobao/windvane/connect/HttpConnector$RedirectException; {:try_start_13 .. :try_end_13} :catch_0
    .catch Landroid/taobao/windvane/connect/HttpConnector$HttpOverFlowException; {:try_start_13 .. :try_end_13} :catch_1
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_13 .. :try_end_13} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_13 .. :try_end_13} :catch_d
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_e
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    move-result-object v29

    .line 321
    .end local v29    # "result":Lc8/ZB;
    if-eqz v11, :cond_16

    .line 323
    :try_start_14
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_9

    .line 328
    :cond_16
    :goto_10
    if-eqz v31, :cond_17

    .line 330
    :try_start_15
    invoke-virtual/range {v31 .. v31}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_a

    .line 335
    :cond_17
    :goto_11
    if-eqz v18, :cond_18

    .line 337
    :try_start_16
    invoke-virtual/range {v18 .. v18}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_b

    .line 342
    :cond_18
    :goto_12
    if-eqz v6, :cond_19

    .line 344
    :try_start_17
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_c

    .line 349
    :cond_19
    :goto_13
    if-eqz v7, :cond_14

    .line 350
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_f

    .line 324
    :catch_9
    move-exception v13

    .line 325
    .restart local v13    # "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_10

    .line 331
    .end local v13    # "e":Ljava/lang/Exception;
    :catch_a
    move-exception v13

    .line 332
    .restart local v13    # "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11

    .line 338
    .end local v13    # "e":Ljava/lang/Exception;
    :catch_b
    move-exception v13

    .line 339
    .restart local v13    # "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12

    .line 345
    .end local v13    # "e":Ljava/lang/Exception;
    :catch_c
    move-exception v13

    .line 346
    .restart local v13    # "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13

    .line 230
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v27    # "redirectUrl":Ljava/lang/String;
    .restart local v29    # "result":Lc8/ZB;
    :cond_1a
    :try_start_18
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lc8/ZB;->setHttpCode(I)V

    .line 231
    const/16 v21, 0x1

    .line 233
    .local v21, "k":I
    :cond_1b
    :goto_14
    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v22

    .line 234
    .local v22, "key":Ljava/lang/String;
    if-eqz v22, :cond_24

    .line 236
    add-int/lit8 v21, v21, 0x1

    .line 237
    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 238
    .local v35, "value":Ljava/lang/String;
    move-object/from16 v0, v29

    move-object/from16 v1, v22

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lc8/ZB;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string/jumbo v36, "Set-Cookie"

    move-object/from16 v0, v36

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_1b

    .line 240
    invoke-virtual/range {v33 .. v33}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lc8/jB;->setCookie(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catch Landroid/taobao/windvane/connect/HttpConnector$RedirectException; {:try_start_18 .. :try_end_18} :catch_0
    .catch Landroid/taobao/windvane/connect/HttpConnector$HttpOverFlowException; {:try_start_18 .. :try_end_18} :catch_1
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_18 .. :try_end_18} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_18 .. :try_end_18} :catch_d
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_e
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    goto :goto_14

    .line 301
    .end local v15    # "host":Ljava/lang/String;
    .end local v21    # "k":I
    .end local v22    # "key":Ljava/lang/String;
    .end local v28    # "responeCode":I
    .end local v34    # "url":Ljava/net/URL;
    .end local v35    # "value":Ljava/lang/String;
    :catch_d
    move-exception v13

    .line 302
    .local v13, "e":Ljava/lang/OutOfMemoryError;
    :goto_15
    :try_start_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/XB;->mListener:Lc8/WB;

    move-object/from16 v36, v0

    if-eqz v36, :cond_1c

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/XB;->mListener:Lc8/WB;

    move-object/from16 v36, v0

    const/16 v37, -0x5

    const-string/jumbo v38, "out of memory error"

    invoke-virtual/range {v36 .. v38}, Lc8/WB;->onError(ILjava/lang/String;)V

    .line 305
    :cond_1c
    invoke-virtual {v13}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 306
    if-eqz v6, :cond_1d

    .line 307
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->reset()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    .line 321
    :cond_1d
    if-eqz v11, :cond_1e

    .line 323
    :try_start_1a
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_17

    .line 328
    .end local v13    # "e":Ljava/lang/OutOfMemoryError;
    :cond_1e
    :goto_16
    if-eqz v31, :cond_1f

    .line 330
    :try_start_1b
    invoke-virtual/range {v31 .. v31}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_18

    .line 335
    :cond_1f
    :goto_17
    if-eqz v18, :cond_20

    .line 337
    :try_start_1c
    invoke-virtual/range {v18 .. v18}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_19

    .line 342
    :cond_20
    :goto_18
    if-eqz v6, :cond_21

    .line 344
    :try_start_1d
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_1a

    .line 349
    :cond_21
    :goto_19
    if-eqz v7, :cond_22

    .line 350
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 353
    :cond_22
    :goto_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/XB;->mListener:Lc8/WB;

    move-object/from16 v36, v0

    if-eqz v36, :cond_23

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/XB;->mListener:Lc8/WB;

    move-object/from16 v36, v0

    new-instance v37, Lc8/ZB;

    invoke-direct/range {v37 .. v37}, Lc8/ZB;-><init>()V

    const/16 v38, 0x0

    invoke-virtual/range {v36 .. v38}, Lc8/WB;->onFinish(Ljava/lang/Object;I)V

    .line 356
    :cond_23
    new-instance v29, Lc8/ZB;

    .end local v29    # "result":Lc8/ZB;
    invoke-direct/range {v29 .. v29}, Lc8/ZB;-><init>()V

    goto/16 :goto_f

    .line 245
    .restart local v15    # "host":Ljava/lang/String;
    .restart local v21    # "k":I
    .restart local v22    # "key":Ljava/lang/String;
    .restart local v28    # "responeCode":I
    .restart local v29    # "result":Lc8/ZB;
    .restart local v34    # "url":Ljava/net/URL;
    :cond_24
    const/16 v36, 0xc8

    move/from16 v0, v28

    move/from16 v1, v36

    if-lt v0, v1, :cond_2c

    const/16 v36, 0x12c

    move/from16 v0, v28

    move/from16 v1, v36

    if-ge v0, v1, :cond_2c

    .line 247
    :try_start_1e
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v9

    .line 248
    .local v9, "contentLen":I
    const/high16 v36, 0x500000

    move/from16 v0, v36

    if-le v9, v0, :cond_27

    .line 249
    new-instance v36, Landroid/taobao/windvane/connect/HttpConnector$HttpOverFlowException;

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "The Content-Length is too large:"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Landroid/taobao/windvane/connect/HttpConnector$HttpOverFlowException;-><init>(Lc8/XB;Ljava/lang/String;)V

    throw v36
    :try_end_1e
    .catch Landroid/taobao/windvane/connect/HttpConnector$RedirectException; {:try_start_1e .. :try_end_1e} :catch_0
    .catch Landroid/taobao/windvane/connect/HttpConnector$HttpOverFlowException; {:try_start_1e .. :try_end_1e} :catch_1
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_1e .. :try_end_1e} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1e .. :try_end_1e} :catch_d
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    .line 309
    .end local v9    # "contentLen":I
    .end local v15    # "host":Ljava/lang/String;
    .end local v21    # "k":I
    .end local v22    # "key":Ljava/lang/String;
    .end local v28    # "responeCode":I
    .end local v34    # "url":Ljava/net/URL;
    :catch_e
    move-exception v13

    .line 310
    .local v13, "e":Ljava/lang/Throwable;
    :goto_1b
    :try_start_1f
    invoke-virtual {v13}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v23

    .line 311
    .local v23, "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/XB;->mListener:Lc8/WB;

    move-object/from16 v36, v0

    if-eqz v36, :cond_25

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/XB;->mListener:Lc8/WB;

    move-object/from16 v36, v0

    const/16 v37, -0x4

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "network exception: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v36 .. v38}, Lc8/WB;->onError(ILjava/lang/String;)V

    .line 314
    :cond_25
    invoke-virtual {v13}, Ljava/lang/Throwable;->printStackTrace()V

    .line 315
    if-eqz v6, :cond_26

    .line 316
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 318
    :cond_26
    new-instance v36, Landroid/taobao/windvane/connect/HttpConnector$NetWorkErrorException;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/taobao/windvane/connect/HttpConnector$NetWorkErrorException;-><init>(Lc8/XB;Ljava/lang/String;)V

    throw v36
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    .line 250
    .end local v13    # "e":Ljava/lang/Throwable;
    .end local v23    # "msg":Ljava/lang/String;
    .restart local v9    # "contentLen":I
    .restart local v15    # "host":Ljava/lang/String;
    .restart local v21    # "k":I
    .restart local v22    # "key":Ljava/lang/String;
    .restart local v28    # "responeCode":I
    .restart local v34    # "url":Ljava/net/URL;
    :cond_27
    :try_start_20
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v31

    .line 251
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v8

    .line 252
    .local v8, "contentEncoding":Ljava/lang/String;
    if-eqz v8, :cond_2a

    const-string/jumbo v36, "gzip"

    move-object/from16 v0, v36

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_2a

    .line 253
    new-instance v19, Ljava/util/zip/GZIPInputStream;

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_20
    .catch Landroid/taobao/windvane/connect/HttpConnector$RedirectException; {:try_start_20 .. :try_end_20} :catch_0
    .catch Landroid/taobao/windvane/connect/HttpConnector$HttpOverFlowException; {:try_start_20 .. :try_end_20} :catch_1
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_20 .. :try_end_20} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_20 .. :try_end_20} :catch_d
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_e
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    .line 254
    .end local v18    # "is":Ljava/util/zip/GZIPInputStream;
    .local v19, "is":Ljava/util/zip/GZIPInputStream;
    :try_start_21
    new-instance v12, Ljava/io/DataInputStream;

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_21
    .catch Landroid/taobao/windvane/connect/HttpConnector$RedirectException; {:try_start_21 .. :try_end_21} :catch_23
    .catch Landroid/taobao/windvane/connect/HttpConnector$HttpOverFlowException; {:try_start_21 .. :try_end_21} :catch_22
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_21 .. :try_end_21} :catch_21
    .catch Ljava/lang/OutOfMemoryError; {:try_start_21 .. :try_end_21} :catch_20
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_1f
    .catchall {:try_start_21 .. :try_end_21} :catchall_1

    .end local v11    # "dis":Ljava/io/DataInputStream;
    .local v12, "dis":Ljava/io/DataInputStream;
    move-object v11, v12

    .end local v12    # "dis":Ljava/io/DataInputStream;
    .restart local v11    # "dis":Ljava/io/DataInputStream;
    move-object/from16 v18, v19

    .line 259
    .end local v19    # "is":Ljava/util/zip/GZIPInputStream;
    .restart local v18    # "is":Ljava/util/zip/GZIPInputStream;
    :goto_1c
    const/4 v10, 0x0

    .line 261
    .local v10, "curLen":I
    const/16 v36, 0x800

    :try_start_22
    move/from16 v0, v36

    new-array v5, v0, [B

    .line 262
    .local v5, "b":[B
    :cond_28
    :goto_1d
    const/16 v36, 0x0

    const/16 v37, 0x800

    move/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v11, v5, v0, v1}, Ljava/io/DataInputStream;->read([BII)I

    move-result v17

    .local v17, "i":I
    const/16 v36, -0x1

    move/from16 v0, v17

    move/from16 v1, v36

    if-eq v0, v1, :cond_2b

    .line 263
    const/16 v36, 0x0

    move/from16 v0, v36

    move/from16 v1, v17

    invoke-virtual {v6, v5, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/XB;->mListener:Lc8/WB;

    move-object/from16 v36, v0

    if-eqz v36, :cond_28

    .line 265
    add-int v10, v10, v17

    .line 266
    if-le v10, v9, :cond_29

    .line 267
    move v9, v10

    .line 269
    :cond_29
    int-to-float v0, v10

    move/from16 v36, v0

    int-to-float v0, v9

    move/from16 v37, v0

    div-float v36, v36, v37

    const/high16 v37, 0x42c80000    # 100.0f

    mul-float v36, v36, v37

    move/from16 v0, v36

    float-to-int v0, v0

    move/from16 v25, v0

    .line 270
    .local v25, "progress":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/XB;->mListener:Lc8/WB;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lc8/WB;->onProcess(I)V

    goto :goto_1d

    .line 256
    .end local v5    # "b":[B
    .end local v10    # "curLen":I
    .end local v17    # "i":I
    .end local v25    # "progress":I
    :cond_2a
    new-instance v12, Ljava/io/DataInputStream;

    move-object/from16 v0, v31

    invoke-direct {v12, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v11    # "dis":Ljava/io/DataInputStream;
    .restart local v12    # "dis":Ljava/io/DataInputStream;
    move-object v11, v12

    .end local v12    # "dis":Ljava/io/DataInputStream;
    .restart local v11    # "dis":Ljava/io/DataInputStream;
    goto :goto_1c

    .line 273
    .restart local v5    # "b":[B
    .restart local v10    # "curLen":I
    .restart local v17    # "i":I
    :cond_2b
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v36

    move-object/from16 v0, v29

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lc8/ZB;->setData([B)V

    .line 275
    .end local v5    # "b":[B
    .end local v8    # "contentEncoding":Ljava/lang/String;
    .end local v9    # "contentLen":I
    .end local v10    # "curLen":I
    .end local v17    # "i":I
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/XB;->mListener:Lc8/WB;

    move-object/from16 v36, v0

    if-eqz v36, :cond_2d

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/XB;->mListener:Lc8/WB;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v29

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lc8/WB;->onFinish(Ljava/lang/Object;I)V
    :try_end_22
    .catch Landroid/taobao/windvane/connect/HttpConnector$RedirectException; {:try_start_22 .. :try_end_22} :catch_0
    .catch Landroid/taobao/windvane/connect/HttpConnector$HttpOverFlowException; {:try_start_22 .. :try_end_22} :catch_1
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_22 .. :try_end_22} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_22 .. :try_end_22} :catch_d
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_e
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    .line 321
    :cond_2d
    if-eqz v11, :cond_2e

    .line 323
    :try_start_23
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_f

    .line 328
    :cond_2e
    :goto_1e
    if-eqz v31, :cond_2f

    .line 330
    :try_start_24
    invoke-virtual/range {v31 .. v31}, Ljava/io/InputStream;->close()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_10

    .line 335
    :cond_2f
    :goto_1f
    if-eqz v18, :cond_30

    .line 337
    :try_start_25
    invoke-virtual/range {v18 .. v18}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_11

    .line 342
    :cond_30
    :goto_20
    if-eqz v6, :cond_31

    .line 344
    :try_start_26
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_12

    .line 349
    :cond_31
    :goto_21
    if-eqz v7, :cond_14

    .line 350
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_f

    .line 324
    :catch_f
    move-exception v13

    .line 325
    .local v13, "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1e

    .line 331
    .end local v13    # "e":Ljava/lang/Exception;
    :catch_10
    move-exception v13

    .line 332
    .restart local v13    # "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1f

    .line 338
    .end local v13    # "e":Ljava/lang/Exception;
    :catch_11
    move-exception v13

    .line 339
    .restart local v13    # "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_20

    .line 345
    .end local v13    # "e":Ljava/lang/Exception;
    :catch_12
    move-exception v13

    .line 346
    .restart local v13    # "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_21

    .line 321
    .end local v15    # "host":Ljava/lang/String;
    .end local v21    # "k":I
    .end local v22    # "key":Ljava/lang/String;
    .end local v28    # "responeCode":I
    .end local v34    # "url":Ljava/net/URL;
    .local v13, "e":Ljavax/net/ssl/SSLHandshakeException;
    .restart local v30    # "t":Ljava/lang/Throwable;
    :cond_32
    if-eqz v11, :cond_33

    .line 323
    :try_start_27
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_13

    .line 328
    .end local v13    # "e":Ljavax/net/ssl/SSLHandshakeException;
    :cond_33
    :goto_22
    if-eqz v31, :cond_34

    .line 330
    :try_start_28
    invoke-virtual/range {v31 .. v31}, Ljava/io/InputStream;->close()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_14

    .line 335
    :cond_34
    :goto_23
    if-eqz v18, :cond_35

    .line 337
    :try_start_29
    invoke-virtual/range {v18 .. v18}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_15

    .line 342
    :cond_35
    :goto_24
    if-eqz v6, :cond_36

    .line 344
    :try_start_2a
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_16

    .line 349
    :cond_36
    :goto_25
    if-eqz v7, :cond_22

    .line 350
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_1a

    .line 324
    .restart local v13    # "e":Ljavax/net/ssl/SSLHandshakeException;
    :catch_13
    move-exception v13

    .line 325
    .local v13, "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_22

    .line 331
    .end local v13    # "e":Ljava/lang/Exception;
    :catch_14
    move-exception v13

    .line 332
    .restart local v13    # "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_23

    .line 338
    .end local v13    # "e":Ljava/lang/Exception;
    :catch_15
    move-exception v13

    .line 339
    .restart local v13    # "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_24

    .line 345
    .end local v13    # "e":Ljava/lang/Exception;
    :catch_16
    move-exception v13

    .line 346
    .restart local v13    # "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_25

    .line 324
    .end local v30    # "t":Ljava/lang/Throwable;
    .local v13, "e":Ljava/lang/OutOfMemoryError;
    :catch_17
    move-exception v13

    .line 325
    .local v13, "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_16

    .line 331
    .end local v13    # "e":Ljava/lang/Exception;
    :catch_18
    move-exception v13

    .line 332
    .restart local v13    # "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_17

    .line 338
    .end local v13    # "e":Ljava/lang/Exception;
    :catch_19
    move-exception v13

    .line 339
    .restart local v13    # "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_18

    .line 345
    .end local v13    # "e":Ljava/lang/Exception;
    :catch_1a
    move-exception v13

    .line 346
    .restart local v13    # "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_19

    .line 324
    .end local v13    # "e":Ljava/lang/Exception;
    :catch_1b
    move-exception v13

    .line 325
    .restart local v13    # "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    .line 331
    .end local v13    # "e":Ljava/lang/Exception;
    :catch_1c
    move-exception v13

    .line 332
    .restart local v13    # "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6

    .line 338
    .end local v13    # "e":Ljava/lang/Exception;
    :catch_1d
    move-exception v13

    .line 339
    .restart local v13    # "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7

    .line 345
    .end local v13    # "e":Ljava/lang/Exception;
    :catch_1e
    move-exception v13

    .line 346
    .restart local v13    # "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_8

    .line 321
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v18    # "is":Ljava/util/zip/GZIPInputStream;
    .restart local v8    # "contentEncoding":Ljava/lang/String;
    .restart local v9    # "contentLen":I
    .restart local v15    # "host":Ljava/lang/String;
    .restart local v19    # "is":Ljava/util/zip/GZIPInputStream;
    .restart local v21    # "k":I
    .restart local v22    # "key":Ljava/lang/String;
    .restart local v28    # "responeCode":I
    .restart local v34    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v36

    move-object/from16 v18, v19

    .end local v19    # "is":Ljava/util/zip/GZIPInputStream;
    .restart local v18    # "is":Ljava/util/zip/GZIPInputStream;
    goto/16 :goto_4

    .line 309
    .end local v18    # "is":Ljava/util/zip/GZIPInputStream;
    .restart local v19    # "is":Ljava/util/zip/GZIPInputStream;
    :catch_1f
    move-exception v13

    move-object/from16 v18, v19

    .end local v19    # "is":Ljava/util/zip/GZIPInputStream;
    .restart local v18    # "is":Ljava/util/zip/GZIPInputStream;
    goto/16 :goto_1b

    .line 301
    .end local v18    # "is":Ljava/util/zip/GZIPInputStream;
    .restart local v19    # "is":Ljava/util/zip/GZIPInputStream;
    :catch_20
    move-exception v13

    move-object/from16 v18, v19

    .end local v19    # "is":Ljava/util/zip/GZIPInputStream;
    .restart local v18    # "is":Ljava/util/zip/GZIPInputStream;
    goto/16 :goto_15

    .line 289
    .end local v18    # "is":Ljava/util/zip/GZIPInputStream;
    .restart local v19    # "is":Ljava/util/zip/GZIPInputStream;
    :catch_21
    move-exception v13

    move-object/from16 v18, v19

    .end local v19    # "is":Ljava/util/zip/GZIPInputStream;
    .restart local v18    # "is":Ljava/util/zip/GZIPInputStream;
    goto/16 :goto_a

    .line 284
    .end local v18    # "is":Ljava/util/zip/GZIPInputStream;
    .restart local v19    # "is":Ljava/util/zip/GZIPInputStream;
    :catch_22
    move-exception v13

    move-object/from16 v18, v19

    .end local v19    # "is":Ljava/util/zip/GZIPInputStream;
    .restart local v18    # "is":Ljava/util/zip/GZIPInputStream;
    goto/16 :goto_9

    .line 279
    .end local v18    # "is":Ljava/util/zip/GZIPInputStream;
    .restart local v19    # "is":Ljava/util/zip/GZIPInputStream;
    :catch_23
    move-exception v13

    move-object/from16 v18, v19

    .end local v19    # "is":Ljava/util/zip/GZIPInputStream;
    .restart local v18    # "is":Ljava/util/zip/GZIPInputStream;
    goto/16 :goto_3
.end method

.method private setConnectProp(Ljava/net/HttpURLConnection;Lc8/YB;)V
    .locals 8
    .param p1, "conn"    # Ljava/net/HttpURLConnection;
    .param p2, "request"    # Lc8/YB;

    .prologue
    const/4 v7, 0x0

    .line 367
    invoke-virtual {p2}, Lc8/YB;->getRetryTime()I

    move-result v4

    .line 368
    .local v4, "retryTime":I
    invoke-virtual {p2}, Lc8/YB;->getConnectTimeout()I

    move-result v5

    add-int/lit8 v6, v4, 0x1

    mul-int/2addr v5, v6

    invoke-virtual {p1, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 369
    invoke-virtual {p2}, Lc8/YB;->getReadTimeout()I

    move-result v5

    add-int/lit8 v6, v4, 0x1

    mul-int/2addr v5, v6

    invoke-virtual {p1, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 371
    invoke-virtual {p1, v7}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 373
    const-string/jumbo v5, "Host"

    invoke-virtual {p2}, Lc8/YB;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const-string/jumbo v5, "Connection"

    const-string/jumbo v6, "close"

    invoke-virtual {p1, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const-string/jumbo v5, "Accept-Encoding"

    const-string/jumbo v6, "gzip"

    invoke-virtual {p1, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lc8/jB;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 377
    .local v0, "cookieStr":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 378
    const-string/jumbo v5, "Cookie"

    invoke-virtual {p1, v5, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    :cond_0
    invoke-virtual {p2}, Lc8/YB;->getHeaders()Ljava/util/Map;

    move-result-object v2

    .line 381
    .local v2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v2, :cond_1

    .line 382
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 383
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 387
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {p1, v7}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 388
    return-void
.end method


# virtual methods
.method public syncConnect(Lc8/YB;)Lc8/ZB;
    .locals 1
    .param p1, "request"    # Lc8/YB;

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lc8/XB;->syncConnect(Lc8/YB;Lc8/WB;)Lc8/ZB;

    move-result-object v0

    return-object v0
.end method

.method public syncConnect(Lc8/YB;Lc8/WB;)Lc8/ZB;
    .locals 8
    .param p1, "request"    # Lc8/YB;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/YB;",
            "Lc8/WB",
            "<",
            "Lc8/ZB;",
            ">;)",
            "Lc8/ZB;"
        }
    .end annotation

    .prologue
    .line 87
    .local p2, "listener":Lc8/WB;, "Landroid/taobao/windvane/connect/HttpConnectListener<Landroid/taobao/windvane/connect/HttpResponse;>;"
    if-nez p1, :cond_0

    .line 88
    new-instance v5, Ljava/lang/NullPointerException;

    const-string/jumbo v6, "Http connect error, request is null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 90
    :cond_0
    const/4 v1, 0x0

    .line 91
    .local v1, "errorMsg":Ljava/lang/String;
    iput-object p2, p0, Lc8/XB;->mListener:Lc8/WB;

    .line 92
    const/4 v5, 0x0

    iput v5, p0, Lc8/XB;->redirectTime:I

    .line 93
    invoke-virtual {p1}, Lc8/YB;->getRetryTime()I

    move-result v4

    .line 94
    .local v4, "retryTime":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 97
    :try_start_0
    invoke-direct {p0, p1}, Lc8/XB;->dataConnect(Lc8/YB;)Lc8/ZB;
    :try_end_0
    .catch Landroid/taobao/windvane/connect/HttpConnector$NetWorkErrorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/taobao/windvane/connect/HttpConnector$HttpOverFlowException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/taobao/windvane/connect/HttpConnector$RedirectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/taobao/windvane/connect/HttpConnector$HttpsErrorException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v3

    .line 127
    :goto_1
    return-object v3

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Landroid/taobao/windvane/connect/HttpConnector$NetWorkErrorException;
    invoke-virtual {v0}, Landroid/taobao/windvane/connect/HttpConnector$NetWorkErrorException;->printStackTrace()V

    .line 100
    invoke-virtual {v0}, Landroid/taobao/windvane/connect/HttpConnector$NetWorkErrorException;->toString()Ljava/lang/String;

    move-result-object v1

    .line 120
    add-int/lit8 v5, v2, 0x1

    shl-int/lit8 v5, v5, 0x1

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v6, v5

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_4

    .line 94
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 101
    .end local v0    # "e":Landroid/taobao/windvane/connect/HttpConnector$NetWorkErrorException;
    :catch_1
    move-exception v0

    .line 102
    .local v0, "e":Landroid/taobao/windvane/connect/HttpConnector$HttpOverFlowException;
    invoke-virtual {v0}, Landroid/taobao/windvane/connect/HttpConnector$HttpOverFlowException;->printStackTrace()V

    .line 103
    invoke-virtual {v0}, Landroid/taobao/windvane/connect/HttpConnector$HttpOverFlowException;->toString()Ljava/lang/String;

    move-result-object v1

    .line 125
    .end local v0    # "e":Landroid/taobao/windvane/connect/HttpConnector$HttpOverFlowException;
    :cond_1
    :goto_3
    new-instance v3, Lc8/ZB;

    invoke-direct {v3}, Lc8/ZB;-><init>()V

    .line 126
    .local v3, "result":Lc8/ZB;
    invoke-virtual {v3, v1}, Lc8/ZB;->setErrorMsg(Ljava/lang/String;)V

    goto :goto_1

    .line 105
    .end local v3    # "result":Lc8/ZB;
    :catch_2
    move-exception v0

    .line 106
    .local v0, "e":Landroid/taobao/windvane/connect/HttpConnector$RedirectException;
    invoke-virtual {v0}, Landroid/taobao/windvane/connect/HttpConnector$RedirectException;->printStackTrace()V

    .line 107
    invoke-virtual {v0}, Landroid/taobao/windvane/connect/HttpConnector$RedirectException;->toString()Ljava/lang/String;

    move-result-object v1

    .line 108
    goto :goto_3

    .line 109
    .end local v0    # "e":Landroid/taobao/windvane/connect/HttpConnector$RedirectException;
    :catch_3
    move-exception v0

    .line 110
    .local v0, "e":Landroid/taobao/windvane/connect/HttpConnector$HttpsErrorException;
    invoke-virtual {v0}, Landroid/taobao/windvane/connect/HttpConnector$HttpsErrorException;->printStackTrace()V

    .line 111
    invoke-virtual {v0}, Landroid/taobao/windvane/connect/HttpConnector$HttpsErrorException;->toString()Ljava/lang/String;

    move-result-object v1

    .line 112
    goto :goto_3

    .line 122
    .local v0, "e":Landroid/taobao/windvane/connect/HttpConnector$NetWorkErrorException;
    :catch_4
    move-exception v5

    sget-object v5, Lc8/XB;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "HttpConnector retry Sleep has been interrupted, go ahead"

    invoke-static {v5, v6}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public syncConnect(Ljava/lang/String;)Lc8/ZB;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 71
    new-instance v0, Lc8/YB;

    invoke-direct {v0, p1}, Lc8/YB;-><init>(Ljava/lang/String;)V

    .line 72
    .local v0, "request":Lc8/YB;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lc8/XB;->syncConnect(Lc8/YB;Lc8/WB;)Lc8/ZB;

    move-result-object v1

    return-object v1
.end method
