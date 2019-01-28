.class public Lc8/Jwb;
.super Lc8/Txb;
.source "PageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Qwb;->processWeexCache(Ljava/lang/String;[BLc8/Pwb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Txb",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lc8/lwb;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Qwb;

.field final synthetic val$cachePerf:Lc8/kwb;

.field final synthetic val$callback:Lc8/Pwb;

.field final synthetic val$startComposeTime:J

.field final synthetic val$template:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/Qwb;Ljava/lang/String;Lc8/kwb;JLc8/Pwb;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Qwb;

    .prologue
    .line 84
    iput-object p1, p0, Lc8/Jwb;->this$0:Lc8/Qwb;

    iput-object p2, p0, Lc8/Jwb;->val$template:Ljava/lang/String;

    iput-object p3, p0, Lc8/Jwb;->val$cachePerf:Lc8/kwb;

    iput-wide p4, p0, Lc8/Jwb;->val$startComposeTime:J

    iput-object p6, p0, Lc8/Jwb;->val$callback:Lc8/Pwb;

    invoke-direct {p0}, Lc8/Txb;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic end(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 84
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lc8/Jwb;->end(Ljava/util/ArrayList;)V

    return-void
.end method

.method public end(Ljava/util/ArrayList;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lc8/lwb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/aliweex/cache/Package$Item;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 88
    .local v10, "startTime":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/Jwb;->val$template:Ljava/lang/String;

    const-string/jumbo v14, "try{eval(\'##{\\u02D2}##\')}catch(e){fd()}"

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 89
    .local v5, "indexPlaceHolder":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/Jwb;->val$template:Ljava/lang/String;

    const/4 v14, 0x0

    invoke-virtual {v13, v14, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 90
    .local v8, "pre":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .local v9, "sb":Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .line 92
    .local v7, "pkgSize":I
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc8/lwb;

    .line 93
    .local v6, "item":Lc8/lwb;
    iget-object v13, v6, Lc8/lwb;->cachedInfoIndex:Ljava/util/Vector;

    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    move-result v13

    add-int/2addr v7, v13

    .line 94
    iget-object v13, v6, Lc8/lwb;->cachedInfoIndex:Ljava/util/Vector;

    invoke-virtual {v13}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 95
    .local v4, "index":Ljava/lang/Integer;
    const-string/jumbo v13, ";"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    iget-object v13, v6, Lc8/lwb;->depInfos:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/alibaba/aliweex/cache/Package$Info;

    iget-object v13, v13, Lcom/alibaba/aliweex/cache/Package$Info;->code:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    const-string/jumbo v13, ";"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 99
    .end local v4    # "index":Ljava/lang/Integer;
    :cond_0
    iget-object v13, v6, Lc8/lwb;->remoteInfo:Lc8/mwb;

    iget-object v13, v13, Lc8/mwb;->comboJsData:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 100
    const-string/jumbo v13, ";"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    iget-object v13, v6, Lc8/lwb;->remoteInfo:Lc8/mwb;

    iget-object v13, v13, Lc8/mwb;->comboJsData:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const-string/jumbo v13, ";"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    :cond_1
    iget-object v13, v6, Lc8/lwb;->remoteInfo:Lc8/mwb;

    iget-object v13, v13, Lc8/mwb;->remoteInfoIndex:Ljava/util/Vector;

    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    move-result v13

    add-int/2addr v7, v13

    .line 105
    goto :goto_0

    .line 106
    .end local v6    # "item":Lc8/lwb;
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/Jwb;->val$template:Ljava/lang/String;

    const-string/jumbo v14, "try{eval(\'##{\\u02D2}##\')}catch(e){fd()}"

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v14, v5

    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 107
    .local v12, "suffix":Ljava/lang/String;
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long v2, v14, v10

    .line 109
    .local v2, "comboJSTime":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/Jwb;->val$cachePerf:Lc8/kwb;

    iput-wide v2, v13, Lc8/kwb;->joinPkgsTime:J

    .line 110
    const-string/jumbo v13, "Page_Cache"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "join request "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " packages end time:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lc8/xgg;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string/jumbo v13, "Page_Cache"

    const-string/jumbo v14, "compose packages finished"

    invoke-static {v13, v14}, Lc8/xgg;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    .line 116
    invoke-static {}, Lc8/kwb;->getInstance()Lc8/kwb;

    move-result-object v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/Jwb;->val$startComposeTime:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    iput-wide v14, v13, Lc8/kwb;->processCacheAllTime:J

    .line 117
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/Jwb;->val$callback:Lc8/Pwb;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lc8/Pwb;->onFinished(Ljava/lang/String;)V

    .line 119
    invoke-static {}, Lc8/Awb;->getInstance()Lc8/Awb;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lc8/Awb;->cachePackages(Ljava/util/ArrayList;)V

    .line 120
    return-void
.end method
