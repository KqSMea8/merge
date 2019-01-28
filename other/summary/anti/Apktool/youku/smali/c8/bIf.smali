.class public Lc8/bIf;
.super Ljava/lang/Object;
.source "RealTimeUploaderManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/aIf;
    }
.end annotation


# static fields
.field private static final DEFAULT_SIZE:I = 0x8

.field private static final SEND_LOG:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isInited:Z

.field private mBuffer:Ljava/lang/StringBuilder;

.field private mConnection:Ljava/net/HttpURLConnection;

.field private mController:Lc8/YHf;

.field private mCount:I

.field private mCurrentNum:I

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mPath:Ljava/lang/String;

.field private mPreTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lc8/bIf;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/bIf;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string/jumbo v0, "https://mddc.m.taobao.com/push2.do"

    iput-object v0, p0, Lc8/bIf;->mPath:Ljava/lang/String;

    .line 40
    iput v2, p0, Lc8/bIf;->mCount:I

    .line 41
    iput-boolean v2, p0, Lc8/bIf;->isInited:Z

    .line 43
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lc8/bIf;->mPreTime:J

    .line 44
    iput v2, p0, Lc8/bIf;->mCurrentNum:I

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lc8/bIf;->mBuffer:Ljava/lang/StringBuilder;

    .line 56
    invoke-static {}, Lc8/YHf;->getInstance()Lc8/YHf;

    move-result-object v0

    iput-object v0, p0, Lc8/bIf;->mController:Lc8/YHf;

    .line 57
    return-void
.end method

