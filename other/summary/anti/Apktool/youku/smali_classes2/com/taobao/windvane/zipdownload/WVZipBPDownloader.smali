.class public Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;
.super Landroid/os/AsyncTask;
.source "WVZipBPDownloader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WVZipBPDownloader"


# instance fields
.field private appinfo:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

.field private listener:Lcom/taobao/windvane/zipdownload/DownLoadListener;

.field private obj:Ljava/lang/Object;

.field private token:I

.field private zipUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/taobao/windvane/zipdownload/DownLoadListener;ILjava/lang/Object;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/taobao/windvane/zipdownload/DownLoadListener;
    .param p3, "token"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 54
    iput-object p2, p0, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;->listener:Lcom/taobao/windvane/zipdownload/DownLoadListener;

    .line 55
    iput p3, p0, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;->token:I

    .line 56
    iput-object p1, p0, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;->zipUrl:Ljava/lang/String;

    .line 57
    iput-object p4, p0, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;->obj:Ljava/lang/Object;

    .line 58
    instance-of v0, p4, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    if-eqz v0, :cond_0

    .line 59
    check-cast p4, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    .end local p4    # "obj":Ljava/lang/Object;
    iput-object p4, p0, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;->appinfo:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    .line 60
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;)Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;->appinfo:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;->zipUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;)I
    .locals 1
    .param p0, "x0"    # Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;

    .prologue
    .line 42
    iget v0, p0, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;->token:I

    return v0
.end method

.method static synthetic access$300(Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;)Lcom/taobao/windvane/zipdownload/DownLoadListener;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;->listener:Lcom/taobao/windvane/zipdownload/DownLoadListener;

    return-object v0
.end method

