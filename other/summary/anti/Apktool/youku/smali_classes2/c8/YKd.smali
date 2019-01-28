.class public Lc8/YKd;
.super Ljava/lang/Object;
.source "Emitter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/bLd;->flush()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/bLd;


# direct methods
.method constructor <init>(Lc8/bLd;)V
    .locals 0
    .param p1, "this$0"    # Lc8/bLd;

    .prologue
    .line 85
    iput-object p1, p0, Lc8/YKd;->this$0:Lc8/bLd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Lc8/YKd;->this$0:Lc8/bLd;

    invoke-static {v0}, Lc8/bLd;->access$000(Lc8/bLd;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lc8/YKd;->this$0:Lc8/bLd;

    invoke-static {v0}, Lc8/bLd;->access$100(Lc8/bLd;)V

    .line 90
    :cond_0
    return-void
.end method
