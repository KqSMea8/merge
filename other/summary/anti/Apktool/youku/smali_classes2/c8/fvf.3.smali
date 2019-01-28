.class public Lc8/fvf;
.super Lc8/Kyf;
.source "AnimatedFramesBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/gvf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WeakDecodeAction"
.end annotation


# instance fields
.field private frameBufferRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lc8/gvf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/gvf;)V
    .locals 3
    .param p1, "framesBuffer"    # Lc8/gvf;

    .prologue
    const/4 v2, 0x0

    .line 261
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Lc8/Kyf;-><init>(ILc8/oyf;Lc8/Jyf;Z)V

    .line 262
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc8/fvf;->frameBufferRef:Ljava/lang/ref/WeakReference;

    .line 263
    return-void
.end method


# virtual methods
.method public run(Lc8/oyf;Lc8/Jyf;)V
    .locals 2
    .param p1, "contextConsumer"    # Lc8/oyf;
    .param p2, "resultWrapper"    # Lc8/Jyf;

    .prologue
    .line 268
    iget-object v1, p0, Lc8/fvf;->frameBufferRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/gvf;

    .local v0, "framesBuffer":Lc8/gvf;
    if-eqz v0, :cond_0

    .line 269
    invoke-static {v0}, Lc8/gvf;->access$200(Lc8/gvf;)V

    .line 271
    :cond_0
    return-void
.end method
