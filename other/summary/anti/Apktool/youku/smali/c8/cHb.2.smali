.class public Lc8/cHb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/bHb;
    }
.end annotation


# static fields
.field public static final DEFAULT_APPMONITOR_SAMPLING:I = 0x2710

.field public static final DOUBLE_11_OPEN_TYPE_AUTO:I = 0x0

.field public static final DOUBLE_11_OPEN_TYPE_H5:I = 0x2

.field public static final DOUBLE_11_OPEN_TYPE_NATIVE:I = 0x1

.field private static b:Ljava/lang/String;

.field public static channel:Ljava/lang/String;

.field private static volatile f:Lc8/cHb;


# instance fields
.field a:Ljava/lang/Runnable;

.field private c:Lc8/eHb;

.field private d:Lc8/iHb;

.field private e:Landroid/content/Context;

.field public expiredTimeStamp:J

.field private g:Lc8/fHb;

.field private final h:J

.field private final i:J

.field public isvVersion:Ljava/lang/String;

.field private j:Landroid/os/Handler;

.field public taobaoNativeSource:Ljava/lang/String;

.field public taokeParams:Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "albbTradeConfig"

    sput-object v0, Lc8/cHb;->b:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    const-wide/32 v2, 0x36ee80

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "1.0.0"

    iput-object v0, p0, Lc8/cHb;->isvVersion:Ljava/lang/String;

    const-wide/32 v0, 0x1499700

    iput-wide v0, p0, Lc8/cHb;->h:J

    iput-wide v2, p0, Lc8/cHb;->i:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lc8/cHb;->expiredTimeStamp:J

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lc8/cHb;->j:Landroid/os/Handler;

    new-instance v0, Lc8/gHb;

    invoke-direct {v0, p0}, Lc8/gHb;-><init>(Lc8/cHb;)V

    iput-object v0, p0, Lc8/cHb;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Lc8/cHb;->b()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lc8/cHb;->e:Landroid/content/Context;

    new-instance v0, Lc8/eHb;

    invoke-direct {v0}, Lc8/eHb;-><init>()V

    iput-object v0, p0, Lc8/cHb;->c:Lc8/eHb;

    new-instance v0, Lc8/fHb;

    invoke-direct {v0}, Lc8/fHb;-><init>()V

    iput-object v0, p0, Lc8/cHb;->g:Lc8/fHb;

    invoke-direct {p0}, Lc8/cHb;->a()V

    new-instance v0, Lc8/iHb;

    iget-object v1, p0, Lc8/cHb;->e:Landroid/content/Context;

    new-instance v2, Lc8/bHb;

    invoke-direct {v2, p0}, Lc8/bHb;-><init>(Lc8/cHb;)V

    invoke-direct {v0, v1, v2}, Lc8/iHb;-><init>(Landroid/content/Context;Lc8/hHb;)V

    iput-object v0, p0, Lc8/cHb;->d:Lc8/iHb;

    invoke-virtual {p0}, Lc8/cHb;->startRepeatingLoadConfigTask()V

    return-void
.end method

.method static synthetic a(Lc8/cHb;)Lc8/iHb;
    .locals 1

    iget-object v0, p0, Lc8/cHb;->d:Lc8/iHb;

    return-object v0
.end method

