.class public final Lc8/Rsg;
.super Ljava/lang/Object;
.source "UploaderAction.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Ssg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field final a:Landroid/os/Handler$Callback;

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lc8/Ssg;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Looper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lc8/Ssg;Landroid/os/Handler$Callback;)V
    .locals 2
    .param p1, "action"    # Lc8/Ssg;
    .param p2, "preparedCallback"    # Landroid/os/Handler$Callback;

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc8/Rsg;->b:Ljava/lang/ref/WeakReference;

    .line 116
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc8/Rsg;->c:Ljava/lang/ref/WeakReference;

    .line 117
    iput-object p2, p0, Lc8/Rsg;->a:Landroid/os/Handler$Callback;

    .line 118
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 122
    iget-object v3, p0, Lc8/Rsg;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Ssg;

    .line 123
    .local v0, "action":Lc8/Ssg;
    iget-object v3, p0, Lc8/Rsg;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Looper;

    .line 124
    .local v2, "looper":Landroid/os/Looper;
    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    new-instance v1, Landroid/os/Handler;

    iget-object v3, p0, Lc8/Rsg;->a:Landroid/os/Handler$Callback;

    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 128
    .local v1, "handler":Landroid/os/Handler;
    sget v3, Lc8/Psg;->a:I

    invoke-virtual {v0}, Lc8/Ssg;->e()Lc8/utg;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
