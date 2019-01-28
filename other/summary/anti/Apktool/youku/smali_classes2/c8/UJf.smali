.class public Lc8/UJf;
.super Ljava/lang/Object;
.source "PausableBuffer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private observable:Lc8/Vlq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation
.end field

.field private subject:Lc8/yBq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/yBq",
            "<TT;>;"
        }
    .end annotation
.end field

.field private subscription:Lc8/Pmq;

.field private timespan:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    .local p0, "this":Lc8/UJf;, "Lcom/taobao/tao/messagekit/core/model/PausableBuffer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/UJf;->subscription:Lc8/Pmq;

    .line 19
    invoke-static {}, Lc8/yBq;->create()Lc8/yBq;

    move-result-object v0

    iput-object v0, p0, Lc8/UJf;->subject:Lc8/yBq;

    return-void
.end method

.method static synthetic access$000(Lc8/UJf;)Lc8/Pmq;
    .locals 1
    .param p0, "x0"    # Lc8/UJf;

    .prologue
    .line 17
    iget-object v0, p0, Lc8/UJf;->subscription:Lc8/Pmq;

    return-object v0
.end method

.method static synthetic access$002(Lc8/UJf;Lc8/Pmq;)Lc8/Pmq;
    .locals 0
    .param p0, "x0"    # Lc8/UJf;
    .param p1, "x1"    # Lc8/Pmq;

    .prologue
    .line 17
    iput-object p1, p0, Lc8/UJf;->subscription:Lc8/Pmq;

    return-object p1
.end method

.method static synthetic access$100(Lc8/UJf;)J
    .locals 2
    .param p0, "x0"    # Lc8/UJf;

    .prologue
    .line 17
    iget-wide v0, p0, Lc8/UJf;->timespan:J

    return-wide v0
.end method

.method static synthetic access$200(Lc8/UJf;)Lc8/yBq;
    .locals 1
    .param p0, "x0"    # Lc8/UJf;

    .prologue
    .line 17
    iget-object v0, p0, Lc8/UJf;->subject:Lc8/yBq;

    return-object v0
.end method


# virtual methods
.method public buffer(J)Lc8/UJf;
    .locals 1
    .param p1, "timespan"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lc8/UJf",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "this":Lc8/UJf;, "Lcom/taobao/tao/messagekit/core/model/PausableBuffer<TT;>;"
    iput-wide p1, p0, Lc8/UJf;->timespan:J

    .line 30
    return-object p0
.end method

.method public from(Lc8/Vlq;)Lc8/UJf;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Vlq",
            "<TT;>;)",
            "Lc8/UJf",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "this":Lc8/UJf;, "Lcom/taobao/tao/messagekit/core/model/PausableBuffer<TT;>;"
    .local p1, "observable":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    iput-object p1, p0, Lc8/UJf;->observable:Lc8/Vlq;

    .line 25
    return-object p0
.end method

.method public subscribe(Lc8/inq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/inq",
            "<",
            "Ljava/util/List",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lc8/UJf;, "Lcom/taobao/tao/messagekit/core/model/PausableBuffer<TT;>;"
    .local p1, "observer":Lc8/inq;, "Lrx/functions/Action1<Ljava/util/List<TT;>;>;"
    iget-object v0, p0, Lc8/UJf;->observable:Lc8/Vlq;

    if-nez v0, :cond_0

    .line 54
    :goto_0
    return-void

    .line 35
    :cond_0
    iget-object v0, p0, Lc8/UJf;->observable:Lc8/Vlq;

    new-instance v1, Lc8/TJf;

    invoke-direct {v1, p0, p1}, Lc8/TJf;-><init>(Lc8/UJf;Lc8/inq;)V

    invoke-virtual {v0, v1}, Lc8/Vlq;->subscribe(Lc8/inq;)Lc8/Pmq;

    goto :goto_0
.end method
