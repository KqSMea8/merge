.class public final Lc8/jrq;
.super Lc8/Omq;
.source "OperatorBufferWithSize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/krq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BufferSkip"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorBufferWithSize$BufferSkip$BufferSkipProducer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/Omq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final actual:Lc8/Omq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Omq",
            "<-",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field buffer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field public final count:I
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field index:J

.field public final skip:I
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/Omq;II)V
    .locals 2
    .param p2, "count"    # I
    .param p3, "skip"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-",
            "Ljava/util/List",
            "<TT;>;>;II)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p0, "this":Lc8/jrq;, "Lrx/internal/operators/OperatorBufferWithSize$BufferSkip<TT;>;"
    .local p1, "actual":Lc8/Omq;, "Lrx/Subscriber<-Ljava/util/List<TT;>;>;"
    invoke-direct {p0}, Lc8/Omq;-><init>()V

    .line 159
    iput-object p1, p0, Lc8/jrq;->actual:Lc8/Omq;

    .line 160
    iput p2, p0, Lc8/jrq;->count:I

    .line 161
    iput p3, p0, Lc8/jrq;->skip:I

    .line 162
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lc8/jrq;->request(J)V

    .line 163
    return-void
.end method

.method public static synthetic access$100(Lc8/jrq;J)V
    .locals 1
    .param p0, "x0"    # Lc8/jrq;
    .param p1, "x1"    # J
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 149
    invoke-virtual {p0, p1, p2}, Lc8/jrq;->request(J)V

    return-void
.end method

.method public static synthetic access$200(Lc8/jrq;J)V
    .locals 1
    .param p0, "x0"    # Lc8/jrq;
    .param p1, "x1"    # J
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 149
    invoke-virtual {p0, p1, p2}, Lc8/jrq;->request(J)V

    return-void
.end method


# virtual methods
.method createProducer()Lc8/Xlq;
    .locals 1

    .prologue
    .line 207
    .local p0, "this":Lc8/jrq;, "Lrx/internal/operators/OperatorBufferWithSize$BufferSkip<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip$BufferSkipProducer;

    invoke-direct {v0, p0}, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip$BufferSkipProducer;-><init>(Lc8/jrq;)V

    return-object v0
.end method

.method public onCompleted()V
    .locals 2

    .prologue
    .line 198
    .local p0, "this":Lc8/jrq;, "Lrx/internal/operators/OperatorBufferWithSize$BufferSkip<TT;>;"
    iget-object v0, p0, Lc8/jrq;->buffer:Ljava/util/List;

    .line 199
    .local v0, "b":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-eqz v0, :cond_0

    .line 200
    const/4 v1, 0x0

    iput-object v1, p0, Lc8/jrq;->buffer:Ljava/util/List;

    .line 201
    iget-object v1, p0, Lc8/jrq;->actual:Lc8/Omq;

    invoke-virtual {v1, v0}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    .line 203
    :cond_0
    iget-object v1, p0, Lc8/jrq;->actual:Lc8/Omq;

    invoke-virtual {v1}, Lc8/Omq;->onCompleted()V

    .line 204
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 192
    .local p0, "this":Lc8/jrq;, "Lrx/internal/operators/OperatorBufferWithSize$BufferSkip<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/jrq;->buffer:Ljava/util/List;

    .line 193
    iget-object v0, p0, Lc8/jrq;->actual:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    .line 194
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lc8/jrq;, "Lrx/internal/operators/OperatorBufferWithSize$BufferSkip<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const-wide/16 v6, 0x0

    .line 167
    iget-wide v2, p0, Lc8/jrq;->index:J

    .line 168
    .local v2, "i":J
    iget-object v0, p0, Lc8/jrq;->buffer:Ljava/util/List;

    .line 169
    .local v0, "b":Ljava/util/List;, "Ljava/util/List<TT;>;"
    cmp-long v1, v2, v6

    if-nez v1, :cond_0

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "b":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget v1, p0, Lc8/jrq;->count:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 171
    .restart local v0    # "b":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iput-object v0, p0, Lc8/jrq;->buffer:Ljava/util/List;

    .line 173
    :cond_0
    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    .line 174
    iget v1, p0, Lc8/jrq;->skip:I

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 175
    iput-wide v6, p0, Lc8/jrq;->index:J

    .line 180
    :goto_0
    if-eqz v0, :cond_1

    .line 181
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget v4, p0, Lc8/jrq;->count:I

    if-ne v1, v4, :cond_1

    .line 184
    const/4 v1, 0x0

    iput-object v1, p0, Lc8/jrq;->buffer:Ljava/util/List;

    .line 185
    iget-object v1, p0, Lc8/jrq;->actual:Lc8/Omq;

    invoke-virtual {v1, v0}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    .line 188
    :cond_1
    return-void

    .line 177
    :cond_2
    iput-wide v2, p0, Lc8/jrq;->index:J

    goto :goto_0
.end method
