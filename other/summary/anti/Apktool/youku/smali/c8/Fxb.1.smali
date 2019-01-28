.class public Lc8/Fxb;
.super Ljava/lang/Object;
.source "SpmMonitor.java"


# static fields
.field private static final default_ab:Ljava/lang/String; = "0.0"

.field private static final s_AUTO_SPMD:Ljava/lang/String; = "dataAutoSpmd"

.field private static final s_AUTO_SPMD_MAX_IDX:Ljava/lang/String; = "dataAutoSpmdMaxIdx"

.field private static final s_DATA_SPM_ANCHOR_ID:Ljava/lang/String; = "dataSpmAnchorId"

.field private static final s_SPM_ATTR_NAME:Ljava/lang/String; = "dataSpm"

.field private static final s_SPM_ID_ATTR_NAME:Ljava/lang/String; = "spmId"

.field private static final s_SPM_MAX_IDX:Ljava/lang/String; = "dataSpmMaxIdx"


# instance fields
.field private spm_id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lc8/tbg;)V
    .locals 2
    .param p1, "el"    # Lc8/tbg;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/Fxb;->spm_id:Ljava/lang/String;

    .line 36
    if-eqz p1, :cond_1

    .line 37
    invoke-virtual {p1}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v0

    const-string/jumbo v1, "spmId"

    invoke-direct {p0, v0, v1}, Lc8/Fxb;->tryToGetAttribute(Lc8/qYf;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/Fxb;->spm_id:Ljava/lang/String;

    .line 39
    iget-object v0, p0, Lc8/Fxb;->spm_id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "^[\\w\\-\\.\\/]+$"

    iget-object v1, p0, Lc8/Fxb;->spm_id:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 40
    :cond_0
    const-string/jumbo v0, "0.0"

    iput-object v0, p0, Lc8/Fxb;->spm_id:Ljava/lang/String;

    .line 43
    :cond_1
    return-void
.end method

.method private getElementsByTagName(Lc8/tbg;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "el"    # Lc8/tbg;
    .param p2, "tagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/tbg;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lc8/tbg;",
            ">;"
        }
    .end annotation

    .prologue
    .line 638
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 639
    .local v3, "els":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/taobao/weex/ui/component/WXComponent;>;"
    instance-of v6, p1, Lc8/scg;

    if-eqz v6, :cond_2

    move-object v1, p1

    .line 640
    check-cast v1, Lc8/scg;

    .line 641
    .local v1, "container":Lc8/scg;
    invoke-virtual {v1}, Lc8/scg;->getChildCount()I

    move-result v6

    if-lez v6, :cond_2

    .line 642
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v1}, Lc8/scg;->getChildCount()I

    move-result v6

    if-ge v4, v6, :cond_2

    .line 643
    invoke-virtual {v1, v4}, Lc8/scg;->getChild(I)Lc8/tbg;

    move-result-object v0

    .line 644
    .local v0, "child":Lc8/tbg;
    invoke-virtual {v0}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v2

    .line 645
    .local v2, "domObj":Lc8/qYf;
    invoke-interface {v2}, Lc8/qYf;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 646
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    :cond_0
    invoke-direct {p0, v0, p2}, Lc8/Fxb;->getElementsByTagName(Lc8/tbg;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 649
    .local v5, "sub":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/taobao/weex/ui/component/WXComponent;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 650
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 642
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 655
    .end local v0    # "child":Lc8/tbg;
    .end local v1    # "container":Lc8/scg;
    .end local v2    # "domObj":Lc8/qYf;
    .end local v4    # "i":I
    .end local v5    # "sub":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/taobao/weex/ui/component/WXComponent;>;"
    :cond_2
    return-object v3
.end method

.method private getGlobalSPMId(Lc8/tbg;)Ljava/lang/String;
    .locals 4
    .param p1, "el"    # Lc8/tbg;

    .prologue
    .line 592
    iget-object v2, p0, Lc8/Fxb;->spm_id:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 593
    iget-object v0, p0, Lc8/Fxb;->spm_id:Ljava/lang/String;

    .line 611
    :cond_0
    :goto_0
    return-object v0

    .line 595
    :cond_1
    invoke-virtual {p1}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v2

    const-string/jumbo v3, "spmId"

    invoke-direct {p0, v2, v3}, Lc8/Fxb;->tryToGetAttribute(Lc8/qYf;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 597
    .local v0, "spm_id":Ljava/lang/String;
    :cond_2
    if-eqz p1, :cond_3

    .line 598
    invoke-virtual {p1}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v2

    const-string/jumbo v3, "spmId"

    invoke-direct {p0, v2, v3}, Lc8/Fxb;->tryToGetAttribute(Lc8/qYf;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 599
    .local v1, "tmp_val":Ljava/lang/String;
    const-string/jumbo v2, "_root"

    invoke-virtual {p1}, Lc8/tbg;->getRef()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 600
    move-object v0, v1

    .line 607
    .end local v1    # "tmp_val":Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "^[\\w\\-\\.\\/]+$"

    invoke-static {v2, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 608
    const-string/jumbo v0, "0.0"

    goto :goto_0

    .line 603
    .restart local v1    # "tmp_val":Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Lc8/tbg;->getParent()Lc8/scg;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1
.end method

.method private getSPMData()Landroid/support/v4/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 615
    iget-object v1, p0, Lc8/Fxb;->spm_id:Ljava/lang/String;

    const-string/jumbo v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 616
    .local v0, "spm":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    new-instance v1, Landroid/support/v4/util/Pair;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-direct {v1, v2, v3}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Landroid/support/v4/util/Pair;

    const-string/jumbo v2, "0"

    const-string/jumbo v3, "0"

    invoke-direct {v1, v2, v3}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private isNumber(Ljava/lang/String;)Z
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 701
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 708
    :cond_0
    :goto_0
    return v1

    .line 702
    :cond_1
    const/4 v0, -0x1

    .line 704
    .local v0, "result":I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 708
    :goto_1
    if-ltz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private parseInt(Ljava/lang/String;)I
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 686
    const/4 v1, 0x0

    .line 687
    .local v1, "result":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    .line 697
    .end local v1    # "result":I
    .local v2, "result":I
    :goto_0
    return v2

    .line 689
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    :goto_1
    move v2, v1

    .line 697
    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto :goto_0

    .line 690
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :catch_0
    move-exception v0

    .line 691
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 692
    const/4 v1, 0x0

    goto :goto_1

    .line 693
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v3

    throw v3
.end method

.method private setAttribute(Lc8/qYf;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "el"    # Lc8/qYf;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 682
    invoke-interface {p1}, Lc8/qYf;->getAttrs()Lc8/xYf;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lc8/xYf;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    return-void
.end method

.method private spmAnchorEnsureSPMIdInHref(Lc8/qYf;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "anchor"    # Lc8/qYf;
    .param p2, "aSpmId"    # Ljava/lang/String;
    .param p3, "isNotChangeHref"    # Z

    .prologue
    .line 407
    iget-object v1, p0, Lc8/Fxb;->spm_id:Ljava/lang/String;

    .line 409
    .local v1, "spm_ab":Ljava/lang/String;
    const-string/jumbo v2, "dataSpmAnchorId"

    invoke-direct {p0, p1, v2, p2}, Lc8/Fxb;->setAttribute(Lc8/qYf;Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "0.0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 438
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    invoke-direct {p0, p1}, Lc8/Fxb;->tryToGetHref(Lc8/qYf;)Ljava/lang/String;

    move-result-object v0

    .line 430
    .local v0, "href":Ljava/lang/String;
    if-nez p3, :cond_0

    .line 434
    invoke-direct {p0, v0, p2}, Lc8/Fxb;->spmUpdateHrefWithSPMId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 435
    invoke-direct {p0, p1, v0}, Lc8/Fxb;->spmWriteHref(Lc8/qYf;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private spmDealNoneSPMLink(Lc8/qYf;Z)V
    .locals 11
    .param p1, "el_a"    # Lc8/qYf;
    .param p2, "isNotChangeHref"    # Z

    .prologue
    const/4 v10, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 118
    iget-object v5, p0, Lc8/Fxb;->spm_id:Ljava/lang/String;

    .line 119
    .local v5, "spm_ab":Ljava/lang/String;
    invoke-direct {p0, p1}, Lc8/Fxb;->tryToGetHref(Lc8/qYf;)Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "href":Ljava/lang/String;
    invoke-direct {p0, v2}, Lc8/Fxb;->spmGetSPMIdFromHref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 122
    .local v6, "spm_in_href":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string/jumbo v9, "\\."

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v9, v9

    if-ne v9, v10, :cond_0

    move v4, v7

    .line 124
    .local v4, "meta_spm_is_valid":Z
    :goto_0
    if-eqz v4, :cond_5

    .line 127
    const/4 v9, 0x3

    new-array v1, v9, [Ljava/lang/String;

    aput-object v5, v1, v8

    const-string/jumbo v8, "0"

    aput-object v8, v1, v7

    invoke-direct {p0, p1}, Lc8/Fxb;->spmGetAnchor4thIdSpmD(Lc8/qYf;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string/jumbo v7, "0"

    :goto_1
    aput-object v7, v1, v10

    .line 128
    .local v1, "a_spm":[Ljava/lang/String;
    const-string/jumbo v0, ""

    .line 129
    .local v0, "aSpmId":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v7, v1

    if-ge v3, v7, :cond_3

    .line 130
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v1, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v7, v1

    add-int/lit8 v7, v7, -0x1

    if-ne v3, v7, :cond_2

    const-string/jumbo v7, ""

    :goto_3
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v0    # "aSpmId":Ljava/lang/String;
    .end local v1    # "a_spm":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "meta_spm_is_valid":Z
    :cond_0
    move v4, v8

    .line 122
    goto :goto_0

    .line 127
    .restart local v4    # "meta_spm_is_valid":Z
    :cond_1
    invoke-direct {p0, p1}, Lc8/Fxb;->spmGetAnchor4thIdSpmD(Lc8/qYf;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 130
    .restart local v0    # "aSpmId":Ljava/lang/String;
    .restart local v1    # "a_spm":[Ljava/lang/String;
    .restart local v3    # "i":I
    :cond_2
    const-string/jumbo v7, "."

    goto :goto_3

    .line 132
    :cond_3
    invoke-direct {p0, p1, v0, p2}, Lc8/Fxb;->spmAnchorEnsureSPMIdInHref(Lc8/qYf;Ljava/lang/String;Z)V

    .line 145
    .end local v0    # "aSpmId":Ljava/lang/String;
    .end local v1    # "a_spm":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_4
    :goto_4
    return-void

    .line 137
    :cond_5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 138
    const-string/jumbo v7, "&?\\bspm=[^&#]*"

    const-string/jumbo v8, ""

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "&{2,}"

    const-string/jumbo v9, "&"

    .line 139
    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "\\?&"

    const-string/jumbo v9, "?"

    .line 140
    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "\\?$"

    const-string/jumbo v9, ""

    .line 141
    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "\\?#"

    const-string/jumbo v9, "#"

    .line 142
    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 143
    invoke-direct {p0, p1, v2}, Lc8/Fxb;->spmWriteHref(Lc8/qYf;Ljava/lang/String;)V

    goto :goto_4
.end method

.method private spmGetAnchor4thIdSpmD(Lc8/qYf;)Ljava/lang/String;
    .locals 4
    .param p1, "el"    # Lc8/qYf;

    .prologue
    .line 385
    invoke-direct {p0}, Lc8/Fxb;->getSPMData()Landroid/support/v4/util/Pair;

    move-result-object v1

    .line 387
    .local v1, "spm_data":Landroid/support/v4/util/Pair;
    iget-object v2, v1, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    const-string/jumbo v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    const-string/jumbo v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 388
    const-string/jumbo v0, "0"

    .line 397
    .local v0, "spm_d":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 391
    .end local v0    # "spm_d":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "dataSpm"

    invoke-direct {p0, p1, v2}, Lc8/Fxb;->tryToGetAttribute(Lc8/qYf;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 392
    .restart local v0    # "spm_d":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "^d\\w+$"

    invoke-static {v2, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 393
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private spmGetModuleLinks(Lc8/tbg;Z)Ljava/util/ArrayList;
    .locals 11
    .param p1, "el"    # Lc8/tbg;
    .param p2, "isAutoSpmD"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/tbg;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lc8/tbg;",
            ">;"
        }
    .end annotation

    .prologue
    .line 285
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 291
    .local v2, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/taobao/weex/ui/component/WXComponent;>;"
    const-string/jumbo v9, "a"

    invoke-direct {p0, p1, v9}, Lc8/Fxb;->getElementsByTagName(Lc8/tbg;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 293
    .local v4, "els_a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/taobao/weex/ui/component/WXComponent;>;"
    move-object v1, v4

    .line 295
    .local v1, "anchors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/taobao/weex/ui/component/WXComponent;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    .local v7, "l":I
    :goto_0
    if-ge v5, v7, :cond_4

    .line 296
    const/4 v6, 0x0

    .line 297
    .local v6, "is_in_child_module":Z
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/tbg;

    .local v0, "anchor":Lc8/tbg;
    move-object v8, v0

    .line 298
    .local v8, "tmp_el":Lc8/tbg;
    :cond_0
    invoke-virtual {v8}, Lc8/tbg;->getParent()Lc8/scg;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 299
    if-eq v8, p1, :cond_1

    .line 300
    invoke-virtual {v8}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v9

    const-string/jumbo v10, "dataSpm"

    invoke-direct {p0, v9, v10}, Lc8/Fxb;->tryToGetAttribute(Lc8/qYf;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 302
    const/4 v6, 0x1

    .line 306
    :cond_1
    if-nez v6, :cond_2

    .line 307
    invoke-virtual {v0}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v9

    const-string/jumbo v10, "dataAutoSpmd"

    invoke-direct {p0, v9, v10}, Lc8/Fxb;->tryToGetAttribute(Lc8/qYf;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 308
    .local v3, "auto_spmd":Ljava/lang/String;
    if-nez p2, :cond_3

    const-string/jumbo v9, "t"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 309
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    .end local v3    # "auto_spmd":Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 310
    .restart local v3    # "auto_spmd":Ljava/lang/String;
    :cond_3
    if-eqz p2, :cond_2

    const-string/jumbo v9, "t"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 311
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 316
    .end local v0    # "anchor":Lc8/tbg;
    .end local v3    # "auto_spmd":Ljava/lang/String;
    .end local v6    # "is_in_child_module":Z
    .end local v8    # "tmp_el":Lc8/tbg;
    :cond_4
    return-object v2
.end method

.method private spmGetSPMIdFromHref(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "href"    # Ljava/lang/String;

    .prologue
    .line 370
    const-string/jumbo v2, ""

    .line 371
    .local v2, "result":Ljava/lang/String;
    const-string/jumbo v3, "&?\\bspm=([^&#]*)"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 372
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 373
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 374
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 376
    :cond_0
    return-object v2
.end method

.method private spmInitSPMModule(Lc8/tbg;Ljava/lang/String;ZZ)V
    .locals 22
    .param p1, "module"    # Lc8/tbg;
    .param p2, "spmC"    # Ljava/lang/String;
    .param p3, "isNotChangeHref"    # Z
    .param p4, "isAutoSpmD"    # Z

    .prologue
    .line 173
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 174
    invoke-virtual/range {p1 .. p1}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v20

    const-string/jumbo v21, "dataSpm"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lc8/Fxb;->tryToGetAttribute(Lc8/qYf;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 176
    :cond_0
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 270
    :cond_1
    :goto_0
    return-void

    .line 177
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lc8/Fxb;->spmGetModuleLinks(Lc8/tbg;Z)Ljava/util/ArrayList;

    move-result-object v8

    .line 178
    .local v8, "anchors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/taobao/weex/ui/component/WXComponent;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-eqz v20, :cond_1

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Fxb;->spm_id:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 187
    .local v18, "page_g_spm_id":Ljava/lang/String;
    const-string/jumbo v20, "^[\\w\\-\\*]+(\\.[\\w\\-\\*\\/]+)?$"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 188
    const-string/jumbo v20, "."

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_7

    .line 193
    const-string/jumbo v20, "."

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_3

    .line 195
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ".0"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 197
    :cond_3
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x2e

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 213
    :cond_4
    const-string/jumbo v20, "^[\\w\\-\\*]+\\.[\\w\\-\\*\\/]+\\.[\\w\\-\\*\\/]+$"

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 215
    if-eqz p4, :cond_a

    const-string/jumbo v17, "dataAutoSpmdMaxIdx"

    .line 217
    .local v17, "max_id_attr":Ljava/lang/String;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lc8/Fxb;->tryToGetAttribute(Lc8/qYf;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lc8/Fxb;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 218
    .local v9, "current_module_max_spmid":I
    move v7, v9

    .line 219
    .local v7, "anchor_idx":I
    const/4 v14, 0x0

    .local v14, "j":I
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v15

    .local v15, "length":I
    :goto_2
    if-ge v14, v15, :cond_f

    .line 220
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc8/tbg;

    .line 221
    .local v6, "anchor":Lc8/tbg;
    invoke-virtual {v6}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lc8/Fxb;->tryToGetHref(Lc8/qYf;)Ljava/lang/String;

    move-result-object v10

    .line 223
    .local v10, "href":Ljava/lang/String;
    if-nez p4, :cond_5

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_6

    .line 229
    :cond_5
    invoke-virtual {v6}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v20

    const-string/jumbo v21, "dataSpmAnchorId"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lc8/Fxb;->tryToGetAttribute(Lc8/qYf;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 232
    .local v4, "a_spm_id":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_b

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lc8/Fxb;->spmIsSPMAnchorIdMatch(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 234
    invoke-virtual {v6}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, p3

    invoke-direct {v0, v1, v4, v2}, Lc8/Fxb;->spmAnchorEnsureSPMIdInHref(Lc8/qYf;Ljava/lang/String;Z)V

    .line 219
    .end local v4    # "a_spm_id":Ljava/lang/String;
    :cond_6
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 199
    .end local v6    # "anchor":Lc8/tbg;
    .end local v7    # "anchor_idx":I
    .end local v9    # "current_module_max_spmid":I
    .end local v10    # "href":Ljava/lang/String;
    .end local v14    # "j":I
    .end local v15    # "length":I
    .end local v17    # "max_id_attr":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_4

    .line 200
    const-string/jumbo v20, "\\."

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 201
    .local v13, "ids0":[Ljava/lang/String;
    const-string/jumbo v20, "\\."

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 203
    .local v12, "ids":[Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "i":I
    array-length v15, v13

    .restart local v15    # "length":I
    :goto_4
    if-ge v11, v15, :cond_8

    .line 204
    aget-object v20, v13, v11

    aput-object v20, v12, v11

    .line 203
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 206
    :cond_8
    const/4 v11, 0x0

    :goto_5
    array-length v0, v12

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v11, v0, :cond_4

    .line 207
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    aget-object v21, v12, v11

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    array-length v0, v12

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    if-ne v11, v0, :cond_9

    const-string/jumbo v20, ""

    :goto_6
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 206
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 207
    :cond_9
    const-string/jumbo v20, "."

    goto :goto_6

    .line 215
    .end local v11    # "i":I
    .end local v12    # "ids":[Ljava/lang/String;
    .end local v13    # "ids0":[Ljava/lang/String;
    .end local v15    # "length":I
    :cond_a
    const-string/jumbo v17, "dataSpmMaxIdx"

    goto/16 :goto_1

    .line 245
    .restart local v4    # "a_spm_id":Ljava/lang/String;
    .restart local v6    # "anchor":Lc8/tbg;
    .restart local v7    # "anchor_idx":I
    .restart local v9    # "current_module_max_spmid":I
    .restart local v10    # "href":Ljava/lang/String;
    .restart local v14    # "j":I
    .restart local v15    # "length":I
    .restart local v17    # "max_id_attr":Ljava/lang/String;
    :cond_b
    add-int/lit8 v7, v7, 0x1

    .line 246
    move v5, v7

    .line 249
    .local v5, "ab_idx":I
    invoke-virtual {v6}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lc8/Fxb;->spmGetAnchor4thIdSpmD(Lc8/qYf;)Ljava/lang/String;

    move-result-object v16

    .line 250
    .local v16, "manual":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_d

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    .line 251
    .local v19, "spm_d":Ljava/lang/String;
    :goto_7
    if-eqz p4, :cond_c

    .line 252
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "at"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lc8/Fxb;->isNumber(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_e

    const/16 v20, 0x3e8

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    :goto_8
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 259
    :cond_c
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x2e

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 262
    invoke-virtual {v6}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, p3

    invoke-direct {v0, v1, v4, v2}, Lc8/Fxb;->spmAnchorEnsureSPMIdInHref(Lc8/qYf;Ljava/lang/String;Z)V

    goto/16 :goto_3

    .end local v19    # "spm_d":Ljava/lang/String;
    :cond_d
    move-object/from16 v19, v16

    .line 250
    goto :goto_7

    .line 252
    .restart local v19    # "spm_d":Ljava/lang/String;
    :cond_e
    const-string/jumbo v20, ""

    goto :goto_8

    .line 269
    .end local v4    # "a_spm_id":Ljava/lang/String;
    .end local v5    # "ab_idx":I
    .end local v6    # "anchor":Lc8/tbg;
    .end local v10    # "href":Ljava/lang/String;
    .end local v16    # "manual":Ljava/lang/String;
    .end local v19    # "spm_d":Ljava/lang/String;
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v20

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lc8/Fxb;->setAttribute(Lc8/qYf;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private spmIsSPMAnchorIdMatch(Ljava/lang/String;)Z
    .locals 6
    .param p1, "spmAnchorId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 626
    iget-object v3, p0, Lc8/Fxb;->spm_id:Ljava/lang/String;

    .line 627
    .local v3, "spm_ab":Ljava/lang/String;
    const-string/jumbo v4, "\\."

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 628
    .local v1, "as":[Ljava/lang/String;
    const-string/jumbo v0, ""

    .line 629
    .local v0, "a":Ljava/lang/String;
    const-string/jumbo v2, ""

    .line 630
    .local v2, "b":Ljava/lang/String;
    array-length v4, v1

    if-le v4, v5, :cond_0

    .line 631
    const/4 v4, 0x0

    aget-object v0, v1, v4

    .line 632
    aget-object v2, v1, v5

    .line 634
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    return v4
.end method

.method private spmSpmAnchorChk(Lc8/tbg;Z)V
    .locals 5
    .param p1, "elA"    # Lc8/tbg;
    .param p2, "isNotChangeHref"    # Z

    .prologue
    .line 75
    invoke-virtual {p1}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v3

    const-string/jumbo v4, "dataSpmAnchorId"

    invoke-direct {p0, v3, v4}, Lc8/Fxb;->tryToGetAttribute(Lc8/qYf;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "a_spm_id":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0, v0}, Lc8/Fxb;->spmIsSPMAnchorIdMatch(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 85
    :cond_0
    invoke-virtual {p1}, Lc8/tbg;->getParent()Lc8/scg;

    move-result-object v3

    invoke-direct {p0, v3}, Lc8/Fxb;->spmSpmGetParentSPMId(Lc8/tbg;)Landroid/support/v4/util/Pair;

    move-result-object v2

    .line 87
    .local v2, "spm_data":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Ljava/lang/String;Lcom/taobao/weex/ui/component/WXComponent;>;"
    iget-object v1, v2, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 88
    .local v1, "spm_c":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 89
    invoke-virtual {p1}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lc8/Fxb;->spmDealNoneSPMLink(Lc8/qYf;Z)V

    .line 110
    .end local v1    # "spm_c":Ljava/lang/String;
    .end local v2    # "spm_data":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Ljava/lang/String;Lcom/taobao/weex/ui/component/WXComponent;>;"
    :goto_0
    return-void

    .line 95
    .restart local v1    # "spm_c":Ljava/lang/String;
    .restart local v2    # "spm_data":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Ljava/lang/String;Lcom/taobao/weex/ui/component/WXComponent;>;"
    :cond_1
    iget-object v3, v2, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lc8/tbg;

    const/4 v4, 0x0

    invoke-direct {p0, v3, v1, p2, v4}, Lc8/Fxb;->spmInitSPMModule(Lc8/tbg;Ljava/lang/String;ZZ)V

    .line 96
    iget-object v3, v2, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lc8/tbg;

    const/4 v4, 0x1

    invoke-direct {p0, v3, v1, p2, v4}, Lc8/Fxb;->spmInitSPMModule(Lc8/tbg;Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 108
    .end local v1    # "spm_c":Ljava/lang/String;
    .end local v2    # "spm_data":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Ljava/lang/String;Lcom/taobao/weex/ui/component/WXComponent;>;"
    :cond_2
    invoke-virtual {p1}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v3

    invoke-direct {p0, v3, v0, p2}, Lc8/Fxb;->spmAnchorEnsureSPMIdInHref(Lc8/qYf;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private spmSpmGetParentSPMId(Lc8/tbg;)Landroid/support/v4/util/Pair;
    .locals 5
    .param p1, "el"    # Lc8/tbg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/tbg;",
            ")",
            "Landroid/support/v4/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Lc8/tbg;",
            ">;"
        }
    .end annotation

    .prologue
    .line 327
    const-string/jumbo v0, ""

    .line 329
    .local v0, "spm_c":Ljava/lang/String;
    move-object v1, p1

    .line 330
    .local v1, "spm_el":Lc8/tbg;
    :cond_0
    if-eqz p1, :cond_1

    const-string/jumbo v3, "_root"

    invoke-virtual {p1}, Lc8/tbg;->getRef()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 331
    invoke-virtual {p1}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v3

    const-string/jumbo v4, "dataSpm"

    invoke-direct {p0, v3, v4}, Lc8/Fxb;->tryToGetAttribute(Lc8/qYf;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 332
    .local v2, "tmp_val":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 333
    move-object v0, v2

    .line 334
    move-object v1, p1

    .line 341
    .end local v2    # "tmp_val":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "^[\\w\\-\\.\\/]+$"

    invoke-static {v3, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 342
    const-string/jumbo v0, "0"

    .line 345
    :cond_2
    new-instance v3, Landroid/support/v4/util/Pair;

    invoke-direct {v3, v0, v1}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    .line 337
    .restart local v2    # "tmp_val":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lc8/tbg;->getParent()Lc8/scg;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0
.end method

.method private spmUpdateHrefWithSPMId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "href"    # Ljava/lang/String;
    .param p2, "spmId"    # Ljava/lang/String;

    .prologue
    .line 448
    const-string/jumbo v10, "&?\\bspm=[^&#]*"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 449
    .local v6, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v6, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 450
    .local v5, "m":Ljava/util/regex/Matcher;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 451
    const-string/jumbo v10, "&?\\bspm=[^&#]*"

    const-string/jumbo v11, ""

    .line 452
    invoke-virtual {p1, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "&{2,}"

    const-string/jumbo v12, "&"

    .line 453
    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "\\?&"

    const-string/jumbo v12, "?"

    .line 454
    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "\\?$"

    const-string/jumbo v12, ""

    .line 455
    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 458
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    move-object v3, p1

    .line 542
    .end local p1    # "href":Ljava/lang/String;
    .local v3, "href":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 461
    .end local v3    # "href":Ljava/lang/String;
    .restart local p1    # "href":Ljava/lang/String;
    :cond_1
    const-string/jumbo v9, ""

    .line 462
    .local v9, "search":Ljava/lang/String;
    const-string/jumbo v2, ""

    .line 464
    .local v2, "hash":Ljava/lang/String;
    const-string/jumbo v1, "&"

    .line 470
    .local v1, "and_char":Ljava/lang/String;
    const-string/jumbo v10, "#"

    invoke-virtual {p1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 471
    const-string/jumbo v10, "#"

    invoke-virtual {p1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 472
    .local v0, "a":[Ljava/lang/String;
    array-length v10, v0

    if-lez v10, :cond_2

    .line 473
    const/4 v10, 0x0

    aget-object p1, v0, v10

    .line 475
    :cond_2
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_1
    array-length v10, v0

    if-ge v4, v10, :cond_4

    .line 476
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v0, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v10, v0

    add-int/lit8 v10, v10, -0x1

    if-ne v4, v10, :cond_3

    const-string/jumbo v10, ""

    :goto_2
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 475
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 476
    :cond_3
    const-string/jumbo v10, "#"

    goto :goto_2

    .line 479
    .end local v0    # "a":[Ljava/lang/String;
    .end local v4    # "i":I
    :cond_4
    const-string/jumbo v10, "\\?"

    invoke-virtual {p1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 480
    .local v8, "query_split":[Ljava/lang/String;
    array-length v10, v8

    add-int/lit8 v7, v10, -0x1

    .line 484
    .local v7, "query_count":I
    const/4 v10, 0x0

    aget-object v10, v8, v10

    const-string/jumbo v11, "//"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 485
    .restart local v0    # "a":[Ljava/lang/String;
    array-length v10, v0

    add-int/lit8 v10, v10, -0x1

    aget-object v10, v0, v10

    const-string/jumbo v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 489
    if-lez v7, :cond_6

    .line 497
    array-length v10, v8

    if-lez v10, :cond_6

    .line 498
    array-length v10, v8

    add-int/lit8 v10, v10, -0x1

    aget-object v9, v8, v10

    .line 499
    const-string/jumbo p1, ""

    .line 500
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3
    array-length v10, v8

    add-int/lit8 v10, v10, -0x1

    if-ge v4, v10, :cond_6

    .line 501
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v8, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v10, v8

    add-int/lit8 v10, v10, -0x1

    add-int/lit8 v10, v10, -0x1

    if-ne v4, v10, :cond_5

    const-string/jumbo v10, ""

    :goto_4
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 500
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 501
    :cond_5
    const-string/jumbo v10, "?"

    goto :goto_4

    .line 508
    .end local v4    # "i":I
    :cond_6
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    const/4 v10, 0x1

    if-le v7, v10, :cond_7

    const/16 v10, 0x26

    .line 510
    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_7

    const/16 v10, 0x25

    .line 512
    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_7

    .line 517
    const-string/jumbo v1, "%26"

    .line 520
    :cond_7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "?spm="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 521
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_5
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 522
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "#"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_6
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v3, p1

    .line 542
    .end local p1    # "href":Ljava/lang/String;
    .restart local v3    # "href":Ljava/lang/String;
    goto/16 :goto_0

    .line 521
    .end local v3    # "href":Ljava/lang/String;
    .restart local p1    # "href":Ljava/lang/String;
    :cond_8
    const-string/jumbo v10, ""

    goto :goto_5

    .line 522
    :cond_9
    const-string/jumbo v10, ""

    goto :goto_6
.end method

.method private spmWriteHref(Lc8/qYf;Ljava/lang/String;)V
    .locals 1
    .param p1, "anchor"    # Lc8/qYf;
    .param p2, "href"    # Ljava/lang/String;

    .prologue
    .line 580
    const-string/jumbo v0, "href"

    invoke-direct {p0, p1, v0, p2}, Lc8/Fxb;->setAttribute(Lc8/qYf;Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    return-void
.end method

.method private tagName(Lc8/qYf;)Ljava/lang/String;
    .locals 1
    .param p1, "el"    # Lc8/qYf;

    .prologue
    .line 660
    invoke-interface {p1}, Lc8/qYf;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private tryToGetAttribute(Lc8/qYf;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "element"    # Lc8/qYf;
    .param p2, "attrName"    # Ljava/lang/String;

    .prologue
    .line 664
    invoke-interface {p1}, Lc8/qYf;->getAttrs()Lc8/xYf;

    move-result-object v1

    .line 665
    .local v1, "attrs":Lc8/xYf;
    if-eqz v1, :cond_0

    .line 671
    invoke-virtual {v1, p2}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 672
    .local v0, "attr":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 673
    check-cast v0, Ljava/lang/String;

    .line 676
    .end local v0    # "attr":Ljava/lang/Object;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private tryToGetHref(Lc8/qYf;)Ljava/lang/String;
    .locals 2
    .param p1, "anchor"    # Lc8/qYf;

    .prologue
    .line 361
    :try_start_0
    const-string/jumbo v1, "href"

    invoke-direct {p0, p1, v1}, Lc8/Fxb;->tryToGetAttribute(Lc8/qYf;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 366
    .local v0, "href":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 363
    .end local v0    # "href":Ljava/lang/String;
    :catch_0
    move-exception v1

    const-string/jumbo v0, ""

    .restart local v0    # "href":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public doTrace(Lc8/tbg;)V
    .locals 2
    .param p1, "el"    # Lc8/tbg;

    .prologue
    .line 48
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v1

    invoke-direct {p0, v1}, Lc8/Fxb;->tagName(Lc8/qYf;)Ljava/lang/String;

    move-result-object v0

    .local v0, "tag_name":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 49
    const-string/jumbo v1, "a"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "A"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "AREA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 51
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lc8/Fxb;->spmSpmAnchorChk(Lc8/tbg;Z)V

    .line 62
    .end local v0    # "tag_name":Ljava/lang/String;
    :cond_1
    return-void

    .line 56
    .restart local v0    # "tag_name":Ljava/lang/String;
    :cond_2
    const-string/jumbo v1, "_root"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 60
    invoke-virtual {p1}, Lc8/tbg;->getParent()Lc8/scg;

    move-result-object p1

    goto :goto_0
.end method
