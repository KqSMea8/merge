.class public Lc8/yYm;
.super Ljava/lang/Object;
.source "ConfigUpdateManager.java"

# interfaces
.implements Lc8/QYm;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/zYm;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/zYm;


# direct methods
.method constructor <init>(Lc8/zYm;)V
    .locals 0
    .param p1, "this$1"    # Lc8/zYm;

    .prologue
    .line 299
    iput-object p1, p0, Lc8/yYm;->this$1:Lc8/zYm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Ljava/lang/String;)V
    .locals 4
    .param p1, "config"    # Ljava/lang/String;

    .prologue
    .line 302
    iget-object v1, p0, Lc8/yYm;->this$1:Lc8/zYm;

    iget-object v1, v1, Lc8/zYm;->this$0:Lc8/AYm;

    const-string/jumbo v2, "youku_poplayer_app"

    sget-object v3, Lcom/youku/poplayer/config/ChannelEnum;->HTTPS:Lcom/youku/poplayer/config/ChannelEnum;

    invoke-virtual {v1, v2, p1, v3}, Lc8/AYm;->updateConfigData(Ljava/lang/String;Ljava/lang/String;Lcom/youku/poplayer/config/ChannelEnum;)Z

    move-result v0

    .line 303
    .local v0, "updateState":Z
    if-eqz v0, :cond_0

    .line 304
    iget-object v1, p0, Lc8/yYm;->this$1:Lc8/zYm;

    iget-object v1, v1, Lc8/zYm;->val$popLayer:Lcom/alibaba/poplayer/PopLayer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alibaba/poplayer/PopLayer;->updateCacheConfigAsync(I)V

    .line 306
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "net.update.config.youku_poplayer_app."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 307
    return-void
.end method
