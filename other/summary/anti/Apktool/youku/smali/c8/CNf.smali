.class public Lc8/CNf;
.super Ljava/lang/Object;
.source "TBImageUrlStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/BNf;,
        Lcom/taobao/tao/util/TBImageUrlStrategy$ImageSharpen;,
        Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;,
        Lcom/taobao/tao/util/TBImageUrlStrategy$CutType;,
        Lc8/ANf;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final END_IMAGE_URL:Ljava/lang/String; = "END_IMAGE_URL"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    return-void
.end method

.method synthetic constructor <init>(Lc8/zNf;)V
    .locals 0
    .param p1, "x0"    # Lc8/zNf;

    .prologue
    .line 11
    invoke-direct {p0}, Lc8/CNf;-><init>()V

    return-void
.end method

.method private decideUrl(Ljava/lang/String;ILc8/ANf;JIILcom/taobao/tao/util/TBImageUrlStrategy$CutType;ZZZ)Ljava/lang/String;
    .locals 11
    .param p1, "baseurl"    # Ljava/lang/String;
    .param p2, "uisize"    # I
    .param p3, "areaName"    # Lc8/ANf;
    .param p4, "catId"    # J
    .param p6, "scaleWidth"    # I
    .param p7, "scaleHeight"    # I
    .param p8, "cutType"    # Lcom/taobao/tao/util/TBImageUrlStrategy$CutType;
    .param p9, "useWebp"    # Z
    .param p10, "useQuality"    # Z
    .param p11, "isDefault"    # Z

    .prologue
    .line 272
    invoke-static {}, Lc8/HNf;->getInstance()Lc8/HNf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/HNf;->isCdnImage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    const-string/jumbo v0, "STRATEGY.ALL"

    const-string/jumbo v1, "origin not cdn url:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lc8/oHf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 287
    .end local p1    # "baseurl":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 279
    .restart local p1    # "baseurl":Ljava/lang/String;
    :cond_0
    sget-object v0, Lc8/zNf;->$SwitchMap$com$taobao$tao$util$TBImageUrlStrategy$CutType:[I

    invoke-virtual/range {p8 .. p8}, Lcom/taobao/tao/util/TBImageUrlStrategy$CutType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 284
    sget-object v4, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;->non:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;

    .line 287
    .local v4, "taoCutType":Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;
    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc8/HNf;->getInstance()Lc8/HNf;

    move-result-object v0

    .line 288
    invoke-virtual {p3}, Lc8/ANf;->getArea()Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    move v2, p2

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p9

    move/from16 v8, p10

    move/from16 v9, p11

    .line 287
    invoke-virtual/range {v0 .. v9}, Lc8/HNf;->decideUrl(Ljava/lang/String;ILjava/lang/String;Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;IIZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "END_IMAGE_URL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 281
    .end local v4    # "taoCutType":Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;
    :pswitch_0
    sget-object v4, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;->xz:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;

    .line 282
    .restart local v4    # "taoCutType":Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;
    goto :goto_1

    .line 279
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getInstance()Lc8/CNf;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lc8/BNf;->instance:Lc8/CNf;

    return-object v0
.end method


# virtual methods
.method public convergenceUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 294
    invoke-static {}, Lc8/HNf;->getInstance()Lc8/HNf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/HNf;->convergenceUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public decideLowNetUrl(Ljava/lang/String;ILc8/ANf;Lcom/taobao/tao/util/TBImageUrlStrategy$CutType;)Ljava/lang/String;
    .locals 12
    .param p1, "baseurl"    # Ljava/lang/String;
    .param p2, "uisize"    # I
    .param p3, "areaName"    # Lc8/ANf;
    .param p4, "cutType"    # Lcom/taobao/tao/util/TBImageUrlStrategy$CutType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 153
    const-wide/16 v4, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object/from16 v8, p4

    invoke-direct/range {v0 .. v11}, Lc8/CNf;->decideUrl(Ljava/lang/String;ILc8/ANf;JIILcom/taobao/tao/util/TBImageUrlStrategy$CutType;ZZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public decideLowNetUrl(Ljava/lang/String;ILc8/ANf;Lcom/taobao/tao/util/TBImageUrlStrategy$CutType;JIILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 13
    .param p1, "baseurl"    # Ljava/lang/String;
    .param p2, "uisize"    # I
    .param p3, "areaName"    # Lc8/ANf;
    .param p4, "cutType"    # Lcom/taobao/tao/util/TBImageUrlStrategy$CutType;
    .param p5, "catId"    # J
    .param p7, "scaleWidth"    # I
    .param p8, "scaleHeight"    # I
    .param p9, "imageQuality"    # Ljava/lang/String;
    .param p10, "imageSharpen"    # Ljava/lang/String;
    .param p11, "useWebp"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 182
    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p5

    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p4

    move/from16 v9, p11

    invoke-direct/range {v0 .. v11}, Lc8/CNf;->decideUrl(Ljava/lang/String;ILc8/ANf;JIILcom/taobao/tao/util/TBImageUrlStrategy$CutType;ZZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public decideLowNetUrl(Ljava/lang/String;ILc8/ANf;Lcom/taobao/tao/util/TBImageUrlStrategy$CutType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "baseurl"    # Ljava/lang/String;
    .param p2, "uisize"    # I
    .param p3, "areaName"    # Lc8/ANf;
    .param p4, "cutType"    # Lcom/taobao/tao/util/TBImageUrlStrategy$CutType;
    .param p5, "imageQuality"    # Ljava/lang/String;
    .param p6, "imageSharpen"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 159
    const-wide/16 v4, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object/from16 v8, p4

    invoke-direct/range {v0 .. v11}, Lc8/CNf;->decideUrl(Ljava/lang/String;ILc8/ANf;JIILcom/taobao/tao/util/TBImageUrlStrategy$CutType;ZZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public decideUrl(Ljava/lang/String;I)Ljava/lang/String;
    .locals 9
    .param p1, "baseurl"    # Ljava/lang/String;
    .param p2, "uisize"    # I

    .prologue
    const/4 v6, -0x1

    .line 191
    sget-object v3, Lc8/ANf;->non:Lc8/ANf;

    const-wide/16 v4, 0x0

    sget-object v8, Lcom/taobao/tao/util/TBImageUrlStrategy$CutType;->non:Lcom/taobao/tao/util/TBImageUrlStrategy$CutType;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v7, v6

    invoke-virtual/range {v0 .. v8}, Lc8/CNf;->decideUrl(Ljava/lang/String;ILc8/ANf;JIILcom/taobao/tao/util/TBImageUrlStrategy$CutType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public decideUrl(Ljava/lang/String;ILc8/ANf;)Ljava/lang/String;
    .locals 9
    .param p1, "baseurl"    # Ljava/lang/String;
    .param p2, "uisize"    # I
    .param p3, "areaName"    # Lc8/ANf;

    .prologue
    const/4 v6, -0x1

    .line 211
    const-wide/16 v4, 0x0

    sget-object v8, Lcom/taobao/tao/util/TBImageUrlStrategy$CutType;->non:Lcom/taobao/tao/util/TBImageUrlStrategy$CutType;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v7, v6

    invoke-virtual/range {v0 .. v8}, Lc8/CNf;->decideUrl(Ljava/lang/String;ILc8/ANf;JIILcom/taobao/tao/util/TBImageUrlStrategy$CutType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public decideUrl(Ljava/lang/String;ILc8/ANf;J)Ljava/lang/String;
    .locals 10
    .param p1, "baseurl"    # Ljava/lang/String;
    .param p2, "uisize"    # I
    .param p3, "areaName"    # Lc8/ANf;
    .param p4, "catId"    # J

    .prologue
    const/4 v6, -0x1

    .line 222
    sget-object v8, Lcom/taobao/tao/util/TBImageUrlStrategy$CutType;->non:Lcom/taobao/tao/util/TBImageUrlStrategy$CutType;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v7, v6

    invoke-virtual/range {v0 .. v8}, Lc8/CNf;->decideUrl(Ljava/lang/String;ILc8/ANf;JIILcom/taobao/tao/util/TBImageUrlStrategy$CutType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public decideUrl(Ljava/lang/String;ILc8/ANf;JIILcom/taobao/tao/util/TBImageUrlStrategy$CutType;)Ljava/lang/String;
    .locals 12
    .param p1, "baseurl"    # Ljava/lang/String;
    .param p2, "uisize"    # I
    .param p3, "areaName"    # Lc8/ANf;
    .param p4, "catId"    # J
    .param p6, "scaleWidth"    # I
    .param p7, "scaleHeight"    # I
    .param p8, "cutType"    # Lcom/taobao/tao/util/TBImageUrlStrategy$CutType;

    .prologue
    .line 237
    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v11}, Lc8/CNf;->decideUrl(Ljava/lang/String;ILc8/ANf;JIILcom/taobao/tao/util/TBImageUrlStrategy$CutType;ZZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public decideUrl(Ljava/lang/String;ILc8/ANf;JZZZ)Ljava/lang/String;
    .locals 12
    .param p1, "baseurl"    # Ljava/lang/String;
    .param p2, "uisize"    # I
    .param p3, "areaName"    # Lc8/ANf;
    .param p4, "catId"    # J
    .param p6, "useWebp"    # Z
    .param p7, "useQuality"    # Z
    .param p8, "isDefault"    # Z

    .prologue
    .line 252
    const/4 v6, -0x1

    const/4 v7, -0x1

    sget-object v8, Lcom/taobao/tao/util/TBImageUrlStrategy$CutType;->non:Lcom/taobao/tao/util/TBImageUrlStrategy$CutType;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-wide/from16 v4, p4

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-direct/range {v0 .. v11}, Lc8/CNf;->decideUrl(Ljava/lang/String;ILc8/ANf;JIILcom/taobao/tao/util/TBImageUrlStrategy$CutType;ZZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public decideUrl(Ljava/lang/String;ILcom/taobao/tao/util/TBImageUrlStrategy$CutType;)Ljava/lang/String;
    .locals 9
    .param p1, "baseurl"    # Ljava/lang/String;
    .param p2, "uisize"    # I
    .param p3, "cuttype"    # Lcom/taobao/tao/util/TBImageUrlStrategy$CutType;

    .prologue
    const/4 v6, -0x1

    .line 201
    sget-object v3, Lc8/ANf;->non:Lc8/ANf;

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v7, v6

    move-object v8, p3

    invoke-virtual/range {v0 .. v8}, Lc8/CNf;->decideUrl(Ljava/lang/String;ILc8/ANf;JIILcom/taobao/tao/util/TBImageUrlStrategy$CutType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public decideUrl10000Height(Ljava/lang/String;ILc8/ANf;J)Ljava/lang/String;
    .locals 10
    .param p1, "baseurl"    # Ljava/lang/String;
    .param p2, "uisize"    # I
    .param p3, "areaName"    # Lc8/ANf;
    .param p4, "catId"    # J

    .prologue
    .line 129
    const/4 v6, 0x0

    const/16 v7, 0x2710

    sget-object v8, Lcom/taobao/tao/util/TBImageUrlStrategy$CutType;->non:Lcom/taobao/tao/util/TBImageUrlStrategy$CutType;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v8}, Lc8/CNf;->decideUrl(Ljava/lang/String;ILc8/ANf;JIILcom/taobao/tao/util/TBImageUrlStrategy$CutType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public decideUrl10000Width(Ljava/lang/String;ILc8/ANf;J)Ljava/lang/String;
    .locals 10
    .param p1, "baseurl"    # Ljava/lang/String;
    .param p2, "uisize"    # I
    .param p3, "areaName"    # Lc8/ANf;
    .param p4, "catId"    # J

    .prologue
    .line 140
    const/16 v6, 0x2710

    const/4 v7, 0x0

    sget-object v8, Lcom/taobao/tao/util/TBImageUrlStrategy$CutType;->non:Lcom/taobao/tao/util/TBImageUrlStrategy$CutType;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v8}, Lc8/CNf;->decideUrl(Ljava/lang/String;ILc8/ANf;JIILcom/taobao/tao/util/TBImageUrlStrategy$CutType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setQuality(I)V
    .locals 0
    .param p1, "quality"    # I

    .prologue
    .line 119
    return-void
.end method
