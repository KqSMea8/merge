.class public Lc8/Xdg;
.super Ljava/lang/Object;
.source "WXTimerModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Ydg;->removeOrHoldMessage(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Ydg;

.field final synthetic val$funcId:I

.field final synthetic val$what:I


# direct methods
.method constructor <init>(Lc8/Ydg;II)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lc8/Xdg;->this$0:Lc8/Ydg;

    iput p2, p0, Lc8/Xdg;->val$what:I

    iput p3, p0, Lc8/Xdg;->val$funcId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 181
    iget-object v0, p0, Lc8/Xdg;->this$0:Lc8/Ydg;

    invoke-static {v0}, Lc8/Ydg;->access$200(Lc8/Ydg;)Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Lc8/Xdg;->val$what:I

    iget-object v2, p0, Lc8/Xdg;->this$0:Lc8/Ydg;

    invoke-static {v2}, Lc8/Ydg;->access$100(Lc8/Ydg;)Landroid/util/SparseArray;

    move-result-object v2

    iget v3, p0, Lc8/Xdg;->val$funcId:I

    iget v4, p0, Lc8/Xdg;->val$funcId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 182
    return-void
.end method
