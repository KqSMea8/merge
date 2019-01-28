.class public Lc8/iSb;
.super Ljava/lang/Object;
.source "MotuAdapteBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/fSb;,
        Lc8/hSb;,
        Lc8/gSb;
    }
.end annotation


# static fields
.field private static instance:Lc8/iSb;


# instance fields
.field private limitInterface:Lc8/oSb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lc8/iSb;->instance:Lc8/iSb;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/iSb;->limitInterface:Lc8/oSb;

    .line 40
    new-instance v0, Lc8/nSb;

    invoke-direct {v0}, Lc8/nSb;-><init>()V

    iput-object v0, p0, Lc8/iSb;->limitInterface:Lc8/oSb;

    .line 41
    return-void
.end method

.method public static getInstance()Lc8/iSb;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lc8/iSb;->instance:Lc8/iSb;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lc8/iSb;

    invoke-direct {v0}, Lc8/iSb;-><init>()V

    sput-object v0, Lc8/iSb;->instance:Lc8/iSb;

    .line 47
    :cond_0
    sget-object v0, Lc8/iSb;->instance:Lc8/iSb;

    return-object v0
.end method


# virtual methods
.method public build(Landroid/content/Context;Lc8/pSb;)Lc8/rSb;
    .locals 20
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "base"    # Lc8/pSb;

    .prologue
    .line 54
    move-object/from16 v0, p2

    instance-of v3, v0, Lc8/dSb;

    if-eqz v3, :cond_1

    .line 55
    new-instance v19, Lc8/rSb;

    invoke-direct/range {v19 .. v19}, Lc8/rSb;-><init>()V

    .local v19, "sendModule":Lc8/rSb;
    move-object/from16 v13, p2

    .line 57
    check-cast v13, Lc8/dSb;

    .line 58
    .local v13, "exceptionModule":Lc8/dSb;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 59
    .local v6, "timestamp":J
    const-string/jumbo v8, "catch"

    .line 60
    .local v8, "tag":Ljava/lang/String;
    const-string/jumbo v9, "BUSINESS"

    .line 61
    .local v9, "type":Ljava/lang/String;
    invoke-static {}, Lc8/PSb;->getInstance()Lc8/PSb;

    move-result-object v3

    const-string/jumbo v4, "UTDID"

    invoke-virtual {v3, v4}, Lc8/PSb;->getPropertyAndSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lc8/PSb;->getInstance()Lc8/PSb;

    move-result-object v4

    const-string/jumbo v5, "APP_KEY"

    invoke-virtual {v4, v5}, Lc8/PSb;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lc8/PSb;->getInstance()Lc8/PSb;

    move-result-object v5

    const-string/jumbo v12, "APP_VERSION"

    invoke-virtual {v5, v12}, Lc8/PSb;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v3 .. v9}, Lc8/NSb;->buildReportName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 69
    .local v15, "reportName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/iSb;->limitInterface:Lc8/oSb;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Lc8/oSb;->isLimit(Lc8/pSb;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 70
    new-instance v11, Lc8/hSb;

    move-object/from16 v12, p0

    move-object/from16 v14, p1

    move-wide/from16 v16, v6

    move-object/from16 v18, v9

    invoke-direct/range {v11 .. v18}, Lc8/hSb;-><init>(Lc8/iSb;Lc8/dSb;Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;)V

    .line 78
    .local v11, "reportBuilder":Lc8/gSb;
    :goto_0
    :try_start_0
    invoke-virtual {v11}, Lc8/gSb;->builder()Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, "content":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lc8/JTb;->compress([B)[B

    move-result-object v3

    invoke-static {v3}, Lc8/ITb;->encodeBase64String([B)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    iput-object v3, v0, Lc8/rSb;->sendContent:Ljava/lang/String;

    .line 80
    iget-object v3, v13, Lc8/dSb;->aggregationType:Lcom/alibaba/motu/crashreportadapter/module/AggregationType;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    iput-object v3, v0, Lc8/rSb;->aggregationType:Ljava/lang/String;

    .line 81
    invoke-static {v13}, Lc8/uSb;->getBusinessType(Lc8/qSb;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    iput-object v3, v0, Lc8/rSb;->businessType:Ljava/lang/String;

    .line 82
    sget-object v3, Lc8/lSb;->EVENTID_61005:Ljava/lang/Integer;

    move-object/from16 v0, v19

    iput-object v3, v0, Lc8/rSb;->eventId:Ljava/lang/Integer;

    .line 83
    const-string/jumbo v3, "MOTU_REPORTER_SDK_3.0.0_PRIVATE_COMPRESS"

    move-object/from16 v0, v19

    iput-object v3, v0, Lc8/rSb;->sendFlag:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .end local v2    # "content":Ljava/lang/String;
    .end local v6    # "timestamp":J
    .end local v8    # "tag":Ljava/lang/String;
    .end local v9    # "type":Ljava/lang/String;
    .end local v11    # "reportBuilder":Lc8/gSb;
    .end local v13    # "exceptionModule":Lc8/dSb;
    .end local v15    # "reportName":Ljava/lang/String;
    .end local v19    # "sendModule":Lc8/rSb;
    :goto_1
    return-object v19

    .line 73
    .restart local v6    # "timestamp":J
    .restart local v8    # "tag":Ljava/lang/String;
    .restart local v9    # "type":Ljava/lang/String;
    .restart local v13    # "exceptionModule":Lc8/dSb;
    .restart local v15    # "reportName":Ljava/lang/String;
    .restart local v19    # "sendModule":Lc8/rSb;
    :cond_0
    new-instance v11, Lc8/fSb;

    move-object/from16 v12, p0

    move-object/from16 v14, p1

    move-wide/from16 v16, v6

    move-object/from16 v18, v9

    invoke-direct/range {v11 .. v18}, Lc8/fSb;-><init>(Lc8/iSb;Lc8/dSb;Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;)V

    .restart local v11    # "reportBuilder":Lc8/gSb;
    goto :goto_0

    .line 86
    :catch_0
    move-exception v10

    .line 87
    .local v10, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "MotuCrashAdapter"

    const-string/jumbo v4, "base64 and gzip err"

    invoke-static {v3, v4, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    .end local v6    # "timestamp":J
    .end local v8    # "tag":Ljava/lang/String;
    .end local v9    # "type":Ljava/lang/String;
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v11    # "reportBuilder":Lc8/gSb;
    .end local v13    # "exceptionModule":Lc8/dSb;
    .end local v15    # "reportName":Ljava/lang/String;
    .end local v19    # "sendModule":Lc8/rSb;
    :cond_1
    const/16 v19, 0x0

    goto :goto_1
.end method
