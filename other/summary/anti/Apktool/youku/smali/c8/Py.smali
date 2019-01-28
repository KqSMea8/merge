.class public Lc8/Py;
.super Ljava/lang/Object;
.source "ActivityThreadHook.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Qy;->handleService(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Qy;


# direct methods
.method constructor <init>(Lc8/Qy;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Qy;

    .prologue
    .line 380
    iput-object p1, p0, Lc8/Py;->this$0:Lc8/Qy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 384
    :try_start_0
    iget-object v1, p0, Lc8/Py;->this$0:Lc8/Qy;

    invoke-static {v1}, Lc8/Qy;->access$000(Lc8/Qy;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
