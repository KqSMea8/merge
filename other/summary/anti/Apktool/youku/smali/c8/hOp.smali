.class public final Lc8/hOp;
.super Ljava/lang/Object;
.source "MtopFeatureManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/gOp;,
        Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.MtopFeatureManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static getMtopFeatureByFeatureEnum(Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;)I
    .locals 3
    .param p0, "featureEnum"    # Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;

    .prologue
    const/4 v0, 0x0

    .line 69
    if-nez p0, :cond_0

    .line 86
    :goto_0
    return v0

    .line 72
    :cond_0
    sget-object v1, Lc8/gOp;->$SwitchMap$mtopsdk$mtop$features$MtopFeatureManager$MtopFeatureEnum:[I

    invoke-virtual {p0}, Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 74
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 76
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 78
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 80
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 82
    :pswitch_4
    const/4 v0, 0x5

    goto :goto_0

    .line 84
    :pswitch_5
    const/4 v0, 0x6

    goto :goto_0

    .line 72
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static getMtopFeatureValue(I)J
    .locals 2
    .param p0, "feature"    # I

    .prologue
    .line 120
    if-gtz p0, :cond_0

    .line 121
    const-wide/16 v0, 0x0

    .line 123
    :goto_0
    return-wide v0

    :cond_0
    const/4 v0, 0x1

    add-int/lit8 v1, p0, -0x1

    shl-int/2addr v0, v1

    int-to-long v0, v0

    goto :goto_0
.end method

.method public static getMtopTotalFeatures(Lc8/AOp;)J
    .locals 10
    .param p0, "mtopInstance"    # Lc8/AOp;

    .prologue
    .line 36
    const-wide/16 v6, 0x0

    .line 37
    .local v6, "totalFeature":J
    if-nez p0, :cond_0

    const/4 v5, 0x0

    invoke-static {v5}, Lc8/AOp;->instance(Landroid/content/Context;)Lc8/AOp;

    move-result-object v3

    .line 40
    .local v3, "mtop":Lc8/AOp;
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Lc8/AOp;->getMtopConfig()Lc8/kOp;

    move-result-object v5

    iget-object v4, v5, Lc8/kOp;->mtopFeatures:Ljava/util/Set;

    .line 41
    .local v4, "mtopFeatures":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 42
    .local v1, "feature":I
    invoke-static {v1}, Lc8/hOp;->getMtopFeatureValue(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    or-long/2addr v6, v8

    .line 43
    goto :goto_1

    .end local v1    # "feature":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "mtop":Lc8/AOp;
    .end local v4    # "mtopFeatures":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_0
    move-object v3, p0

    .line 37
    goto :goto_0

    .line 44
    .restart local v3    # "mtop":Lc8/AOp;
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "mtopsdk.MtopFeatureManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lc8/AOp;->getInstanceId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " [getMtopTotalFeatures] get mtop total features error.---"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lc8/BMp;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-wide v6
.end method

.method public static setMtopFeatureFlag(Lc8/AOp;IZ)V
    .locals 5
    .param p0, "mtopInstance"    # Lc8/AOp;
    .param p1, "feature"    # I
    .param p2, "openFlag"    # Z

    .prologue
    .line 100
    if-nez p0, :cond_1

    const/4 v2, 0x0

    invoke-static {v2}, Lc8/AOp;->instance(Landroid/content/Context;)Lc8/AOp;

    move-result-object v0

    .line 101
    .local v0, "mtop":Lc8/AOp;
    :goto_0
    invoke-virtual {v0}, Lc8/AOp;->getMtopConfig()Lc8/kOp;

    move-result-object v2

    iget-object v1, v2, Lc8/kOp;->mtopFeatures:Ljava/util/Set;

    .line 102
    .local v1, "mtopFeatures":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-eqz p2, :cond_2

    .line 103
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 107
    :goto_1
    sget-object v2, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v2}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    const-string/jumbo v2, "mtopsdk.MtopFeatureManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lc8/AOp;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " [setMtopFeatureFlag] set feature="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " , openFlag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_0
    return-void

    .end local v0    # "mtop":Lc8/AOp;
    .end local v1    # "mtopFeatures":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_1
    move-object v0, p0

    .line 100
    goto :goto_0

    .line 105
    .restart local v0    # "mtop":Lc8/AOp;
    .restart local v1    # "mtopFeatures":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private static setMtopFeatureFlag(Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;Z)V
    .locals 2
    .param p0, "featureEnum"    # Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;
    .param p1, "openFlag"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 60
    if-nez p0, :cond_0

    .line 64
    :goto_0
    return-void

    .line 63
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0}, Lc8/hOp;->getMtopFeatureByFeatureEnum(Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;)I

    move-result v1

    invoke-static {v0, v1, p1}, Lc8/hOp;->setMtopFeatureFlag(Lc8/AOp;IZ)V

    goto :goto_0
.end method
