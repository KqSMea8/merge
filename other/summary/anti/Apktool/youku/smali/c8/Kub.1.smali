.class public Lc8/Kub;
.super Ljava/lang/Object;
.source "WXConnectionModule.java"

# interfaces
.implements Lc8/Hub;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Lub;->addEventListener(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Lub;


# direct methods
.method constructor <init>(Lc8/Lub;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Lub;

    .prologue
    .line 212
    iput-object p1, p0, Lc8/Kub;->this$0:Lc8/Lub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkChange()V
    .locals 4

    .prologue
    .line 215
    iget-object v0, p0, Lc8/Kub;->this$0:Lc8/Lub;

    iget-object v0, v0, Lc8/Lub;->mWXSDKInstance:Lc8/nVf;

    if-nez v0, :cond_0

    .line 225
    :goto_0
    return-void

    .line 219
    :cond_0
    iget-object v0, p0, Lc8/Kub;->this$0:Lc8/Lub;

    iget-object v0, v0, Lc8/Lub;->mWXSDKInstance:Lc8/nVf;

    const-string/jumbo v1, "change"

    iget-object v2, p0, Lc8/Kub;->this$0:Lc8/Lub;

    invoke-virtual {v0, v1, v2}, Lc8/nVf;->checkModuleEventRegistered(Ljava/lang/String;Lc8/MXf;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lc8/Kub;->this$0:Lc8/Lub;

    iget-object v0, v0, Lc8/Lub;->mWXSDKInstance:Lc8/nVf;

    const-string/jumbo v1, "change"

    iget-object v2, p0, Lc8/Kub;->this$0:Lc8/Lub;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lc8/nVf;->fireModuleEvent(Ljava/lang/String;Lc8/MXf;Ljava/util/Map;)V

    .line 221
    const-string/jumbo v0, "WXConnectionModule"

    const-string/jumbo v1, "send connection change event success."

    invoke-static {v0, v1}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 223
    :cond_1
    const-string/jumbo v0, "WXConnectionModule"

    const-string/jumbo v1, "no listener found. drop the connection change event."

    invoke-static {v0, v1}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
