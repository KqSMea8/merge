.class public Lc8/QXb;
.super Ljava/lang/Object;
.source "SandoContainer.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/RXb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/RXb;


# direct methods
.method constructor <init>(Lc8/RXb;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lc8/QXb;->this$0:Lc8/RXb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 90
    :try_start_0
    iget-object v0, p0, Lc8/QXb;->this$0:Lc8/RXb;

    invoke-static {v0}, Lc8/RXb;->access$000(Lc8/RXb;)Lc8/OXb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/OXb;->updateMirrorViewsIfNeed()V

    .line 91
    iget-object v0, p0, Lc8/QXb;->this$0:Lc8/RXb;

    invoke-static {v0}, Lc8/RXb;->access$100(Lc8/RXb;)Lc8/KXb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/KXb;->updateAugmentedViews()V

    .line 93
    iget-object v0, p0, Lc8/QXb;->this$0:Lc8/RXb;

    invoke-static {v0}, Lc8/RXb;->access$000(Lc8/RXb;)Lc8/OXb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/OXb;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/QXb;->this$0:Lc8/RXb;

    invoke-static {v0}, Lc8/RXb;->access$100(Lc8/RXb;)Lc8/KXb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/KXb;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lc8/QXb;->this$0:Lc8/RXb;

    invoke-virtual {v0}, Lc8/RXb;->stopPreDrawListenerIfNeed()V

    .line 95
    const-string/jumbo v0, "SandoContainer.stop preDraw listener:mirror and track count = 0;"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v0

    goto :goto_0
.end method
