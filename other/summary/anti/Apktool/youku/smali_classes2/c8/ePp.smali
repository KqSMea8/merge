.class public Lc8/ePp;
.super Ljava/lang/Object;
.source "UnitServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/fPp;->updateAndStoreApiUnitInfo(Ljava/lang/String;Ljava/lang/String;Lc8/IMp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/fPp;

.field final synthetic val$mtopInstance:Lc8/AOp;

.field final synthetic val$seqNo:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/fPp;Ljava/lang/String;Lc8/AOp;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lc8/ePp;->this$0:Lc8/fPp;

    iput-object p2, p0, Lc8/ePp;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lc8/ePp;->val$mtopInstance:Lc8/AOp;

    iput-object p4, p0, Lc8/ePp;->val$seqNo:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 261
    const/4 v4, 0x0

    .line 262
    .local v4, "fullUrl":Ljava/lang/String;
    iget-object v8, p0, Lc8/ePp;->val$url:Ljava/lang/String;

    sget-object v9, Lmtopsdk/mtop/domain/ProtocolEnum;->HTTP:Lmtopsdk/mtop/domain/ProtocolEnum;

    invoke-virtual {v9}, Lmtopsdk/mtop/domain/ProtocolEnum;->getProtocol()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 263
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lmtopsdk/mtop/domain/ProtocolEnum;->HTTP:Lmtopsdk/mtop/domain/ProtocolEnum;

    invoke-virtual {v9}, Lmtopsdk/mtop/domain/ProtocolEnum;->getProtocol()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lc8/ePp;->val$url:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 267
    :cond_0
    const/4 v0, 0x0

    .line 269
    .local v0, "byteData":[B
    :try_start_0
    new-instance v8, Lc8/CPp;

    invoke-direct {v8}, Lc8/CPp;-><init>()V

    const/16 v9, 0x1003

    invoke-virtual {v8, v9}, Lc8/CPp;->bizId(I)Lc8/CPp;

    move-result-object v8

    invoke-virtual {v8, v4}, Lc8/CPp;->url(Ljava/lang/String;)Lc8/CPp;

    move-result-object v8

    invoke-virtual {v8}, Lc8/CPp;->build()Lc8/FPp;

    move-result-object v6

    .line 270
    .local v6, "request":Lc8/FPp;
    iget-object v8, p0, Lc8/ePp;->val$mtopInstance:Lc8/AOp;

    invoke-virtual {v8}, Lc8/AOp;->getMtopConfig()Lc8/kOp;

    move-result-object v8

    iget-object v3, v8, Lc8/kOp;->callFactory:Lc8/wPp;

    .line 271
    .local v3, "factory":Lc8/wPp;
    invoke-interface {v3, v6}, Lc8/wPp;->newCall(Lc8/FPp;)Lc8/xPp;

    move-result-object v8

    invoke-interface {v8}, Lc8/xPp;->execute()Lc8/KPp;

    move-result-object v7

    .line 272
    .local v7, "response":Lc8/KPp;
    if-eqz v7, :cond_1

    const/16 v8, 0xc8

    iget v9, v7, Lc8/KPp;->code:I

    if-ne v8, v9, :cond_1

    iget-object v8, v7, Lc8/KPp;->body:Lc8/LPp;

    if-eqz v8, :cond_1

    .line 273
    iget-object v8, v7, Lc8/KPp;->body:Lc8/LPp;

    invoke-virtual {v8}, Lc8/LPp;->getBytes()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 280
    .end local v3    # "factory":Lc8/wPp;
    .end local v6    # "request":Lc8/FPp;
    .end local v7    # "response":Lc8/KPp;
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 284
    :try_start_1
    new-instance v8, Ljava/lang/String;

    const-string/jumbo v9, "utf-8"

    invoke-direct {v8, v0, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-class v9, Lmtopsdk/mtop/unit/ApiUnit;

    invoke-static {v8, v9}, Lc8/AIb;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmtopsdk/mtop/unit/ApiUnit;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 290
    .local v5, "newApiUnit":Lmtopsdk/mtop/unit/ApiUnit;
    if-eqz v5, :cond_2

    iget-object v8, v5, Lmtopsdk/mtop/unit/ApiUnit;->version:Ljava/lang/String;

    invoke-static {v8}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 292
    iget-object v8, p0, Lc8/ePp;->this$0:Lc8/fPp;

    invoke-static {v8}, Lc8/fPp;->access$000(Lc8/fPp;)Lmtopsdk/mtop/unit/ApiUnit;

    move-result-object v1

    .line 293
    .local v1, "currentApiUnit":Lmtopsdk/mtop/unit/ApiUnit;
    if-eqz v1, :cond_3

    iget-object v8, v5, Lmtopsdk/mtop/unit/ApiUnit;->version:Ljava/lang/String;

    iget-object v9, v1, Lmtopsdk/mtop/unit/ApiUnit;->version:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 301
    .end local v1    # "currentApiUnit":Lmtopsdk/mtop/unit/ApiUnit;
    .end local v5    # "newApiUnit":Lmtopsdk/mtop/unit/ApiUnit;
    :cond_2
    :goto_1
    return-void

    .line 276
    :catch_0
    move-exception v8

    const-string/jumbo v8, "mtopsdk.UnitServiceImpl"

    iget-object v9, p0, Lc8/ePp;->val$seqNo:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "query api unit from cdn url failed.cdnUrl="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 285
    :catch_1
    move-exception v2

    .line 286
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "mtopsdk.UnitServiceImpl"

    iget-object v9, p0, Lc8/ePp;->val$seqNo:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[updateAndStoreApiUnitInfo]parse apiUnit json from cdn error ---"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 296
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "currentApiUnit":Lmtopsdk/mtop/unit/ApiUnit;
    .restart local v5    # "newApiUnit":Lmtopsdk/mtop/unit/ApiUnit;
    :cond_3
    iget-object v8, p0, Lc8/ePp;->this$0:Lc8/fPp;

    invoke-static {v8, v5}, Lc8/fPp;->access$002(Lc8/fPp;Lmtopsdk/mtop/unit/ApiUnit;)Lmtopsdk/mtop/unit/ApiUnit;

    .line 298
    iget-object v8, p0, Lc8/ePp;->this$0:Lc8/fPp;

    iget-object v9, p0, Lc8/ePp;->val$mtopInstance:Lc8/AOp;

    invoke-virtual {v9}, Lc8/AOp;->getMtopConfig()Lc8/kOp;

    move-result-object v9

    iget-object v9, v9, Lc8/kOp;->context:Landroid/content/Context;

    iget-object v10, p0, Lc8/ePp;->val$seqNo:Ljava/lang/String;

    invoke-static {v8, v9, v5, v10}, Lc8/fPp;->access$100(Lc8/fPp;Landroid/content/Context;Lmtopsdk/mtop/unit/ApiUnit;Ljava/lang/String;)V

    goto :goto_1
.end method
