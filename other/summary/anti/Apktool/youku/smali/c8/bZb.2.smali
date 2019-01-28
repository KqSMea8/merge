.class public Lc8/bZb;
.super Ljava/lang/Object;
.source "PopLayerConsole.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/poplayerconsole/PopLayerConsole;->getDropDownItems(I)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/poplayerconsole/PopLayerConsole;

.field final synthetic val$id:I


# direct methods
.method public constructor <init>(Lcom/alibaba/poplayerconsole/PopLayerConsole;I)V
    .locals 0
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 150
    iput-object p1, p0, Lc8/bZb;->this$0:Lcom/alibaba/poplayerconsole/PopLayerConsole;

    iput p2, p0, Lc8/bZb;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 153
    iget-object v1, p0, Lc8/bZb;->this$0:Lcom/alibaba/poplayerconsole/PopLayerConsole;

    iget v2, p0, Lc8/bZb;->val$id:I

    invoke-virtual {v1, v2}, Lcom/alibaba/poplayerconsole/PopLayerConsole;->getWindow(I)Lc8/IZb;

    move-result-object v0

    .line 154
    .local v0, "window":Lc8/IZb;
    if-nez v0, :cond_0

    .line 158
    :goto_0
    return-void

    .line 156
    :cond_0
    invoke-static {}, Lcom/alibaba/poplayer/utils/ConsoleLogger;->clearLogs()V

    .line 157
    iget-object v1, p0, Lc8/bZb;->this$0:Lcom/alibaba/poplayerconsole/PopLayerConsole;

    invoke-static {v1, v0}, Lcom/alibaba/poplayerconsole/PopLayerConsole;->access$200(Lcom/alibaba/poplayerconsole/PopLayerConsole;Lc8/IZb;)V

    goto :goto_0
.end method
