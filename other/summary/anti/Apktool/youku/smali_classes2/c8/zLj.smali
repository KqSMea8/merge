.class public Lc8/zLj;
.super Ljava/lang/Object;
.source "Youku.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/KLj;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/KLj;

.field final synthetic val$handlerThread:Landroid/os/HandlerThread;


# direct methods
.method constructor <init>(Lc8/KLj;Landroid/os/HandlerThread;)V
    .locals 0
    .param p1, "this$0"    # Lc8/KLj;

    .prologue
    .line 505
    iput-object p1, p0, Lc8/zLj;->this$0:Lc8/KLj;

    iput-object p2, p0, Lc8/zLj;->val$handlerThread:Landroid/os/HandlerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 508
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 509
    iget-object v0, p0, Lc8/zLj;->val$handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 513
    :goto_0
    return-void

    .line 511
    :cond_0
    iget-object v0, p0, Lc8/zLj;->val$handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    goto :goto_0
.end method