.method private a()V
    .locals 4

    const-string/jumbo v0, "AlibcConfig"

    const-string/jumbo v1, "config\u8bbe\u7f6e\u9ed8\u8ba4\u503c\u5f00\u59cb"

    invoke-static {v0, v1}, Lc8/oIb;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lc8/cHb;->g:Lc8/fHb;

    invoke-virtual {v0}, Lc8/fHb;->a()Lc8/dHb;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AlibcConfig"

    const-string/jumbo v1, "configspwrapper\u6709\u503c"

    invoke-static {v0, v1}, Lc8/oIb;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lc8/cHb;->c:Lc8/eHb;

    iget-object v1, p0, Lc8/cHb;->g:Lc8/fHb;

    invoke-virtual {v1}, Lc8/fHb;->a()Lc8/dHb;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/eHb;->a(Lc8/dHb;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "AlibcConfig"

    const-string/jumbo v1, "\u8bfb\u53d6\u672c\u5730\u914d\u7f6e\u6587\u4ef6"

    invoke-static {v0, v1}, Lc8/oIb;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string/jumbo v0, "{\n  \"group0\": {\n    \"dataId\": \"com.alibaba.baichuan.nbcp.meta.default\",\n    \"group\": \"1.0.0\",\n    \"lastUpdate\": \"Jun 14, 2016 2:12:22 PM\",\n    \"sign\": \"\"\n  },\n  \"albbTradeConfig\": {\n    \"isSyncForTaoke\": \"YES\",\n    \"isForceH5\": \"NO\",\n    \"isNeedAlipay\": \"YES\",\n    \"loginDegarade\": \"NO\"\n  },\n  \"group2\": {\n    \"abc1\": \"agc1\",\n    \"abc2\": \"agc2\",\n    \"abc3\": \"agc3\",\n    \"11111\":\"11111\"\n  }\n}"

    const-string/jumbo v1, "AlibcConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u672c\u5730\u914d\u7f6e\u6587\u4ef6\u7684\u503c\u4e3a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/oIb;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v0, Lc8/dHb;

    invoke-direct {v0}, Lc8/dHb;-><init>()V

    invoke-virtual {v0, v1}, Lc8/dHb;->a(Lorg/json/JSONObject;)V

    iget-object v1, p0, Lc8/cHb;->c:Lc8/eHb;

    invoke-virtual {v1, v0}, Lc8/eHb;->a(Lc8/dHb;)V

    const-string/jumbo v0, "AlibcConfig"

    const-string/jumbo v1, "\u8bfb\u53d6\u672c\u5730\u914d\u7f6e\u6587\u4ef6\u6210\u529f"

    invoke-static {v0, v1}, Lc8/oIb;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AlibcConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u672c\u5730\u9ed8\u8ba4\u914d\u7f6e\u6587\u4ef6\u89e3\u6790\u9519\u8bef"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lc8/oIb;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_5

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_2

    const/16 v3, 0x39

    if-le v2, v3, :cond_4

    :cond_2
    const/16 v3, 0x61

    if-lt v2, v3, :cond_3

    const/16 v3, 0x7a

    if-le v2, v3, :cond_4

    :cond_3
    const/16 v3, 0x41

    if-lt v2, v3, :cond_0

    const/16 v3, 0x5a

    if-gt v2, v3, :cond_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private b()Landroid/content/Context;
    .locals 1

    sget-object v0, Lc8/vFb;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lc8/cHb;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lc8/cHb;->j:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lc8/cHb;)Lc8/eHb;
    .locals 1

    iget-object v0, p0, Lc8/cHb;->c:Lc8/eHb;

    return-object v0
.end method

.method static synthetic d(Lc8/cHb;)Lc8/fHb;
    .locals 1

    iget-object v0, p0, Lc8/cHb;->g:Lc8/fHb;

    return-object v0
.end method

