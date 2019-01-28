.class public Lc8/trb;
.super Ljava/lang/Object;
.source "WXBlurEXModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/urb;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/urb;

.field final synthetic val$blurredBitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lc8/urb;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$1"    # Lc8/urb;

    .prologue
    .line 91
    iput-object p1, p0, Lc8/trb;->this$1:Lc8/urb;

    iput-object p2, p0, Lc8/trb;->val$blurredBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 94
    iget-object v2, p0, Lc8/trb;->val$blurredBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 95
    const-string/jumbo v2, "WXBlurEXModule"

    const-string/jumbo v3, "blur failed"

    invoke-static {v2, v3}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v2, p0, Lc8/trb;->this$1:Lc8/urb;

    iget-object v2, v2, Lc8/urb;->this$0:Lc8/wrb;

    const-string/jumbo v3, "failure"

    const-wide/16 v4, -0x1

    iget-object v6, p0, Lc8/trb;->this$1:Lc8/urb;

    iget-object v6, v6, Lc8/urb;->val$callback:Lc8/EWf;

    invoke-static {v2, v3, v4, v5, v6}, Lc8/wrb;->access$100(Lc8/wrb;Ljava/lang/String;JLc8/EWf;)V

    .line 106
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v2, p0, Lc8/trb;->this$1:Lc8/urb;

    iget-object v2, v2, Lc8/urb;->this$0:Lc8/wrb;

    invoke-static {v2}, Lc8/wrb;->access$200(Lc8/wrb;)Lc8/vrb;

    move-result-object v2

    if-nez v2, :cond_1

    .line 100
    iget-object v2, p0, Lc8/trb;->this$1:Lc8/urb;

    iget-object v2, v2, Lc8/urb;->this$0:Lc8/wrb;

    new-instance v3, Lc8/vrb;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Lc8/vrb;-><init>(I)V

    invoke-static {v2, v3}, Lc8/wrb;->access$202(Lc8/wrb;Lc8/vrb;)Lc8/vrb;

    .line 102
    :cond_1
    iget-object v2, p0, Lc8/trb;->this$1:Lc8/urb;

    iget-object v2, v2, Lc8/urb;->this$0:Lc8/wrb;

    invoke-static {v2}, Lc8/wrb;->access$300(Lc8/wrb;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    .line 103
    .local v0, "key":J
    iget-object v2, p0, Lc8/trb;->this$1:Lc8/urb;

    iget-object v2, v2, Lc8/urb;->this$0:Lc8/wrb;

    invoke-static {v2}, Lc8/wrb;->access$200(Lc8/wrb;)Lc8/vrb;

    move-result-object v2

    new-instance v3, Ljava/lang/ref/WeakReference;

    iget-object v4, p0, Lc8/trb;->val$blurredBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v0, v1, v3}, Lc8/vrb;->put(JLjava/lang/Object;)V

    .line 105
    iget-object v2, p0, Lc8/trb;->this$1:Lc8/urb;

    iget-object v2, v2, Lc8/urb;->this$0:Lc8/wrb;

    const-string/jumbo v3, "success"

    iget-object v4, p0, Lc8/trb;->this$1:Lc8/urb;

    iget-object v4, v4, Lc8/urb;->val$callback:Lc8/EWf;

    invoke-static {v2, v3, v0, v1, v4}, Lc8/wrb;->access$100(Lc8/wrb;Ljava/lang/String;JLc8/EWf;)V

    goto :goto_0
.end method
