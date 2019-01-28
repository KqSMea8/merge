.class public Lc8/gGo;
.super Ljava/lang/Object;
.source "VipConfigManager.java"

# interfaces
.implements Lcom/taobao/orange/OrangeConfigListenerV1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/hGo;->registerConfigListener([Ljava/lang/String;Lc8/iGo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/hGo;

.field final synthetic val$listener:Lc8/iGo;


# direct methods
.method constructor <init>(Lc8/hGo;Lc8/iGo;)V
    .locals 0
    .param p1, "this$0"    # Lc8/hGo;

    .prologue
    .line 38
    iput-object p1, p0, Lc8/gGo;->this$0:Lc8/hGo;

    iput-object p2, p0, Lc8/gGo;->val$listener:Lc8/iGo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigUpdate(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "b"    # Z

    .prologue
    .line 43
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v1

    invoke-virtual {v1, p1}, Lc8/ctf;->getConfigs(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 44
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lc8/jGo;->getInstance()Lc8/jGo;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lc8/jGo;->saveConfigSetting(Ljava/lang/String;Ljava/util/Map;)V

    .line 46
    iget-object v1, p0, Lc8/gGo;->val$listener:Lc8/iGo;

    if-eqz v1, :cond_0

    .line 47
    iget-object v1, p0, Lc8/gGo;->val$listener:Lc8/iGo;

    invoke-interface {v1, p1, p2}, Lc8/iGo;->onConfigUpdate(Ljava/lang/String;Z)V

    .line 49
    :cond_0
    return-void
.end method