.method private doDefaultTask()Z
    .locals 38

    .prologue
    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 181
    .local v14, "begin":J
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 182
    const-string/jumbo v4, "WVZipBPDownloader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "appinfoName=\u3010"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;->appinfo:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    iget-object v7, v7, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "\u3011 url="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;->zipUrl:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "\u7ebf\u7a0bID="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_0
    const/16 v30, 0x1

    .line 186
    .local v30, "isBPDownLoad":Z
    const/16 v19, 0x0

    .line 187
    .local v19, "connection":Ljava/net/HttpURLConnection;
    const/16 v34, 0x0

    .line 188
    .local v34, "randomAccessFile":Ljava/io/RandomAccessFile;
    const/4 v13, 0x0

    .line 191
    .local v13, "bs":Ljava/io/OutputStream;
    const/16 v28, 0x0

    .line 192
    .local v28, "httpcode":I
    const/16 v24, 0x0

    .line 195
    .local v24, "dis":Ljava/io/DataInputStream;
    :try_start_0
    sget-object v4, Lc8/xB;->context:Landroid/app/Application;

    invoke-virtual {v4}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    .line 196
    .local v18, "cachePath":Ljava/lang/String;
    new-instance v21, Ljava/io/File;

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 197
    .local v21, "dir":Ljava/io/File;
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 198
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->mkdir()Z

    .line 199
    const-string/jumbo v4, "WVZipBPDownloader"

    const-string/jumbo v5, "TMP \u76ee\u5f55\u4e0d\u5b58\u5728\uff0c\u65b0\u5efa\u4e00\u4e2atmp\u76ee\u5f55"

    invoke-static {v4, v5}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_1
    new-instance v37, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;->zipUrl:Ljava/lang/String;

    move-object/from16 v0, v37

    invoke-direct {v0, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 203
    .local v37, "url":Ljava/net/URL;
    invoke-virtual/range {v37 .. v37}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object/from16 v19, v0

    .line 204
    const/16 v4, 0x1388

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 205
    const-string/jumbo v4, "GET"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 208
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;->zipUrl:Ljava/lang/String;

    invoke-static {v5}, Lc8/NH;->md5ToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 209
    .local v6, "fileName":Ljava/lang/String;
    new-instance v27, Ljava/io/File;

    move-object/from16 v0, v27

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 210
    .local v27, "file":Ljava/io/File;
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    .line 211
    invoke-virtual/range {v19 .. v19}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v22, v0

    .line 212
    .local v22, "contentLength":J
    const-wide/32 v4, 0x7a120

    cmp-long v4, v22, v4

    if-gez v4, :cond_2

    .line 213
    const/16 v30, 0x0

    .line 214
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 215
    const-string/jumbo v4, "WVZipBPDownloader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isBPDownLoad = false  zipUrl=\u3010"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;->zipUrl:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "\u3011"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :cond_2
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->createNewFile()Z

    .line 221
    .end local v22    # "contentLength":J
    :cond_3
    if-eqz v30, :cond_b

    .line 222
    new-instance v35, Ljava/io/RandomAccessFile;

    const-string/jumbo v4, "rwd"

    move-object/from16 v0, v35

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    .end local v34    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .local v35, "randomAccessFile":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual/range {v35 .. v35}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v32

    .line 224
    .local v32, "locFileSize":J
    const-wide/16 v4, 0x0

    cmp-long v4, v32, v4

    if-lez v4, :cond_4

    .line 225
    const-wide/16 v4, 0x1

    sub-long v32, v32, v4

    .line 227
    :cond_4
    move-object/from16 v0, v35

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 228
    const-wide/16 v4, 0x0

    cmp-long v4, v32, v4

    if-lez v4, :cond_5

    .line 229
    const-string/jumbo v4, "Range"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "bytes="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v32

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "-"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-virtual/range {v19 .. v19}, Ljava/net/HttpURLConnection;->getContentLength()I

    .line 234
    :cond_5
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 235
    const-string/jumbo v4, "WVZipBPDownloader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isBPDownLoad = true  zipUrl=\u3010"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;->zipUrl:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "\u3011"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v34, v35

    .line 241
    .end local v32    # "locFileSize":J
    .end local v35    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v34    # "randomAccessFile":Ljava/io/RandomAccessFile;
    :goto_0
    :try_start_2
    invoke-virtual/range {v19 .. v19}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v36

    .line 242
    .local v36, "tmp":Ljava/io/InputStream;
    invoke-virtual/range {v19 .. v19}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v20

    .line 243
    .local v20, "contentEncoding":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v28

    .line 244
    if-eqz v20, :cond_c

    const-string/jumbo v4, "gzip"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 245
    new-instance v29, Ljava/util/zip/GZIPInputStream;

    move-object/from16 v0, v29

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 246
    .local v29, "is":Ljava/util/zip/GZIPInputStream;
    new-instance v25, Ljava/io/DataInputStream;

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v24    # "dis":Ljava/io/DataInputStream;
    .local v25, "dis":Ljava/io/DataInputStream;
    move-object/from16 v24, v25

    .line 251
    .end local v25    # "dis":Ljava/io/DataInputStream;
    .end local v29    # "is":Ljava/util/zip/GZIPInputStream;
    .restart local v24    # "dis":Ljava/io/DataInputStream;
    :goto_1
    invoke-static {}, Lc8/vH;->getInstance()Lc8/vH;

    move-result-object v4

    invoke-virtual {v4}, Lc8/vH;->getTempBuffer()Lc8/uH;

    move-result-object v17

    .line 254
    .local v17, "bufferwrapper":Lc8/uH;
    :goto_2
    if-eqz v24, :cond_12

    move-object/from16 v0, v17

    iget-object v4, v0, Lc8/uH;->tempBuffer:[B

    const/4 v5, 0x0

    sget v7, Lc8/vH;->bufferSize:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5, v7}, Ljava/io/DataInputStream;->read([BII)I

    move-result v31

    .local v31, "length":I
    const/4 v4, -0x1

    move/from16 v0, v31

    if-eq v0, v4, :cond_12

    .line 255
    if-eqz v30, :cond_d

    .line 256
    move-object/from16 v0, v17

    iget-object v4, v0, Lc8/uH;->tempBuffer:[B

    const/4 v5, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v31

    invoke-virtual {v0, v4, v5, v1}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 275
    .end local v6    # "fileName":Ljava/lang/String;
    .end local v17    # "bufferwrapper":Lc8/uH;
    .end local v18    # "cachePath":Ljava/lang/String;
    .end local v20    # "contentEncoding":Ljava/lang/String;
    .end local v21    # "dir":Ljava/io/File;
    .end local v27    # "file":Ljava/io/File;
    .end local v31    # "length":I
    .end local v36    # "tmp":Ljava/io/InputStream;
    .end local v37    # "url":Ljava/net/URL;
    :catch_0
    move-exception v26

    .line 276
    .local v26, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;->listener:Lcom/taobao/windvane/zipdownload/DownLoadListener;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;->zipUrl:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;->token:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;->obj:Ljava/lang/Object;

    invoke-interface/range {v7 .. v12}, Lcom/taobao/windvane/zipdownload/DownLoadListener;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    .line 277
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;->appinfo:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    sget v5, Lc8/UG;->ERR_DOWN_ZIP:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "httpcode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " ErrorMsg = ErrorMsg : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v7}, Lc8/JG;->error(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;ILjava/lang/String;)V

    .line 278
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 279
    const-string/jumbo v4, "WVZipBPDownloader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "WVZipBPDownloader  Exception : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 283
    :cond_6
    if-eqz v34, :cond_7

    .line 284
    :try_start_4
    invoke-virtual/range {v34 .. v34}, Ljava/io/RandomAccessFile;->close()V

    .line 286
    :cond_7
    if-eqz v24, :cond_8

    .line 287
    invoke-virtual/range {v24 .. v24}, Ljava/io/DataInputStream;->close()V

    .line 289
    :cond_8
    if-eqz v13, :cond_9

    .line 290
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 298
    :cond_9
    :goto_4
    if-eqz v19, :cond_a

    .line 299
    invoke-virtual/range {v19 .. v19}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 302
    :cond_a
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;->listener:Lcom/taobao/windvane/zipdownload/DownLoadListener;

    .line 304
    .end local v26    # "e":Ljava/lang/Exception;
    :goto_5
    const/4 v4, 0x1

    return v4

    .line 238
    .restart local v6    # "fileName":Ljava/lang/String;
    .restart local v18    # "cachePath":Ljava/lang/String;
    .restart local v21    # "dir":Ljava/io/File;
    .restart local v27    # "file":Ljava/io/File;
    .restart local v37    # "url":Ljava/net/URL;
    :cond_b
    :try_start_5
    new-instance v16, Ljava/io/FileOutputStream;

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .end local v13    # "bs":Ljava/io/OutputStream;
    .local v16, "bs":Ljava/io/OutputStream;
    move-object/from16 v13, v16

    .end local v16    # "bs":Ljava/io/OutputStream;
    .restart local v13    # "bs":Ljava/io/OutputStream;
    goto/16 :goto_0

    .line 248
    .restart local v20    # "contentEncoding":Ljava/lang/String;
    .restart local v36    # "tmp":Ljava/io/InputStream;
    :cond_c
    new-instance v25, Ljava/io/DataInputStream;

    move-object/from16 v0, v25

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v24    # "dis":Ljava/io/DataInputStream;
    .restart local v25    # "dis":Ljava/io/DataInputStream;
    move-object/from16 v24, v25

    .end local v25    # "dis":Ljava/io/DataInputStream;
    .restart local v24    # "dis":Ljava/io/DataInputStream;
    goto/16 :goto_1

    .line 258
    .restart local v17    # "bufferwrapper":Lc8/uH;
    .restart local v31    # "length":I
    :cond_d
    move-object/from16 v0, v17

    iget-object v4, v0, Lc8/uH;->tempBuffer:[B

    const/4 v5, 0x0

    move/from16 v0, v31

    invoke-virtual {v13, v4, v5, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    .line 282
    .end local v6    # "fileName":Ljava/lang/String;
    .end local v17    # "bufferwrapper":Lc8/uH;
    .end local v18    # "cachePath":Ljava/lang/String;
    .end local v20    # "contentEncoding":Ljava/lang/String;
    .end local v21    # "dir":Ljava/io/File;
    .end local v27    # "file":Ljava/io/File;
    .end local v31    # "length":I
    .end local v36    # "tmp":Ljava/io/InputStream;
    .end local v37    # "url":Ljava/net/URL;
    :catchall_0
    move-exception v4

    .line 283
    :goto_6
    if-eqz v34, :cond_e

    .line 284
    :try_start_6
    invoke-virtual/range {v34 .. v34}, Ljava/io/RandomAccessFile;->close()V

    .line 286
    :cond_e
    if-eqz v24, :cond_f

    .line 287
    invoke-virtual/range {v24 .. v24}, Ljava/io/DataInputStream;->close()V

    .line 289
    :cond_f
    if-eqz v13, :cond_10

    .line 290
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 298
    :cond_10
    :goto_7
    if-eqz v19, :cond_11

    .line 299
    invoke-virtual/range {v19 .. v19}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 302
    :cond_11
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;->listener:Lcom/taobao/windvane/zipdownload/DownLoadListener;

    throw v4

    .line 261
    .restart local v6    # "fileName":Ljava/lang/String;
    .restart local v17    # "bufferwrapper":Lc8/uH;
    .restart local v18    # "cachePath":Ljava/lang/String;
    .restart local v20    # "contentEncoding":Ljava/lang/String;
    .restart local v21    # "dir":Ljava/io/File;
    .restart local v27    # "file":Ljava/io/File;
    .restart local v36    # "tmp":Ljava/io/InputStream;
    .restart local v37    # "url":Ljava/net/URL;
    :cond_12
    :try_start_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;->appinfo:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    if-eqz v4, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;->appinfo:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    iget-boolean v4, v4, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->isPreViewApp:Z

    if-eqz v4, :cond_13

    .line 262
    invoke-static {}, Lc8/qH;->getInstance()Lc8/qH;

    move-result-object v4

    const/16 v5, 0x1774

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/16 v9, 0x64

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v7}, Lc8/qH;->onEvent(I[Ljava/lang/Object;)Landroid/taobao/windvane/service/WVEventResult;

    .line 264
    :cond_13
    const/4 v4, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lc8/uH;->setIsFree(Z)V

    .line 267
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;->listener:Lcom/taobao/windvane/zipdownload/DownLoadListener;

    if-eqz v4, :cond_15

    .line 268
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 269
    const-string/jumbo v4, "WVZipBPDownloader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "zipUrl =\u3010"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;->zipUrl:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "\u3011  \u4e0b\u8f7d\u8017\u65f6=\u3010"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v14

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "\u3011isBPDownLoad  =\u3010"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "\u3011"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;->listener:Lcom/taobao/windvane/zipdownload/DownLoadListener;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;->zipUrl:Ljava/lang/String;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iget v8, v0, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;->token:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;->obj:Ljava/lang/Object;

    invoke-interface/range {v4 .. v9}, Lcom/taobao/windvane/zipdownload/DownLoadListener;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 283
    :cond_15
    if-eqz v34, :cond_16

    .line 284
    :try_start_8
    invoke-virtual/range {v34 .. v34}, Ljava/io/RandomAccessFile;->close()V

    .line 286
    :cond_16
    if-eqz v24, :cond_17

    .line 287
    invoke-virtual/range {v24 .. v24}, Ljava/io/DataInputStream;->close()V

    .line 289
    :cond_17
    if-eqz v13, :cond_18

    .line 290
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 298
    :cond_18
    :goto_8
    if-eqz v19, :cond_19

    .line 299
    invoke-virtual/range {v19 .. v19}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 302
    :cond_19
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;->listener:Lcom/taobao/windvane/zipdownload/DownLoadListener;

    goto/16 :goto_5

    .line 292
    :catch_1
    move-exception v26

    .line 293
    .restart local v26    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 292
    .end local v6    # "fileName":Ljava/lang/String;
    .end local v17    # "bufferwrapper":Lc8/uH;
    .end local v18    # "cachePath":Ljava/lang/String;
    .end local v20    # "contentEncoding":Ljava/lang/String;
    .end local v21    # "dir":Ljava/io/File;
    .end local v27    # "file":Ljava/io/File;
    .end local v36    # "tmp":Ljava/io/InputStream;
    .end local v37    # "url":Ljava/net/URL;
    :catch_2
    move-exception v26

    .line 293
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 292
    .end local v26    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v26

    .line 293
    .restart local v26    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7

    .line 282
    .end local v26    # "e":Ljava/lang/Exception;
    .end local v34    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v6    # "fileName":Ljava/lang/String;
    .restart local v18    # "cachePath":Ljava/lang/String;
    .restart local v21    # "dir":Ljava/io/File;
    .restart local v27    # "file":Ljava/io/File;
    .restart local v35    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v37    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v4

    move-object/from16 v34, v35

    .end local v35    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v34    # "randomAccessFile":Ljava/io/RandomAccessFile;
    goto/16 :goto_6

    .line 275
    .end local v34    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v35    # "randomAccessFile":Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v26

    move-object/from16 v34, v35

    .end local v35    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v34    # "randomAccessFile":Ljava/io/RandomAccessFile;
    goto/16 :goto_3

    .end local v34    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v32    # "locFileSize":J
    .restart local v35    # "randomAccessFile":Ljava/io/RandomAccessFile;
    :cond_1a
    move-object/from16 v34, v35

    .end local v35    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v34    # "randomAccessFile":Ljava/io/RandomAccessFile;
    goto/16 :goto_0
.end method

.method private doTBDownloadTask()Z
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 84
    :try_start_0
    new-instance v4, Lc8/Emf;

    iget-object v7, p0, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;->zipUrl:Ljava/lang/String;

    invoke-direct {v4, v7}, Lc8/Emf;-><init>(Ljava/lang/String;)V

    .line 85
    .local v4, "request":Lc8/Emf;
    iget-object v7, v4, Lc8/Emf;->downloadParam:Lcom/taobao/downloader/request/Param;

    const-string/jumbo v8, "windvane"

    iput-object v8, v7, Lcom/taobao/downloader/request/Param;->bizId:Ljava/lang/String;

    .line 86
    iget-object v7, v4, Lc8/Emf;->downloadParam:Lcom/taobao/downloader/request/Param;

    const/4 v8, 0x0

    iput v8, v7, Lcom/taobao/downloader/request/Param;->callbackCondition:I

    .line 87
    new-instance v5, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader$1;

    invoke-direct {v5, p0}, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader$1;-><init>(Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;)V

    .line 138
    .local v5, "tbListener":Lc8/Dmf;
    sget-object v7, Lc8/xB;->context:Landroid/app/Application;

    invoke-virtual {v7}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "cachePath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 140
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 141
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 142
    const-string/jumbo v7, "WVZipBPDownloader"

    const-string/jumbo v8, "TMP \u76ee\u5f55\u4e0d\u5b58\u5728\uff0c\u65b0\u5efa\u4e00\u4e2atmp\u76ee\u5f55"

    invoke-static {v7, v8}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;->zipUrl:Ljava/lang/String;

    invoke-static {v8}, Lc8/NH;->md5ToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 146
    .local v3, "filePath":Ljava/lang/String;
    iget-object v7, v4, Lc8/Emf;->downloadParam:Lcom/taobao/downloader/request/Param;

    iput-object v3, v7, Lcom/taobao/downloader/request/Param;->fileStorePath:Ljava/lang/String;

    .line 147
    invoke-direct {p0}, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;->hasTbDownloader()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 148
    invoke-static {}, Lcom/taobao/downloader/TbDownloader;->getInstance()Lc8/Jlf;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Lc8/Jlf;->download(Lc8/Emf;Lc8/Dmf;)I

    .line 149
    const-string/jumbo v7, "WVZipBPDownloader"

    const-string/jumbo v8, "download by TbDownloader"

    invoke-static {v7, v8}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :goto_0
    const/4 v6, 0x1

    .end local v0    # "cachePath":Ljava/lang/String;
    .end local v1    # "dir":Ljava/io/File;
    .end local v3    # "filePath":Ljava/lang/String;
    .end local v4    # "request":Lc8/Emf;
    .end local v5    # "tbListener":Lc8/Dmf;
    :cond_1
    :goto_1
    return v6

    .line 151
    .restart local v0    # "cachePath":Ljava/lang/String;
    .restart local v1    # "dir":Ljava/io/File;
    .restart local v3    # "filePath":Ljava/lang/String;
    .restart local v4    # "request":Lc8/Emf;
    .restart local v5    # "tbListener":Lc8/Dmf;
    :cond_2
    invoke-static {}, Lc8/Jlf;->getInstance()Lc8/Jlf;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Lc8/Jlf;->download(Lc8/Emf;Lc8/Dmf;)I

    .line 152
    const-string/jumbo v7, "WVZipBPDownloader"

    const-string/jumbo v8, "download by Downloader"

    invoke-static {v7, v8}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 154
    .end local v0    # "cachePath":Ljava/lang/String;
    .end local v1    # "dir":Ljava/io/File;
    .end local v3    # "filePath":Ljava/lang/String;
    .end local v4    # "request":Lc8/Emf;
    .end local v5    # "tbListener":Lc8/Dmf;
    :catch_0
    move-exception v2

    .line 155
    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 156
    const-string/jumbo v7, "WVZipBPDownloader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "doTBDownloadTask Exception : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_3
    instance-of v7, v2, Ljava/lang/ClassNotFoundException;

    if-eqz v7, :cond_1

    .line 160
    invoke-static {}, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->getInstance()Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;

    move-result-object v7

    iput-boolean v6, v7, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->isTBDownloaderEnabled:Z

    goto :goto_1
.end method

.method private hasTbDownloader()Z
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 63
    iget-object v0, p0, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;->appinfo:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    if-eqz v0, :cond_1

    .line 64
    iget v0, p0, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;->token:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 65
    iget-object v0, p0, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;->appinfo:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    invoke-virtual {v0}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->getNameandVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lc8/JG;->start(Ljava/lang/String;I)V

    .line 67
    :cond_0
    iget v0, p0, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;->token:I

    if-ne v0, v3, :cond_1

    .line 68
    iget-object v0, p0, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;->appinfo:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    invoke-virtual {v0}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->getNameandVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lc8/JG;->start(Ljava/lang/String;I)V

    .line 73
    :cond_1
    sget-object v0, Lc8/DB;->commonConfig:Lc8/EB;

    iget-boolean v0, v0, Lc8/EB;->isUseTBDownloader:Z

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->getInstance()Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;

    move-result-object v0

    iget-boolean v0, v0, Landroid/taobao/windvane/packageapp/zipapp/ZipAppDownloaderQueue;->isTBDownloaderEnabled:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;->doTBDownloadTask()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 76
    :goto_0
    return-object v0

    :cond_2
    invoke-direct {p0}, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;->doDefaultTask()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 42
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/taobao/windvane/zipdownload/WVZipBPDownloader;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
