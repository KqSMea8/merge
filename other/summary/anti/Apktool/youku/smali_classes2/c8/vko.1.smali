.class public final Lc8/vko;
.super Lc8/Fko;
.source "Passport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Gko;->initInner(Landroid/content/Context;Lc8/kko;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$aCallback:Lc8/kko;

.field final synthetic val$aMarkInitImmediate:Z


# direct methods
.method constructor <init>(ZLc8/kko;)V
    .locals 0

    .prologue
    .line 1265
    iput-boolean p1, p0, Lc8/vko;->val$aMarkInitImmediate:Z

    iput-object p2, p0, Lc8/vko;->val$aCallback:Lc8/kko;

    invoke-direct {p0}, Lc8/Fko;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILjava/lang/String;)V
    .locals 6
    .param p1, "aCode"    # I
    .param p2, "aMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1270
    :try_start_0
    invoke-static {}, Lc8/Gko;->access$700()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lc8/Wko;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1271
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {}, Lc8/Gko;->access$1000()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 1270
    invoke-static {v1, v2, v3}, Lc8/Vko;->commitInitTime(Ljava/lang/String;J)V

    .line 1272
    const-string/jumbo v1, "YKLogin.PassportSDK-Api"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc8/Gko;->getInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " initWithCallBack aCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", aMessage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/eOf;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    iget-boolean v1, p0, Lc8/vko;->val$aMarkInitImmediate:Z

    if-nez v1, :cond_0

    .line 1276
    const/4 v1, 0x1

    invoke-static {v1}, Lc8/Gko;->access$902(Z)Z

    .line 1279
    :cond_0
    invoke-static {}, Lc8/Gko;->access$1100()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1293
    :cond_1
    :goto_0
    return-void

    .line 1282
    :cond_2
    const/4 v1, 0x1

    invoke-static {v1}, Lc8/Gko;->access$1102(Z)Z

    .line 1283
    iget-object v1, p0, Lc8/vko;->val$aCallback:Lc8/kko;

    if-eqz v1, :cond_1

    .line 1284
    if-nez p1, :cond_3

    .line 1285
    iget-object v1, p0, Lc8/vko;->val$aCallback:Lc8/kko;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p2}, Lc8/kko;->onSuccess(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1290
    :catch_0
    move-exception v0

    .line 1291
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "initWithCallback onResult"

    invoke-static {v0, v1}, Lc8/Gko;->access$400(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 1287
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    iget-object v1, p0, Lc8/vko;->val$aCallback:Lc8/kko;

    invoke-interface {v1, p1, p2}, Lc8/kko;->onFailure(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
