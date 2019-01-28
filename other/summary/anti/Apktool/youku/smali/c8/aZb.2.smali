.class public Lc8/aZb;
.super Ljava/lang/Object;
.source "PopLayerConsole.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/poplayerconsole/PopLayerConsole;->onShow(ILc8/IZb;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/poplayerconsole/PopLayerConsole;

.field final synthetic val$window:Lc8/IZb;


# direct methods
.method public constructor <init>(Lcom/alibaba/poplayerconsole/PopLayerConsole;Lc8/IZb;)V
    .locals 0
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 112
    iput-object p1, p0, Lc8/aZb;->this$0:Lcom/alibaba/poplayerconsole/PopLayerConsole;

    iput-object p2, p0, Lc8/aZb;->val$window:Lc8/IZb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 116
    :try_start_0
    iget-object v1, p0, Lc8/aZb;->this$0:Lcom/alibaba/poplayerconsole/PopLayerConsole;

    iget-object v2, p0, Lc8/aZb;->val$window:Lc8/IZb;

    invoke-static {v1, v2}, Lcom/alibaba/poplayerconsole/PopLayerConsole;->access$000(Lcom/alibaba/poplayerconsole/PopLayerConsole;Lc8/IZb;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    iget-object v1, p0, Lc8/aZb;->this$0:Lcom/alibaba/poplayerconsole/PopLayerConsole;

    invoke-static {v1}, Lcom/alibaba/poplayerconsole/PopLayerConsole;->access$100(Lcom/alibaba/poplayerconsole/PopLayerConsole;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 121
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "PopLayer"

    const-string/jumbo v2, "PopLayerConsole.updateStatus.error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
