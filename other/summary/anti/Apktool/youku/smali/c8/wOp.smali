.class public Lc8/wOp;
.super Ljava/lang/Object;
.source "Mtop.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/AOp;->switchEnvMode(Lmtopsdk/mtop/domain/EnvModeEnum;)Lc8/AOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/AOp;

.field final synthetic val$envMode:Lmtopsdk/mtop/domain/EnvModeEnum;


# direct methods
.method constructor <init>(Lc8/AOp;Lmtopsdk/mtop/domain/EnvModeEnum;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lc8/wOp;->this$0:Lc8/AOp;

    iput-object p2, p0, Lc8/wOp;->val$envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 311
    iget-object v1, p0, Lc8/wOp;->this$0:Lc8/AOp;

    invoke-virtual {v1}, Lc8/AOp;->checkMtopSDKInit()Z

    .line 312
    iget-object v1, p0, Lc8/wOp;->this$0:Lc8/AOp;

    invoke-static {v1}, Lc8/AOp;->access$200(Lc8/AOp;)Lc8/kOp;

    move-result-object v1

    iget-object v1, v1, Lc8/kOp;->envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    iget-object v2, p0, Lc8/wOp;->val$envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    if-ne v1, v2, :cond_1

    .line 313
    const-string/jumbo v1, "mtopsdk.Mtop"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lc8/wOp;->this$0:Lc8/AOp;

    invoke-static {v3}, Lc8/AOp;->access$400(Lc8/AOp;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " [switchEnvMode] Current EnvMode matches target EnvMode,envMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc8/wOp;->val$envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 317
    const-string/jumbo v1, "mtopsdk.Mtop"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lc8/wOp;->this$0:Lc8/AOp;

    invoke-static {v3}, Lc8/AOp;->access$400(Lc8/AOp;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " [switchEnvMode]MtopSDK switchEnvMode start"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    :cond_2
    iget-object v1, p0, Lc8/wOp;->this$0:Lc8/AOp;

    invoke-static {v1}, Lc8/AOp;->access$200(Lc8/AOp;)Lc8/kOp;

    move-result-object v1

    iget-object v2, p0, Lc8/wOp;->val$envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    iput-object v2, v1, Lc8/kOp;->envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    .line 323
    :try_start_0
    iget-object v1, p0, Lc8/wOp;->this$0:Lc8/AOp;

    invoke-static {v1}, Lc8/AOp;->access$100(Lc8/AOp;)V

    .line 324
    sget-object v1, Lmtopsdk/mtop/domain/EnvModeEnum;->ONLINE:Lmtopsdk/mtop/domain/EnvModeEnum;

    iget-object v2, p0, Lc8/wOp;->val$envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    if-ne v1, v2, :cond_3

    .line 325
    const/4 v1, 0x0

    invoke-static {v1}, Lc8/BMp;->setPrintLog(Z)V

    .line 327
    :cond_3
    iget-object v1, p0, Lc8/wOp;->this$0:Lc8/AOp;

    invoke-static {v1}, Lc8/AOp;->access$300(Lc8/AOp;)Lc8/pOp;

    move-result-object v1

    iget-object v2, p0, Lc8/wOp;->this$0:Lc8/AOp;

    invoke-static {v2}, Lc8/AOp;->access$200(Lc8/AOp;)Lc8/kOp;

    move-result-object v2

    invoke-interface {v1, v2}, Lc8/pOp;->executeCoreTask(Lc8/kOp;)V

    .line 328
    iget-object v1, p0, Lc8/wOp;->this$0:Lc8/AOp;

    invoke-static {v1}, Lc8/AOp;->access$300(Lc8/AOp;)Lc8/pOp;

    move-result-object v1

    iget-object v2, p0, Lc8/wOp;->this$0:Lc8/AOp;

    invoke-static {v2}, Lc8/AOp;->access$200(Lc8/AOp;)Lc8/kOp;

    move-result-object v2

    invoke-interface {v1, v2}, Lc8/pOp;->executeExtraTask(Lc8/kOp;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    :goto_1
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 333
    const-string/jumbo v1, "mtopsdk.Mtop"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lc8/wOp;->this$0:Lc8/AOp;

    invoke-static {v3}, Lc8/AOp;->access$400(Lc8/AOp;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " [switchEnvMode]MtopSDK switchEnvMode end. envMode ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc8/wOp;->val$envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 329
    :catch_0
    move-exception v0

    .line 330
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
