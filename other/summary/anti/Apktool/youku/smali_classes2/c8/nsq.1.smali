.class public Lc8/nsq;
.super Ljava/lang/Object;
.source "OperatorGroupBy.java"

# interfaces
.implements Lc8/inq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/osq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EvictionAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/inq",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final evictedKeys:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Queue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<TK;>;)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p0, "this":Lc8/nsq;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$EvictionAction<TK;>;"
    .local p1, "evictedKeys":Ljava/util/Queue;, "Ljava/util/Queue<TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object p1, p0, Lc8/nsq;->evictedKeys:Ljava/util/Queue;

    .line 169
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p0, "this":Lc8/nsq;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$EvictionAction<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lc8/nsq;->evictedKeys:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 174
    return-void
.end method
