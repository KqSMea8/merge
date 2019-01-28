.class public final Lc8/msq;
.super Ljava/lang/Object;
.source "OperatorGroupBy.java"

# interfaces
.implements Lc8/Xlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/qsq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GroupByProducer"
.end annotation


# instance fields
.field final parent:Lc8/osq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/osq",
            "<***>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/osq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/osq",
            "<***>;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, "parent":Lc8/osq;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<***>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lc8/msq;->parent:Lc8/osq;

    .line 104
    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 1
    .param p1, "n"    # J

    .prologue
    .line 107
    iget-object v0, p0, Lc8/msq;->parent:Lc8/osq;

    invoke-virtual {v0, p1, p2}, Lc8/osq;->requestMore(J)V

    .line 108
    return-void
.end method
