.class public Lc8/grq;
.super Ljava/lang/Object;
.source "OperatorBufferWithSize.java"

# interfaces
.implements Lc8/Xlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/hrq;->createProducer()Lc8/Xlq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/hrq;


# direct methods
.method constructor <init>(Lc8/hrq;)V
    .locals 0

    .prologue
    .line 134
    .local p0, "this":Lc8/grq;, "Lrx/internal/operators/OperatorBufferWithSize$BufferExact.1;"
    iput-object p1, p0, Lc8/grq;->this$0:Lc8/hrq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 7
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lc8/grq;, "Lrx/internal/operators/OperatorBufferWithSize$BufferExact.1;"
    const-wide/16 v4, 0x0

    .line 137
    cmp-long v2, p1, v4

    if-gez v2, :cond_0

    .line 138
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "n >= required but it was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 140
    :cond_0
    cmp-long v2, p1, v4

    if-eqz v2, :cond_1

    .line 141
    iget-object v2, p0, Lc8/grq;->this$0:Lc8/hrq;

    iget v2, v2, Lc8/hrq;->count:I

    int-to-long v2, v2

    invoke-static {p1, p2, v2, v3}, Lc8/ioq;->multiplyCap(JJ)J

    move-result-wide v0

    .line 142
    .local v0, "u":J
    iget-object v2, p0, Lc8/grq;->this$0:Lc8/hrq;

    invoke-static {v2, v0, v1}, Lc8/hrq;->access$000(Lc8/hrq;J)V

    .line 144
    .end local v0    # "u":J
    :cond_1
    return-void
.end method
