.class public Lcom/ut/mini/exposure/ExposureConfigMgr;
.super Ljava/lang/Object;
.source "ExposureConfigMgr.java"


# static fields
.field private static final EXP_CONFIG_TAG:Ljava/lang/String; = "autoExposure"

.field public static dimThreshold:D

.field private static mConfig:Ljava/lang/String;

.field public static maxTimeThreshold:I

.field public static notClearTagAfterDisAppear:Z

.field public static timeThreshold:I

.field public static trackerExposureOpen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ut/mini/exposure/ExposureConfigMgr;->trackerExposureOpen:Z

    .line 23
    const/16 v0, 0x1f4

    sput v0, Lcom/ut/mini/exposure/ExposureConfigMgr;->timeThreshold:I

    .line 25
    const v0, 0x36ee80

    sput v0, Lcom/ut/mini/exposure/ExposureConfigMgr;->maxTimeThreshold:I

    .line 30
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    sput-wide v0, Lcom/ut/mini/exposure/ExposureConfigMgr;->dimThreshold:D

    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/ut/mini/exposure/ExposureConfigMgr;->mConfig:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ut/mini/exposure/ExposureConfigMgr;->notClearTagAfterDisAppear:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .locals 6

    .prologue
    .line 36
    invoke-static {}, Lc8/lzb;->getInstance()Lc8/lzb;

    move-result-object v1

    invoke-virtual {v1}, Lc8/lzb;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "autoExposure"

    invoke-static {v1, v2}, Lc8/ZBb;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "config":Ljava/lang/String;
    invoke-static {v0}, Lcom/ut/mini/exposure/ExposureConfigMgr;->updateExposureConfig(Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lcom/ut/mini/exposure/TrackerManager;->getInstance()Lcom/ut/mini/exposure/TrackerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ut/mini/exposure/TrackerManager;->getThreadHandle()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/ut/mini/exposure/ExposureConfigMgr$1;

    invoke-direct {v2}, Lcom/ut/mini/exposure/ExposureConfigMgr$1;-><init>()V

    const-wide/16 v4, 0x3a98

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 44
    return-void
.end method

.method public static updateExposureConfig()V
    .locals 2

    .prologue
    .line 47
    :try_start_0
    const-string/jumbo v1, "autoExposure"

    invoke-static {v1}, Lc8/gzb;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "config":Ljava/lang/String;
    invoke-static {v0}, Lcom/ut/mini/exposure/ExposureConfigMgr;->updateExposureConfig(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static updateExposureConfig(Ljava/lang/String;)V
    .locals 9
    .param p0, "config"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 56
    if-eqz p0, :cond_0

    :try_start_0
    sget-object v5, Lcom/ut/mini/exposure/ExposureConfigMgr;->mConfig:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_0
    if-nez p0, :cond_1

    sget-object v5, Lcom/ut/mini/exposure/ExposureConfigMgr;->mConfig:Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 59
    :cond_1
    sput-object p0, Lcom/ut/mini/exposure/ExposureConfigMgr;->mConfig:Ljava/lang/String;

    .line 60
    invoke-static {}, Lc8/lzb;->getInstance()Lc8/lzb;

    move-result-object v5

    invoke-virtual {v5}, Lc8/lzb;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "autoExposure"

    sget-object v7, Lcom/ut/mini/exposure/ExposureConfigMgr;->mConfig:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lc8/ZBb;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    sget-object v5, Lcom/ut/mini/exposure/ExposureConfigMgr;->mConfig:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v5, :cond_7

    .line 63
    :try_start_1
    sget-object v5, Lcom/ut/mini/exposure/ExposureConfigMgr;->mConfig:Ljava/lang/String;

    invoke-static {v5}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 64
    .local v3, "object":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v3, :cond_4

    .line 65
    const-string/jumbo v5, "turnOn"

    invoke-virtual {v3, v5}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v8, :cond_5

    .line 66
    const/4 v5, 0x1

    sput-boolean v5, Lcom/ut/mini/exposure/ExposureConfigMgr;->trackerExposureOpen:Z

    .line 70
    :goto_0
    const-string/jumbo v5, "timeThreshold"

    invoke-virtual {v3, v5}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v4

    .line 71
    .local v4, "tt":I
    if-ltz v4, :cond_2

    .line 72
    sput v4, Lcom/ut/mini/exposure/ExposureConfigMgr;->timeThreshold:I

    .line 74
    :cond_2
    const-string/jumbo v5, "areaThreshold"

    invoke-virtual {v3, v5}, Lcom/alibaba/fastjson/JSONObject;->getDoubleValue(Ljava/lang/String;)D

    move-result-wide v0

    .line 75
    .local v0, "at":D
    const-wide/16 v6, 0x0

    cmpl-double v5, v0, v6

    if-ltz v5, :cond_3

    .line 76
    sput-wide v0, Lcom/ut/mini/exposure/ExposureConfigMgr;->dimThreshold:D
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 79
    :cond_3
    :try_start_2
    const-string/jumbo v5, "notClearTag"

    invoke-virtual {v3, v5}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v8, :cond_6

    .line 80
    const/4 v5, 0x1

    sput-boolean v5, Lcom/ut/mini/exposure/ExposureConfigMgr;->notClearTagAfterDisAppear:Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 100
    .end local v0    # "at":D
    .end local v3    # "object":Lcom/alibaba/fastjson/JSONObject;
    .end local v4    # "tt":I
    :cond_4
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "trackerExposureOpen:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/ut/mini/exposure/ExposureConfigMgr;->trackerExposureOpen:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " timeThreshold:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/ut/mini/exposure/ExposureConfigMgr;->timeThreshold:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " dimThreshold:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-wide v6, Lcom/ut/mini/exposure/ExposureConfigMgr;->dimThreshold:D

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    return-void

    .line 68
    .restart local v3    # "object":Lcom/alibaba/fastjson/JSONObject;
    :cond_5
    const/4 v5, 0x0

    :try_start_3
    sput-boolean v5, Lcom/ut/mini/exposure/ExposureConfigMgr;->trackerExposureOpen:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 88
    .end local v3    # "object":Lcom/alibaba/fastjson/JSONObject;
    :catch_0
    move-exception v2

    .line 89
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    goto :goto_1

    .line 82
    .restart local v0    # "at":D
    .restart local v3    # "object":Lcom/alibaba/fastjson/JSONObject;
    .restart local v4    # "tt":I
    :cond_6
    const/4 v5, 0x0

    :try_start_5
    sput-boolean v5, Lcom/ut/mini/exposure/ExposureConfigMgr;->notClearTagAfterDisAppear:Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    :catch_2
    move-exception v5

    goto :goto_1

    .line 92
    .end local v0    # "at":D
    .end local v3    # "object":Lcom/alibaba/fastjson/JSONObject;
    .end local v4    # "tt":I
    :cond_7
    const/4 v5, 0x1

    :try_start_6
    sput-boolean v5, Lcom/ut/mini/exposure/ExposureConfigMgr;->trackerExposureOpen:Z

    .line 93
    const/16 v5, 0x1f4

    sput v5, Lcom/ut/mini/exposure/ExposureConfigMgr;->timeThreshold:I

    .line 94
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    sput-wide v6, Lcom/ut/mini/exposure/ExposureConfigMgr;->dimThreshold:D
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1
.end method
