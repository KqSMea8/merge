.class public Lc8/QF;
.super Lc8/WB;
.source "WVMonitorConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/SF;->updateMonitorConfig(Lc8/LB;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/WB",
        "<",
        "Lc8/ZB;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/SF;

.field final synthetic val$callback:Lc8/LB;

.field final synthetic val$finalMonitorConfigUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/SF;Lc8/LB;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lc8/QF;->this$0:Lc8/SF;

    iput-object p2, p0, Lc8/QF;->val$callback:Lc8/LB;

    iput-object p3, p0, Lc8/QF;->val$finalMonitorConfigUrl:Ljava/lang/String;

    invoke-direct {p0}, Lc8/WB;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 189
    iget-object v0, p0, Lc8/QF;->val$callback:Lc8/LB;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lc8/QF;->val$callback:Lc8/LB;

    iget-object v1, p0, Lc8/QF;->val$finalMonitorConfigUrl:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Lc8/LB;->updateError(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lc8/QF;->val$callback:Lc8/LB;

    sget-object v1, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->UNKNOWN_ERROR:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lc8/LB;->updateStatus(Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;I)V

    .line 193
    :cond_0
    invoke-static {}, Lc8/SF;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update moniter failed! : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-super {p0, p1, p2}, Lc8/WB;->onError(ILjava/lang/String;)V

    .line 195
    return-void
.end method

.method public onFinish(Lc8/ZB;I)V
    .locals 5
    .param p1, "data"    # Lc8/ZB;
    .param p2, "token"    # I

    .prologue
    const/4 v4, 0x0

    .line 167
    iget-object v1, p0, Lc8/QF;->val$callback:Lc8/LB;

    if-nez v1, :cond_0

    .line 185
    :goto_0
    return-void

    .line 170
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lc8/ZB;->getData()[B

    move-result-object v1

    if-nez v1, :cond_2

    .line 171
    :cond_1
    iget-object v1, p0, Lc8/QF;->val$callback:Lc8/LB;

    sget-object v2, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->NULL_DATA:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    invoke-interface {v1, v2, v4}, Lc8/LB;->updateStatus(Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;I)V

    goto :goto_0

    .line 175
    :cond_2
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lc8/ZB;->getData()[B

    move-result-object v1

    const-string/jumbo v2, "utf-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 176
    .local v0, "content":Ljava/lang/String;
    iget-object v1, p0, Lc8/QF;->this$0:Lc8/SF;

    invoke-virtual {v1, v0}, Lc8/SF;->needSaveConfig(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 177
    const-string/jumbo v1, "wv_main_config"

    const-string/jumbo v2, "monitorwv-data"

    invoke-static {v1, v2, v0}, Lc8/MH;->putStringVal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v1, p0, Lc8/QF;->val$callback:Lc8/LB;

    sget-object v2, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->SUCCESS:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lc8/LB;->updateStatus(Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 183
    .end local v0    # "content":Ljava/lang/String;
    :catch_0
    move-exception v1

    iget-object v1, p0, Lc8/QF;->val$callback:Lc8/LB;

    sget-object v2, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->ENCODING_ERROR:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    invoke-interface {v1, v2, v4}, Lc8/LB;->updateStatus(Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;I)V

    goto :goto_0

    .line 180
    .restart local v0    # "content":Ljava/lang/String;
    :cond_3
    :try_start_1
    iget-object v1, p0, Lc8/QF;->val$callback:Lc8/LB;

    sget-object v2, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->NO_VERSION:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lc8/LB;->updateStatus(Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;I)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public bridge synthetic onFinish(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # I

    .prologue
    .line 164
    check-cast p1, Lc8/ZB;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lc8/QF;->onFinish(Lc8/ZB;I)V

    return-void
.end method
