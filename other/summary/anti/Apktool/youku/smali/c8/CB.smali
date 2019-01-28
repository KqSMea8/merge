.class public Lc8/CB;
.super Lc8/WB;
.source "WVCommonConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/DB;->updateCommonRule(Lc8/LB;Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic this$0:Lc8/DB;

.field final synthetic val$callback:Lc8/LB;

.field final synthetic val$finalCommonConfigUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/DB;Lc8/LB;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lc8/CB;->this$0:Lc8/DB;

    iput-object p2, p0, Lc8/CB;->val$callback:Lc8/LB;

    iput-object p3, p0, Lc8/CB;->val$finalCommonConfigUrl:Ljava/lang/String;

    invoke-direct {p0}, Lc8/WB;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 81
    iget-object v0, p0, Lc8/CB;->val$callback:Lc8/LB;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lc8/CB;->val$callback:Lc8/LB;

    iget-object v1, p0, Lc8/CB;->val$finalCommonConfigUrl:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Lc8/LB;->updateError(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lc8/CB;->val$callback:Lc8/LB;

    sget-object v1, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->UNKNOWN_ERROR:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lc8/LB;->updateStatus(Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;I)V

    .line 85
    :cond_0
    const-string/jumbo v0, "WVCommonConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update common failed! : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-super {p0, p1, p2}, Lc8/WB;->onError(ILjava/lang/String;)V

    .line 87
    return-void
.end method

.method public onFinish(Lc8/ZB;I)V
    .locals 7
    .param p1, "data"    # Lc8/ZB;
    .param p2, "token"    # I

    .prologue
    const/4 v6, 0x0

    .line 57
    iget-object v3, p0, Lc8/CB;->val$callback:Lc8/LB;

    if-nez v3, :cond_0

    .line 77
    :goto_0
    return-void

    .line 60
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lc8/ZB;->getData()[B

    move-result-object v3

    if-nez v3, :cond_2

    .line 61
    :cond_1
    iget-object v3, p0, Lc8/CB;->val$callback:Lc8/LB;

    sget-object v4, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->NULL_DATA:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    invoke-interface {v3, v4, v6}, Lc8/LB;->updateStatus(Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;I)V

    goto :goto_0

    .line 65
    :cond_2
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lc8/ZB;->getData()[B

    move-result-object v3

    const-string/jumbo v4, "utf-8"

    invoke-direct {v0, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 66
    .local v0, "content":Ljava/lang/String;
    iget-object v3, p0, Lc8/CB;->this$0:Lc8/DB;

    invoke-static {v3, v0}, Lc8/DB;->access$000(Lc8/DB;Ljava/lang/String;)I

    move-result v2

    .line 67
    .local v2, "updateCount":I
    if-lez v2, :cond_3

    .line 68
    const-string/jumbo v3, "wv_main_config"

    const-string/jumbo v4, "commonwv-data"

    invoke-static {v3, v4, v0}, Lc8/MH;->putStringVal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v3, p0, Lc8/CB;->val$callback:Lc8/LB;

    sget-object v4, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->SUCCESS:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    invoke-interface {v3, v4, v2}, Lc8/LB;->updateStatus(Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    .end local v0    # "content":Ljava/lang/String;
    .end local v2    # "updateCount":I
    :catch_0
    move-exception v1

    .line 74
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    iget-object v3, p0, Lc8/CB;->val$callback:Lc8/LB;

    sget-object v4, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->ENCODING_ERROR:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    invoke-interface {v3, v4, v6}, Lc8/LB;->updateStatus(Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;I)V

    .line 75
    const-string/jumbo v3, "WVCommonConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "config encoding error. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 71
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "content":Ljava/lang/String;
    .restart local v2    # "updateCount":I
    :cond_3
    :try_start_1
    iget-object v3, p0, Lc8/CB;->val$callback:Lc8/LB;

    sget-object v4, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->NO_VERSION:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lc8/LB;->updateStatus(Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;I)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public bridge synthetic onFinish(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # I

    .prologue
    .line 54
    check-cast p1, Lc8/ZB;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lc8/CB;->onFinish(Lc8/ZB;I)V

    return-void
.end method
