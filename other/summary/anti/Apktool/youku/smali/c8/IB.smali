.class public Lc8/IB;
.super Ljava/lang/Object;
.source "WVConfigManager.java"

# interfaces
.implements Lc8/LB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/KB;->doUpdateByKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/KB;

.field final synthetic val$fromType:Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

.field final synthetic val$handler:Lc8/FB;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$newValue:Ljava/lang/String;

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lc8/KB;Lc8/FB;Ljava/lang/String;Ljava/lang/String;JLandroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;)V
    .locals 1

    .prologue
    .line 264
    iput-object p1, p0, Lc8/IB;->this$0:Lc8/KB;

    iput-object p2, p0, Lc8/IB;->val$handler:Lc8/FB;

    iput-object p3, p0, Lc8/IB;->val$key:Ljava/lang/String;

    iput-object p4, p0, Lc8/IB;->val$newValue:Ljava/lang/String;

    iput-wide p5, p0, Lc8/IB;->val$startTime:J

    iput-object p7, p0, Lc8/IB;->val$fromType:Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "configUrl"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 304
    invoke-static {}, Lc8/YF;->getConfigMonitor()Lc8/GF;

    move-result-object v0

    .line 305
    .local v0, "moniter":Lc8/GF;
    if-eqz v0, :cond_0

    .line 306
    iget-object v1, p0, Lc8/IB;->val$key:Ljava/lang/String;

    const/4 v2, 0x7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lc8/GF;->didOccurUpdateConfigError(Ljava/lang/String;ILjava/lang/String;)V

    .line 308
    :cond_0
    return-void
.end method

.method public updateStatus(Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;I)V
    .locals 12
    .param p1, "updateInfo"    # Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;
    .param p2, "updateCount"    # I

    .prologue
    const/4 v6, 0x0

    .line 268
    iget-object v1, p0, Lc8/IB;->val$handler:Lc8/FB;

    invoke-virtual {v1, v6}, Lc8/FB;->setUpdateStatus(Z)V

    .line 269
    iget-object v1, p0, Lc8/IB;->this$0:Lc8/KB;

    invoke-static {v1}, Lc8/KB;->access$404(Lc8/KB;)I

    .line 271
    iget-object v1, p0, Lc8/IB;->this$0:Lc8/KB;

    invoke-static {v1}, Lc8/KB;->access$400(Lc8/KB;)I

    move-result v1

    iget-object v2, p0, Lc8/IB;->this$0:Lc8/KB;

    invoke-static {v2}, Lc8/KB;->access$100(Lc8/KB;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 272
    iget-object v1, p0, Lc8/IB;->this$0:Lc8/KB;

    invoke-static {v1, v6}, Lc8/KB;->access$402(Lc8/KB;I)I

    .line 273
    invoke-static {}, Lc8/qH;->getInstance()Lc8/qH;

    move-result-object v1

    const/16 v2, 0x1772

    invoke-virtual {v1, v2}, Lc8/qH;->onEvent(I)Landroid/taobao/windvane/service/WVEventResult;

    .line 275
    :cond_0
    sget-object v1, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->SUCCESS:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    invoke-virtual {v1, p1}, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 276
    .local v0, "isSuccess":Z
    invoke-static {}, Lc8/YF;->getConfigMonitor()Lc8/GF;

    move-result-object v8

    .line 277
    .local v8, "moniter":Lc8/GF;
    if-eqz v0, :cond_4

    .line 279
    const-string/jumbo v1, "wv_main_config"

    iget-object v2, p0, Lc8/IB;->val$key:Ljava/lang/String;

    iget-object v3, p0, Lc8/IB;->val$newValue:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lc8/MH;->putStringVal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    if-eqz v8, :cond_1

    .line 281
    iget-object v1, p0, Lc8/IB;->val$key:Ljava/lang/String;

    invoke-interface {v8, v1}, Lc8/GF;->didOccurUpdateConfigSuccess(Ljava/lang/String;)V

    .line 288
    :cond_1
    :goto_0
    if-eqz v8, :cond_3

    .line 289
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v10, p0, Lc8/IB;->val$startTime:J

    sub-long v4, v2, v10

    .line 291
    .local v4, "updateTime":J
    invoke-static {}, Lc8/YF;->getConfigMonitor()Lc8/GF;

    move-result-object v1

    iget-object v2, p0, Lc8/IB;->val$key:Ljava/lang/String;

    iget-object v3, p0, Lc8/IB;->val$fromType:Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;

    invoke-virtual {v3}, Landroid/taobao/windvane/config/WVConfigManager$WVConfigUpdateFromType;->ordinal()I

    move-result v3

    if-eqz v0, :cond_2

    const/4 v6, 0x1

    :cond_2
    move v7, p2

    invoke-interface/range {v1 .. v7}, Lc8/GF;->didUpdateConfig(Ljava/lang/String;IJII)V

    .line 293
    .end local v4    # "updateTime":J
    :cond_3
    const-string/jumbo v1, "WVConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isUpdateSuccess "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc8/IB;->val$key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    return-void

    .line 284
    :cond_4
    if-eqz v8, :cond_1

    sget-object v1, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->UNKNOWN_ERROR:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    invoke-virtual {p1, v1}, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 285
    iget-object v1, p0, Lc8/IB;->val$key:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->ordinal()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lc8/IB;->val$key:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v7, ":"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p0, Lc8/IB;->val$newValue:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v7, ":"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v1, v2, v3}, Lc8/GF;->didOccurUpdateConfigError(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method