.method public static getInstance()Lc8/cHb;
    .locals 2

    sget-object v0, Lc8/cHb;->f:Lc8/cHb;

    if-nez v0, :cond_1

    const-class v1, Lc8/cHb;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/cHb;->f:Lc8/cHb;

    if-nez v0, :cond_0

    new-instance v0, Lc8/cHb;

    invoke-direct {v0}, Lc8/cHb;-><init>()V

    sput-object v0, Lc8/cHb;->f:Lc8/cHb;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lc8/cHb;->f:Lc8/cHb;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getAppMonitorSampling()I
    .locals 3

    const/16 v1, 0x2710

    const-string/jumbo v0, "sampling"

    invoke-virtual {p0, v0}, Lc8/cHb;->getGlobalConfig(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_0

    :try_start_0
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "AlibcConfig"

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lc8/oIb;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "channelName"

    invoke-virtual {p0, v0}, Lc8/cHb;->getGlobalConfig(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string/jumbo v1, "channelType"

    invoke-virtual {p0, v1}, Lc8/cHb;->getGlobalConfig(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lc8/cHb;->channel:Ljava/lang/String;

    invoke-direct {p0, v0}, Lc8/cHb;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "initChannel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Channel chars must in [0-9][a-z][A-Z], now : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lc8/cHb;->channel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/oIb;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "0"

    sput-object v0, Lc8/cHb;->channel:Ljava/lang/String;

    :cond_2
    sget-object v0, Lc8/cHb;->channel:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDouble11OpenType()I
    .locals 3

    const/4 v1, 0x0

    const-string/jumbo v0, "double11OpenType"

    invoke-virtual {p0, v0}, Lc8/cHb;->getGlobalConfig(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_0

    :try_start_0
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "AlibcConfig"

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lc8/oIb;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public getFromAssets(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v0, p0, Lc8/cHb;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const-string/jumbo v0, ""

    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v1

    :goto_2
    :try_start_3
    const-string/jumbo v2, "AlibcConfig"

    const-string/jumbo v3, "\u672c\u5730\u9ed8\u8ba4\u914d\u7f6e\u6587\u4ef6\u8bfb\u53d6\u9519\u8bef"

    invoke-static {v2, v3}, Lc8/oIb;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v0, :cond_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_2
    :goto_3
    move-object v0, v1

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_4
    if-eqz v2, :cond_3

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    :goto_5
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v0, v2

    goto :goto_2
.end method

.method public getGlobalConfig(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lc8/cHb;->c:Lc8/eHb;

    sget-object v2, Lc8/cHb;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, p1, v0}, Lc8/eHb;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getGlobalConfig(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lc8/cHb;->c:Lc8/eHb;

    sget-object v1, Lc8/cHb;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lc8/eHb;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getGroupConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lc8/cHb;->c:Lc8/eHb;

    invoke-virtual {v1, p1, p2, v0}, Lc8/eHb;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getGroupConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lc8/cHb;->c:Lc8/eHb;

    invoke-virtual {v0, p1, p2, p3}, Lc8/eHb;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getIsSyncForTaoke()Z
    .locals 2

    const-string/jumbo v0, "YES"

    const-string/jumbo v1, "isSyncForTaoke"

    invoke-virtual {p0, v1}, Lc8/cHb;->getGlobalConfig(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getIsvCode()Ljava/lang/String;
    .locals 1

    sget-object v0, Lc8/vFb;->isvCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lc8/vFb;->isvCode:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "isvCode"

    invoke-virtual {p0, v0}, Lc8/cHb;->getGlobalConfig(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "isvCode"

    invoke-virtual {p0, v0}, Lc8/cHb;->getGlobalConfig(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIsvVersion()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "isvVersion"

    invoke-virtual {p0, v0}, Lc8/cHb;->getGlobalConfig(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "isvVersion"

    invoke-virtual {p0, v0}, Lc8/cHb;->getGlobalConfig(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lc8/cHb;->isvVersion:Ljava/lang/String;

    goto :goto_0
.end method

.method public getLoginDegarade(Z)Z
    .locals 2

    const-string/jumbo v0, "loginDegarade"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lc8/cHb;->getGlobalConfig(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lc8/RHb;->obj2Boolean(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getNBTTradeTaokeParams()Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;
    .locals 1

    iget-object v0, p0, Lc8/cHb;->taokeParams:Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;

    return-object v0
.end method

.method public getTaokeParams()Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;
    .locals 1

    iget-object v0, p0, Lc8/cHb;->taokeParams:Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;

    return-object v0
.end method

.method public getWebTTID()Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "2014_%s_%s@baichuan_android_%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lc8/cHb;->getChannel()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Lc8/vFb;->getAppKey()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lc8/vFb;->sdkVersion:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isForceH5()Z
    .locals 2

    const-string/jumbo v0, "YES"

    const-string/jumbo v1, "isForceH5"

    invoke-virtual {p0, v1}, Lc8/cHb;->getGlobalConfig(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public needTaoke()Z
    .locals 2

    const-string/jumbo v0, "YES"

    const-string/jumbo v1, "isTaokeUT"

    invoke-virtual {p0, v1}, Lc8/cHb;->getGlobalConfig(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setChangeSlickUrl(Z)V
    .locals 2

    const-string/jumbo v0, "IS_TAOKE_SCLICK"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lc8/cHb;->setGlobalConfig(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public setChannel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "channelType"

    invoke-virtual {p0, v0, p1}, Lc8/cHb;->setGlobalConfig(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string/jumbo v0, "channelName"

    invoke-virtual {p0, v0, p2}, Lc8/cHb;->setGlobalConfig(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public setGlobalConfig(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1

    sget-object v0, Lc8/cHb;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2}, Lc8/cHb;->setGroupConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setGroupConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lc8/cHb;->c:Lc8/eHb;

    invoke-virtual {v0, p1, p2, p3}, Lc8/eHb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setIsForceH5(Z)Z
    .locals 2

    iget-object v0, p0, Lc8/cHb;->c:Lc8/eHb;

    const-string/jumbo v1, "isForceH5"

    invoke-virtual {v0, v1}, Lc8/eHb;->a(Ljava/lang/String;)V

    const-string/jumbo v1, "isForceH5"

    if-eqz p1, :cond_0

    const-string/jumbo v0, "YES"

    :goto_0
    invoke-virtual {p0, v1, v0}, Lc8/cHb;->setGlobalConfig(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    const-string/jumbo v0, "NO"

    goto :goto_0
.end method

.method public setIsSyncForTaoke(Z)Z
    .locals 2

    iget-object v0, p0, Lc8/cHb;->c:Lc8/eHb;

    const-string/jumbo v1, "isSyncForTaoke"

    invoke-virtual {v0, v1}, Lc8/eHb;->a(Ljava/lang/String;)V

    const-string/jumbo v1, "isSyncForTaoke"

    if-eqz p1, :cond_0

    const-string/jumbo v0, "YES"

    :goto_0
    invoke-virtual {p0, v1, v0}, Lc8/cHb;->setGlobalConfig(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    const-string/jumbo v0, "NO"

    goto :goto_0
.end method

.method public setIsvCode(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lc8/cHb;->c:Lc8/eHb;

    const-string/jumbo v1, "isvCode"

    invoke-virtual {v0, v1}, Lc8/eHb;->a(Ljava/lang/String;)V

    const-string/jumbo v0, "isvCode"

    invoke-virtual {p0, v0, p1}, Lc8/cHb;->setGlobalConfig(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setIsvVersion(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lc8/cHb;->c:Lc8/eHb;

    const-string/jumbo v1, "isvVersion"

    invoke-virtual {v0, v1}, Lc8/eHb;->a(Ljava/lang/String;)V

    const-string/jumbo v0, "isvVersion"

    invoke-virtual {p0, v0, p1}, Lc8/cHb;->setGlobalConfig(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setShouldUseAlipay(Z)Z
    .locals 2

    iget-object v0, p0, Lc8/cHb;->c:Lc8/eHb;

    const-string/jumbo v1, "isNeedAlipay"

    invoke-virtual {v0, v1}, Lc8/eHb;->a(Ljava/lang/String;)V

    const-string/jumbo v1, "isNeedAlipay"

    if-eqz p1, :cond_0

    const-string/jumbo v0, "YES"

    :goto_0
    invoke-virtual {p0, v1, v0}, Lc8/cHb;->setGlobalConfig(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    const-string/jumbo v0, "NO"

    goto :goto_0
.end method

.method public setTaokeParams(Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "pid"

    iget-object v1, p1, Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;->pid:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lc8/cHb;->setGlobalConfig(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string/jumbo v0, "subPid"

    iget-object v1, p1, Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;->subPid:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lc8/cHb;->setGlobalConfig(Ljava/lang/String;Ljava/lang/Object;)Z

    const-string/jumbo v0, "unionId"

    iget-object v1, p1, Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;->unionId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lc8/cHb;->setGlobalConfig(Ljava/lang/String;Ljava/lang/Object;)Z

    iput-object p1, p0, Lc8/cHb;->taokeParams:Lcom/alibaba/baichuan/android/trade/model/AlibcTaokeParams;

    goto :goto_0
.end method

.method public shouldUseAlipay(Z)Z
    .locals 2

    const-string/jumbo v0, "isNeedAlipay"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lc8/cHb;->getGlobalConfig(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lc8/RHb;->obj2Boolean(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public startRepeatingLoadConfigTask()V
    .locals 1

    iget-object v0, p0, Lc8/cHb;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
