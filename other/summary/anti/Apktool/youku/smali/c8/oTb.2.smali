.class public Lc8/oTb;
.super Ljava/lang/Object;
.source "SendManager.java"

# interfaces
.implements Lc8/pTb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/qTb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DefaultSender"
.end annotation


# instance fields
.field mConfiguration:Lc8/LSb;

.field mContext:Landroid/content/Context;

.field mReporterContext:Lc8/kTb;

.field final synthetic this$0:Lc8/qTb;


# direct methods
.method public constructor <init>(Lc8/qTb;Landroid/content/Context;Lc8/kTb;Lc8/LSb;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "reporterContext"    # Lc8/kTb;
    .param p4, "configuration"    # Lc8/LSb;

    .prologue
    .line 180
    iput-object p1, p0, Lc8/oTb;->this$0:Lc8/qTb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-object p2, p0, Lc8/oTb;->mContext:Landroid/content/Context;

    .line 182
    iput-object p3, p0, Lc8/oTb;->mReporterContext:Lc8/kTb;

    .line 183
    iput-object p4, p0, Lc8/oTb;->mConfiguration:Lc8/LSb;

    .line 185
    iget-object v0, p0, Lc8/oTb;->mConfiguration:Lc8/LSb;

    const-string/jumbo v1, "Configuration.enableSecuritySDK"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lc8/LSb;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    invoke-static {}, Lc8/gUb;->enableSecuritySDK()V

    .line 187
    iget-object v0, p0, Lc8/oTb;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lc8/gUb;->setContext(Landroid/content/Context;)V

    .line 189
    :cond_0
    return-void
.end method


# virtual methods
.method public sendReport(Lc8/NSb;)Z
    .locals 21
    .param p1, "crashReport"    # Lc8/NSb;

    .prologue
    .line 193
    if-nez p1, :cond_0

    .line 194
    const/4 v2, 0x1

    .line 221
    :goto_0
    return v2

    .line 197
    :cond_0
    const-string/jumbo v2, "java"

    move-object/from16 v0, p1

    iget-object v4, v0, Lc8/NSb;->mReportType:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 198
    const/4 v7, 0x1

    .line 209
    .local v7, "eventId":I
    :goto_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 210
    .local v3, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p1

    iget-object v2, v0, Lc8/NSb;->mPropertys:Lc8/bTb;

    invoke-virtual {v2, v3}, Lc8/bTb;->copyTo(Ljava/util/Map;)V

    .line 212
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/oTb;->mConfiguration:Lc8/LSb;

    const-string/jumbo v4, "Configuration.enableReportContentCompress"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lc8/LSb;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 214
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lc8/NSb;->getReportContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lc8/JTb;->compress([B)[B

    move-result-object v2

    invoke-static {v2}, Lc8/ITb;->encodeBase64String([B)Ljava/lang/String;

    move-result-object v9

    .line 215
    .local v9, "content":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/oTb;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string/jumbo v6, "-"

    const-string/jumbo v8, "MOTU_REPORTER_SDK_3.0.0_PRIVATE_COMPRESS"

    const-string/jumbo v10, "-"

    const/4 v11, 0x0

    invoke-static/range {v2 .. v11}, Lc8/fUb;->sendLog(Landroid/content/Context;Ljava/util/Map;JLjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 199
    .end local v3    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "eventId":I
    .end local v9    # "content":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "native"

    move-object/from16 v0, p1

    iget-object v4, v0, Lc8/NSb;->mReportType:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "anr"

    move-object/from16 v0, p1

    iget-object v4, v0, Lc8/NSb;->mReportType:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 201
    :cond_2
    const v7, 0xee4e

    .restart local v7    # "eventId":I
    goto :goto_1

    .line 203
    .end local v7    # "eventId":I
    :cond_3
    const-string/jumbo v2, "unsupport report type:%s path:%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p1

    iget-object v6, v0, Lc8/NSb;->mReportType:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p1

    iget-object v6, v0, Lc8/NSb;->mReportPath:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/USb;->i(Ljava/lang/String;)V

    .line 206
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 217
    .restart local v3    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v7    # "eventId":I
    :catch_0
    move-exception v20

    .line 218
    .local v20, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "compress crash report content"

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Lc8/USb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 221
    .end local v20    # "e":Ljava/lang/Exception;
    :cond_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lc8/oTb;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-string/jumbo v14, "-"

    const-string/jumbo v16, "MOTU_REPORTER_SDK_3.0.0_PRIVATE"

    invoke-virtual/range {p1 .. p1}, Lc8/NSb;->getReportContent()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "-"

    const/16 v19, 0x0

    move-object v11, v3

    move v15, v7

    invoke-static/range {v10 .. v19}, Lc8/fUb;->sendLog(Landroid/content/Context;Ljava/util/Map;JLjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)Z

    move-result v2

    goto/16 :goto_0
.end method
