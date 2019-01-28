.class public Lc8/dG;
.super Lc8/WB;
.source "WVCustomPackageAppConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/fG;->updateCustomComboInfos(Ljava/lang/String;Lc8/LB;Ljava/util/List;Ljava/lang/String;)V
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
.field final synthetic this$0:Lc8/fG;

.field final synthetic val$callback:Lc8/LB;

.field final synthetic val$configUrl:Ljava/lang/String;

.field final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lc8/fG;Lc8/LB;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lc8/dG;->this$0:Lc8/fG;

    iput-object p2, p0, Lc8/dG;->val$callback:Lc8/LB;

    iput-object p3, p0, Lc8/dG;->val$list:Ljava/util/List;

    iput-object p4, p0, Lc8/dG;->val$configUrl:Ljava/lang/String;

    invoke-direct {p0}, Lc8/WB;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 158
    iget-object v0, p0, Lc8/dG;->this$0:Lc8/fG;

    invoke-static {v0}, Lc8/fG;->access$006(Lc8/fG;)I

    .line 159
    iget-object v0, p0, Lc8/dG;->val$callback:Lc8/LB;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/dG;->this$0:Lc8/fG;

    invoke-static {v0}, Lc8/fG;->access$000(Lc8/fG;)I

    move-result v0

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lc8/dG;->val$callback:Lc8/LB;

    iget-object v1, p0, Lc8/dG;->val$configUrl:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Lc8/LB;->updateError(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lc8/dG;->val$callback:Lc8/LB;

    sget-object v1, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->UNKNOWN_ERROR:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lc8/LB;->updateStatus(Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;I)V

    .line 163
    :cond_0
    const-string/jumbo v0, "WVCustomPackageAppConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update custom package failed! : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-super {p0, p1, p2}, Lc8/WB;->onError(ILjava/lang/String;)V

    .line 165
    return-void
.end method

.method public onFinish(Lc8/ZB;I)V
    .locals 6
    .param p1, "data"    # Lc8/ZB;
    .param p2, "token"    # I

    .prologue
    const/4 v5, 0x0

    .line 128
    iget-object v2, p0, Lc8/dG;->this$0:Lc8/fG;

    invoke-static {v2}, Lc8/fG;->access$006(Lc8/fG;)I

    .line 130
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lc8/ZB;->getData()[B

    move-result-object v2

    if-nez v2, :cond_2

    .line 131
    :cond_0
    iget-object v2, p0, Lc8/dG;->val$callback:Lc8/LB;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lc8/dG;->this$0:Lc8/fG;

    invoke-static {v2}, Lc8/fG;->access$000(Lc8/fG;)I

    move-result v2

    if-nez v2, :cond_1

    .line 132
    iget-object v2, p0, Lc8/dG;->val$callback:Lc8/LB;

    sget-object v3, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->NULL_DATA:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    invoke-interface {v2, v3, v5}, Lc8/LB;->updateStatus(Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;I)V

    .line 154
    :cond_1
    :goto_0
    return-void

    .line 137
    :cond_2
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lc8/ZB;->getData()[B

    move-result-object v2

    const-string/jumbo v3, "utf-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 138
    .local v0, "content":Ljava/lang/String;
    iget-object v2, p0, Lc8/dG;->this$0:Lc8/fG;

    iget-object v3, p0, Lc8/dG;->val$list:Ljava/util/List;

    invoke-static {v2, v0, v3}, Lc8/fG;->access$100(Lc8/fG;Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 139
    iget-object v2, p0, Lc8/dG;->val$callback:Lc8/LB;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lc8/dG;->this$0:Lc8/fG;

    invoke-static {v2}, Lc8/fG;->access$000(Lc8/fG;)I

    move-result v2

    if-nez v2, :cond_1

    .line 140
    iget-object v2, p0, Lc8/dG;->val$callback:Lc8/LB;

    sget-object v3, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->SUCCESS:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    iget-object v4, p0, Lc8/dG;->this$0:Lc8/fG;

    invoke-static {v4}, Lc8/fG;->access$200(Lc8/fG;)I

    move-result v4

    invoke-interface {v2, v3, v4}, Lc8/LB;->updateStatus(Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 148
    .end local v0    # "content":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 149
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lc8/dG;->val$callback:Lc8/LB;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lc8/dG;->this$0:Lc8/fG;

    invoke-static {v2}, Lc8/fG;->access$000(Lc8/fG;)I

    move-result v2

    if-nez v2, :cond_3

    .line 150
    iget-object v2, p0, Lc8/dG;->val$callback:Lc8/LB;

    sget-object v3, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->ENCODING_ERROR:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    invoke-interface {v2, v3, v5}, Lc8/LB;->updateStatus(Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;I)V

    .line 152
    :cond_3
    const-string/jumbo v2, "WVCustomPackageAppConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "config encoding error. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 143
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "content":Ljava/lang/String;
    :cond_4
    :try_start_1
    iget-object v2, p0, Lc8/dG;->val$callback:Lc8/LB;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lc8/dG;->this$0:Lc8/fG;

    invoke-static {v2}, Lc8/fG;->access$000(Lc8/fG;)I

    move-result v2

    if-nez v2, :cond_1

    .line 145
    iget-object v2, p0, Lc8/dG;->val$callback:Lc8/LB;

    sget-object v3, Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;->NO_VERSION:Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lc8/LB;->updateStatus(Landroid/taobao/windvane/config/WVConfigUpdateCallback$CONFIG_UPDATE_STATUS;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public bridge synthetic onFinish(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # I

    .prologue
    .line 125
    check-cast p1, Lc8/ZB;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lc8/dG;->onFinish(Lc8/ZB;I)V

    return-void
.end method
