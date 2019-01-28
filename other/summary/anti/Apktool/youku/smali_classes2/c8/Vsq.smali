.class public Lc8/Vsq;
.super Ljava/lang/Object;
.source "OperatorOnBackpressureDrop.java"

# interfaces
.implements Lc8/Xlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Ysq;->call(Lc8/Omq;)Lc8/Omq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Ysq;

.field final synthetic val$requested:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method constructor <init>(Lc8/Ysq;Ljava/util/concurrent/atomic/AtomicLong;)V
    .locals 0

    .prologue
    .line 56
    .local p0, "this":Lc8/Vsq;, "Lrx/internal/operators/OperatorOnBackpressureDrop.1;"
    iput-object p1, p0, Lc8/Vsq;->this$0:Lc8/Ysq;

    iput-object p2, p0, Lc8/Vsq;->val$requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 1
    .param p1, "n"    # J

    .prologue
    .line 60
    .local p0, "this":Lc8/Vsq;, "Lrx/internal/operators/OperatorOnBackpressureDrop.1;"
    iget-object v0, p0, Lc8/Vsq;->val$requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lc8/ioq;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 61
    return-void
.end method
