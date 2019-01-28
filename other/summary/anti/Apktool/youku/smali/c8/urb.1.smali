.class public Lc8/urb;
.super Lc8/Tcf;
.source "WXBlurEXModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/wrb;->createBlurWithOverlay(Ljava/lang/String;ILjava/lang/String;Lc8/EWf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/wrb;

.field final synthetic val$callback:Lc8/EWf;

.field final synthetic val$controller:Lc8/srb;

.field final synthetic val$overlayColorInt:I

.field final synthetic val$radius:I

.field final synthetic val$targetView:Landroid/view/View;


# direct methods
.method constructor <init>(Lc8/wrb;Ljava/lang/String;Lc8/srb;Landroid/view/View;IILc8/EWf;)V
    .locals 0
    .param p1, "this$0"    # Lc8/wrb;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lc8/urb;->this$0:Lc8/wrb;

    iput-object p3, p0, Lc8/urb;->val$controller:Lc8/srb;

    iput-object p4, p0, Lc8/urb;->val$targetView:Landroid/view/View;

    iput p5, p0, Lc8/urb;->val$overlayColorInt:I

    iput p6, p0, Lc8/urb;->val$radius:I

    iput-object p7, p0, Lc8/urb;->val$callback:Lc8/EWf;

    invoke-direct {p0, p2}, Lc8/Tcf;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 89
    iget-object v1, p0, Lc8/urb;->val$controller:Lc8/srb;

    iget-object v2, p0, Lc8/urb;->val$targetView:Landroid/view/View;

    iget v3, p0, Lc8/urb;->val$overlayColorInt:I

    iget v4, p0, Lc8/urb;->val$radius:I

    invoke-virtual {v1, v2, v3, v4}, Lc8/srb;->createBlurOnTargetView(Landroid/view/View;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 90
    .local v0, "blurredBitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lc8/urb;->this$0:Lc8/wrb;

    invoke-static {v1}, Lc8/wrb;->access$000(Lc8/wrb;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lc8/urb;->this$0:Lc8/wrb;

    invoke-static {v1}, Lc8/wrb;->access$000(Lc8/wrb;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lc8/trb;

    invoke-direct {v2, p0, v0}, Lc8/trb;-><init>(Lc8/urb;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 109
    :cond_0
    return-void
.end method
