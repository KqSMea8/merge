.class public Lc8/Kxb;
.super Lc8/dyb;
.source "WorkFlow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/oyb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArrayNode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I::",
        "Ljava/lang/Iterable",
        "<TR;>;R:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/dyb",
        "<TI;TR;>;"
    }
.end annotation


# instance fields
.field private iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TR;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 280
    .local p0, "this":Lc8/Kxb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$ArrayNode<TI;TR;>;"
    invoke-direct {p0}, Lc8/dyb;-><init>()V

    return-void
.end method

.method static synthetic access$400(Lc8/Kxb;)Ljava/util/Iterator;
    .locals 1
    .param p0, "x0"    # Lc8/Kxb;

    .prologue
    .line 280
    iget-object v0, p0, Lc8/Kxb;->iterator:Ljava/util/Iterator;

    return-object v0
.end method

.method static synthetic access$402(Lc8/Kxb;Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 0
    .param p0, "x0"    # Lc8/Kxb;
    .param p1, "x1"    # Ljava/util/Iterator;

    .prologue
    .line 280
    iput-object p1, p0, Lc8/Kxb;->iterator:Ljava/util/Iterator;

    return-object p1
.end method

.method static make(Lc8/fyb;)Lc8/fyb;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I::",
            "Ljava/lang/Iterable",
            "<TR;>;R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/fyb",
            "<*TI;>;)",
            "Lc8/fyb",
            "<TI;TR;>;"
        }
    .end annotation

    .prologue
    .line 283
    .local p0, "prior":Lc8/fyb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$Flowable<*TI;>;"
    new-instance v0, Lc8/Kxb;

    invoke-direct {v0}, Lc8/Kxb;-><init>()V

    .line 284
    .local v0, "node":Lc8/Kxb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$ArrayNode<TI;TR;>;"
    new-instance v1, Lc8/Ixb;

    invoke-direct {v1, v0}, Lc8/Ixb;-><init>(Lc8/Kxb;)V

    invoke-interface {p0, v1}, Lc8/fyb;->onActionCall(Lc8/eyb;)V

    .line 290
    new-instance v1, Lc8/Jxb;

    invoke-direct {v1, v0}, Lc8/Jxb;-><init>(Lc8/Kxb;)V

    invoke-virtual {v0, v1}, Lc8/Kxb;->setAction(Lc8/Hxb;)Lc8/fyb;

    .line 299
    invoke-virtual {v0, p0}, Lc8/Kxb;->setPrior(Lc8/fyb;)Lc8/fyb;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public isLooping()Z
    .locals 1

    .prologue
    .line 303
    .local p0, "this":Lc8/Kxb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$ArrayNode<TI;TR;>;"
    iget-object v0, p0, Lc8/Kxb;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method