.method synthetic constructor <init>(Lc8/ZHf;)V
    .locals 0
    .param p1, "x0"    # Lc8/ZHf;

    .prologue
    .line 25
    invoke-direct {p0}, Lc8/bIf;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lc8/bIf;)Lc8/YHf;
    .locals 1
    .param p0, "x0"    # Lc8/bIf;

    .prologue
    .line 25
    iget-object v0, p0, Lc8/bIf;->mController:Lc8/YHf;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lc8/bIf;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lc8/bIf;[B)Z
    .locals 1
    .param p0, "x0"    # Lc8/bIf;
    .param p1, "x1"    # [B

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lc8/bIf;->sendLog([B)Z

    move-result v0

    return v0
.end method

.method static synthetic access$520(Lc8/bIf;I)I
    .locals 1
    .param p0, "x0"    # Lc8/bIf;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iget v0, p0, Lc8/bIf;->mCount:I

    sub-int/2addr v0, p1

    iput v0, p0, Lc8/bIf;->mCount:I

    return v0
.end method

.method public static getInstance()Lc8/bIf;
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lc8/aIf;->access$100()Lc8/bIf;

    move-result-object v0

    return-object v0
.end method

.method private static getStringFromInputStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 309
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 311
    .local v2, "os":Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0x400

    new-array v0, v4, [B

    .line 315
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "len":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 316
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 318
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 319
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    .line 320
    .local v3, "state":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 321
    return-object v3
.end method

.method private init()V
    .locals 5

    .prologue
    .line 60
    new-instance v2, Landroid/os/HandlerThread;

    const-string/jumbo v3, "realtime-uploader"

    const/16 v4, 0x13

    invoke-direct {v2, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lc8/bIf;->mHandlerThread:Landroid/os/HandlerThread;

    .line 61
    iget-object v2, p0, Lc8/bIf;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 62
    new-instance v2, Lc8/ZHf;

    iget-object v3, p0, Lc8/bIf;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lc8/ZHf;-><init>(Lc8/bIf;Landroid/os/Looper;)V

    iput-object v2, p0, Lc8/bIf;->mHandler:Landroid/os/Handler;

    .line 96
    :try_start_0
    iget-object v2, p0, Lc8/bIf;->mConnection:Ljava/net/HttpURLConnection;

    if-nez v2, :cond_0

    .line 97
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lc8/bIf;->mPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 98
    .local v1, "realUrl":Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    iput-object v2, p0, Lc8/bIf;->mConnection:Ljava/net/HttpURLConnection;

    .line 100
    .end local v1    # "realUrl":Ljava/net/URL;
    :cond_0
    iget-object v2, p0, Lc8/bIf;->mConnection:Ljava/net/HttpURLConnection;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 101
    iget-object v2, p0, Lc8/bIf;->mConnection:Ljava/net/HttpURLConnection;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 102
    iget-object v2, p0, Lc8/bIf;->mConnection:Ljava/net/HttpURLConnection;

    const-string/jumbo v3, "POST"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 103
    iget-object v2, p0, Lc8/bIf;->mConnection:Ljava/net/HttpURLConnection;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 104
    iget-object v2, p0, Lc8/bIf;->mConnection:Ljava/net/HttpURLConnection;

    const/16 v3, 0x7530

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 105
    iget-object v2, p0, Lc8/bIf;->mConnection:Ljava/net/HttpURLConnection;

    const/16 v3, 0x7530

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 112
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 108
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v0

    .line 109
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private sendLog([B)Z
    .locals 24
    .param p1, "content"    # [B

    .prologue
    .line 162
    const-string/jumbo v10, "multipart/form-data"

    .line 163
    .local v10, "multipart_form_data":Ljava/lang/String;
    const-string/jumbo v16, "--"

    .line 164
    .local v16, "twoHyphens":Ljava/lang/String;
    const-string/jumbo v6, "****************fD4fH3gL0hK7aI6"

    .line 165
    .local v6, "boundary":Ljava/lang/String;
    const-string/jumbo v9, "\r\n"

    .line 167
    .local v9, "lineEnd":Ljava/lang/String;
    if-nez p1, :cond_1

    .line 168
    const/16 v20, 0x0

    .line 255
    :cond_0
    :goto_0
    return v20

    .line 171
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/bIf;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v20, v0

    const-string/jumbo v21, "Content-Type"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "; boundary="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const/4 v4, 0x0

    .line 175
    .local v4, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    .end local v4    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v5, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .local v2, "appKey":Ljava/lang/StringBuilder;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Content-Disposition: form-data; name=\"appkey\""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc8/EHf;->getAppkey()Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "utf-8"

    invoke-static/range {v21 .. v22}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 185
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .local v3, "appversion":Ljava/lang/StringBuilder;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Content-Disposition: form-data; name=\"appversion\""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc8/EHf;->getAppVersion()Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "utf-8"

    invoke-static/range {v21 .. v22}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 192
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    .local v12, "platform":Ljava/lang/StringBuilder;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Content-Disposition: form-data; name=\"platform\""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Android"

    const-string/jumbo v22, "utf-8"

    invoke-static/range {v21 .. v22}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 199
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .local v19, "utdid":Ljava/lang/StringBuilder;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Content-Disposition: form-data; name=\"utdid\""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc8/EHf;->getUTDID()Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "utf-8"

    invoke-static/range {v21 .. v22}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 206
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    .local v17, "user":Ljava/lang/StringBuilder;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Content-Disposition: form-data; name=\"user\""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-static {}, Lc8/EHf;->getUserNick()Ljava/lang/String;

    move-result-object v18

    .line 211
    .local v18, "userNick":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 212
    const-string/jumbo v18, ""

    .line 214
    :cond_2
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "utf-8"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 217
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    .local v14, "split":Ljava/lang/StringBuilder;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Content-Disposition: form-data; name=\"content\"; filename=\"1.log\""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Content-Type: application/octet-stream"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 224
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 225
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 227
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/bIf;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    .line 230
    .local v11, "out":Ljava/io/OutputStream;
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/io/OutputStream;->write([B)V

    .line 231
    invoke-virtual {v11}, Ljava/io/OutputStream;->flush()V

    .line 232
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/bIf;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v13

    .line 235
    .local v13, "requestCode":I
    const/16 v20, 0xc8

    move/from16 v0, v20

    if-ne v13, v0, :cond_3

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/bIf;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 237
    .local v8, "inputStream":Ljava/io/InputStream;
    invoke-static {v8}, Lc8/bIf;->getStringFromInputStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v15

    .line 238
    .local v15, "state":Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "[requestByHttpPost] sucessed and HttpPost result is \uff1a"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 239
    const/16 v20, 0x1

    .line 250
    if-eqz v5, :cond_0

    .line 252
    :try_start_2
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v21

    goto/16 :goto_0

    .line 241
    .end local v8    # "inputStream":Ljava/io/InputStream;
    .end local v15    # "state":Ljava/lang/String;
    :cond_3
    :try_start_3
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "[requestByHttpPost] HttpPost failed and request code is : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 242
    const/16 v20, 0x0

    .line 250
    if-eqz v5, :cond_0

    .line 252
    :try_start_4
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v21

    goto/16 :goto_0

    .line 244
    .end local v2    # "appKey":Ljava/lang/StringBuilder;
    .end local v3    # "appversion":Ljava/lang/StringBuilder;
    .end local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v11    # "out":Ljava/io/OutputStream;
    .end local v12    # "platform":Ljava/lang/StringBuilder;
    .end local v13    # "requestCode":I
    .end local v14    # "split":Ljava/lang/StringBuilder;
    .end local v17    # "user":Ljava/lang/StringBuilder;
    .end local v18    # "userNick":Ljava/lang/String;
    .end local v19    # "utdid":Ljava/lang/StringBuilder;
    .restart local v4    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_2
    move-exception v7

    .line 245
    .local v7, "e":Ljava/lang/Exception;
    :goto_1
    if-eqz v7, :cond_4

    .line 246
    :try_start_5
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 248
    :cond_4
    const/16 v20, 0x0

    .line 250
    if-eqz v4, :cond_0

    .line 252
    :try_start_6
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v21

    goto/16 :goto_0

    .line 250
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v20

    :goto_2
    if-eqz v4, :cond_5

    .line 252
    :try_start_7
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 255
    :cond_5
    :goto_3
    throw v20

    :catch_4
    move-exception v21

    goto :goto_3

    .line 250
    .end local v4    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v20

    move-object v4, v5

    .end local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_2

    .line 244
    .end local v4    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_5
    move-exception v7

    move-object v4, v5

    .end local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_1
.end method

.method public static final zip(Ljava/lang/String;)[B
    .locals 8
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 266
    if-nez p0, :cond_1

    .line 298
    :cond_0
    :goto_0
    return-object v0

    .line 269
    :cond_1
    const/4 v2, 0x0

    .line 270
    .local v2, "out":Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    .line 272
    .local v4, "zout":Ljava/util/zip/GZIPOutputStream;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v6}, Lc8/IHf;->encryptNoB64([B)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 273
    .local v1, "encryptByte":[B
    if-nez v1, :cond_3

    .line 285
    if-eqz v4, :cond_2

    .line 287
    :try_start_1
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 291
    :cond_2
    :goto_1
    if-eqz v2, :cond_0

    .line 293
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    goto :goto_0

    .line 276
    :cond_3
    :try_start_3
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 277
    .end local v2    # "out":Ljava/io/ByteArrayOutputStream;
    .local v3, "out":Ljava/io/ByteArrayOutputStream;
    :try_start_4
    new-instance v5, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v5, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 278
    .end local v4    # "zout":Ljava/util/zip/GZIPOutputStream;
    .local v5, "zout":Ljava/util/zip/GZIPOutputStream;
    :try_start_5
    invoke-virtual {v5, v1}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 279
    invoke-virtual {v5}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 280
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_a
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v0

    .line 285
    .local v0, "compressed":[B
    if-eqz v5, :cond_4

    .line 287
    :try_start_6
    invoke-virtual {v5}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 291
    :cond_4
    :goto_2
    if-eqz v3, :cond_0

    .line 293
    :try_start_7
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_0

    :catch_1
    move-exception v6

    goto :goto_0

    .line 285
    .end local v0    # "compressed":[B
    .end local v1    # "encryptByte":[B
    .end local v3    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "zout":Ljava/util/zip/GZIPOutputStream;
    .restart local v2    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "zout":Ljava/util/zip/GZIPOutputStream;
    :catch_2
    move-exception v6

    :goto_3
    if-eqz v4, :cond_5

    .line 287
    :try_start_8
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 291
    :cond_5
    :goto_4
    if-eqz v2, :cond_0

    .line 293
    :try_start_9
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_0

    .line 295
    :catch_3
    move-exception v6

    goto :goto_0

    .line 285
    :catchall_0
    move-exception v6

    :goto_5
    if-eqz v4, :cond_6

    .line 287
    :try_start_a
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 291
    :cond_6
    :goto_6
    if-eqz v2, :cond_7

    .line 293
    :try_start_b
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 295
    :cond_7
    :goto_7
    throw v6

    .restart local v1    # "encryptByte":[B
    :catch_4
    move-exception v6

    goto :goto_1

    .end local v2    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "zout":Ljava/util/zip/GZIPOutputStream;
    .restart local v0    # "compressed":[B
    .restart local v3    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "zout":Ljava/util/zip/GZIPOutputStream;
    :catch_5
    move-exception v6

    goto :goto_2

    .end local v0    # "compressed":[B
    .end local v1    # "encryptByte":[B
    .end local v3    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "zout":Ljava/util/zip/GZIPOutputStream;
    .restart local v2    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "zout":Ljava/util/zip/GZIPOutputStream;
    :catch_6
    move-exception v6

    goto :goto_4

    :catch_7
    move-exception v7

    goto :goto_6

    :catch_8
    move-exception v7

    goto :goto_7

    .line 285
    .end local v2    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "encryptByte":[B
    .restart local v3    # "out":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "out":Ljava/io/ByteArrayOutputStream;
    goto :goto_5

    .end local v2    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "zout":Ljava/util/zip/GZIPOutputStream;
    .restart local v3    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "zout":Ljava/util/zip/GZIPOutputStream;
    :catchall_2
    move-exception v6

    move-object v4, v5

    .end local v5    # "zout":Ljava/util/zip/GZIPOutputStream;
    .restart local v4    # "zout":Ljava/util/zip/GZIPOutputStream;
    move-object v2, v3

    .end local v3    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "out":Ljava/io/ByteArrayOutputStream;
    goto :goto_5

    .end local v2    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "out":Ljava/io/ByteArrayOutputStream;
    :catch_9
    move-exception v6

    move-object v2, v3

    .end local v3    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "out":Ljava/io/ByteArrayOutputStream;
    goto :goto_3

    .end local v2    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "zout":Ljava/util/zip/GZIPOutputStream;
    .restart local v3    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "zout":Ljava/util/zip/GZIPOutputStream;
    :catch_a
    move-exception v6

    move-object v4, v5

    .end local v5    # "zout":Ljava/util/zip/GZIPOutputStream;
    .restart local v4    # "zout":Ljava/util/zip/GZIPOutputStream;
    move-object v2, v3

    .end local v3    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "out":Ljava/io/ByteArrayOutputStream;
    goto :goto_3
.end method


# virtual methods
.method public isRealTimeChannalOver()Z
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lc8/bIf;->mController:Lc8/YHf;

    invoke-virtual {v0}, Lc8/YHf;->isStop()Z

    move-result v0

    return v0
.end method

.method public sendLog(Ljava/lang/String;)Z
    .locals 10
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 119
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 151
    :goto_0
    return v3

    .line 123
    :cond_0
    iget-boolean v5, p0, Lc8/bIf;->isInited:Z

    if-nez v5, :cond_1

    .line 124
    invoke-direct {p0}, Lc8/bIf;->init()V

    .line 125
    iput-boolean v3, p0, Lc8/bIf;->isInited:Z

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lc8/bIf;->mPreTime:J

    .line 128
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 129
    .local v0, "currentTime":J
    iget-object v5, p0, Lc8/bIf;->mController:Lc8/YHf;

    iget-object v6, p0, Lc8/bIf;->mBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    iget v7, p0, Lc8/bIf;->mCurrentNum:I

    iget-wide v8, p0, Lc8/bIf;->mPreTime:J

    sub-long v8, v0, v8

    invoke-virtual {v5, v6, v7, v8, v9}, Lc8/YHf;->isFitToUpload(IIJ)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 130
    iget v5, p0, Lc8/bIf;->mCount:I

    const/16 v6, 0x8

    if-le v5, v6, :cond_2

    .line 131
    sget-object v3, Lc8/bIf;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "delete mseeage!"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iput v4, p0, Lc8/bIf;->mCurrentNum:I

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lc8/bIf;->mPreTime:J

    .line 134
    iget-object v3, p0, Lc8/bIf;->mBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    move v3, v4

    .line 135
    goto :goto_0

    .line 138
    :cond_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 139
    .local v2, "msg":Landroid/os/Message;
    iput v3, v2, Landroid/os/Message;->what:I

    .line 140
    iget-object v5, p0, Lc8/bIf;->mBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 141
    iget-object v5, p0, Lc8/bIf;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 142
    iget v5, p0, Lc8/bIf;->mCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lc8/bIf;->mCount:I

    .line 143
    iget-object v5, p0, Lc8/bIf;->mBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 144
    iput v4, p0, Lc8/bIf;->mCurrentNum:I

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lc8/bIf;->mPreTime:J

    goto :goto_0

    .line 149
    .end local v2    # "msg":Landroid/os/Message;
    :cond_3
    iget-object v4, p0, Lc8/bIf;->mBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    iget v4, p0, Lc8/bIf;->mCurrentNum:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lc8/bIf;->mCurrentNum:I

    goto :goto_0
.end method
