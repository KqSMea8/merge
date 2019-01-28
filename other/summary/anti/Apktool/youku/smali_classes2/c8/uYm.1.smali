.class public Lc8/uYm;
.super Ljava/lang/Object;
.source "ConfigUpdateManager.java"

# interfaces
.implements Lc8/QYm;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/vYm;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/vYm;


# direct methods
.method constructor <init>(Lc8/vYm;)V
    .locals 0
    .param p1, "this$1"    # Lc8/vYm;

    .prologue
    .line 264
    iput-object p1, p0, Lc8/uYm;->this$1:Lc8/vYm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Ljava/lang/String;)V
    .locals 4
    .param p1, "config"    # Ljava/lang/String;

    .prologue
    .line 267
    iget-object v1, p0, Lc8/uYm;->this$1:Lc8/vYm;

    iget-object v1, v1, Lc8/vYm;->this$0:Lc8/AYm;

    invoke-static {v1, p1}, Lc8/AYm;->access$000(Lc8/AYm;Ljava/lang/String;)V

    .line 268
    iget-object v1, p0, Lc8/uYm;->this$1:Lc8/vYm;

    iget-object v1, v1, Lc8/vYm;->this$0:Lc8/AYm;

    const-string/jumbo v2, "youku_poplayer_page"

    sget-object v3, Lcom/youku/poplayer/config/ChannelEnum;->HTTPS:Lcom/youku/poplayer/config/ChannelEnum;

    invoke-virtual {v1, v2, p1, v3}, Lc8/AYm;->updateConfigData(Ljava/lang/String;Ljava/lang/String;Lcom/youku/poplayer/config/ChannelEnum;)Z

    move-result v0

    .line 269
    .local v0, "updateState":Z
    if-eqz v0, :cond_0

    .line 270
    iget-object v1, p0, Lc8/uYm;->this$1:Lc8/vYm;

    iget-object v1, v1, Lc8/vYm;->val$popLayer:Lcom/alibaba/poplayer/PopLayer;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/alibaba/poplayer/PopLayer;->updateCacheConfigAsync(I)V

    .line 272
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "net.update.config.youku_poplayer_page."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    return-void
.end method
