.class public Lc8/Sgq;
.super Ljava/lang/Object;
.source "Platform.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Tgq;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/Tgq;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lc8/Tgq;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$1"    # Lc8/Tgq;

    .prologue
    .line 91
    iput-object p1, p0, Lc8/Sgq;->this$1:Lc8/Tgq;

    iput-object p2, p0, Lc8/Sgq;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 93
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 94
    iget-object v0, p0, Lc8/Sgq;->val$r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 95
    return-void
.end method
