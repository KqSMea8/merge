.class public final Lc8/aqq;
.super Ljava/lang/Object;
.source "OnSubscribeJoin.java"

# interfaces
.implements Lc8/Rlq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Zpq;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T",
        "Left:Ljava/lang/Object;",
        "TRight:",
        "Ljava/lang/Object;",
        "T",
        "LeftDuration:Ljava/lang/Object;",
        "TRightDuration:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Rlq",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final left:Lc8/Vlq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Vlq",
            "<TT",
            "Left;",
            ">;"
        }
    .end annotation
.end field

.field final leftDurationSelector:Lc8/Inq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Inq",
            "<TT",
            "Left;",
            "Lc8/Vlq",
            "<TT",
            "LeftDuration;",
            ">;>;"
        }
    .end annotation
.end field

.field final resultSelector:Lc8/Jnq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Jnq",
            "<TT",
            "Left;",
            "TTRight;TR;>;"
        }
    .end annotation
.end field

.field final right:Lc8/Vlq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Vlq",
            "<TTRight;>;"
        }
    .end annotation
.end field

.field final rightDurationSelector:Lc8/Inq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Inq",
            "<TTRight;",
            "Lc8/Vlq",
            "<TTRightDuration;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/Vlq;Lc8/Vlq;Lc8/Inq;Lc8/Inq;Lc8/Jnq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Vlq",
            "<TT",
            "Left;",
            ">;",
            "Lc8/Vlq",
            "<TTRight;>;",
            "Lc8/Inq",
            "<TT",
            "Left;",
            "Lc8/Vlq",
            "<TT",
            "LeftDuration;",
            ">;>;",
            "Lc8/Inq",
            "<TTRight;",
            "Lc8/Vlq",
            "<TTRightDuration;>;>;",
            "Lc8/Jnq",
            "<TT",
            "Left;",
            "TTRight;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lc8/aqq;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>;"
    .local p1, "left":Lc8/Vlq;, "Lrx/Observable<TTLeft;>;"
    .local p2, "right":Lc8/Vlq;, "Lrx/Observable<TTRight;>;"
    .local p3, "leftDurationSelector":Lc8/Inq;, "Lrx/functions/Func1<TTLeft;Lrx/Observable<TTLeftDuration;>;>;"
    .local p4, "rightDurationSelector":Lc8/Inq;, "Lrx/functions/Func1<TTRight;Lrx/Observable<TTRightDuration;>;>;"
    .local p5, "resultSelector":Lc8/Jnq;, "Lrx/functions/Func2<TTLeft;TTRight;TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lc8/aqq;->left:Lc8/Vlq;

    .line 51
    iput-object p2, p0, Lc8/aqq;->right:Lc8/Vlq;

    .line 52
    iput-object p3, p0, Lc8/aqq;->leftDurationSelector:Lc8/Inq;

    .line 53
    iput-object p4, p0, Lc8/aqq;->rightDurationSelector:Lc8/Inq;

    .line 54
    iput-object p5, p0, Lc8/aqq;->resultSelector:Lc8/Jnq;

    .line 55
    return-void
.end method


# virtual methods
.method public call(Lc8/Omq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lc8/aqq;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>;"
    .local p1, "t1":Lc8/Omq;, "Lrx/Subscriber<-TR;>;"
    new-instance v0, Lc8/Zpq;

    new-instance v1, Lc8/qAq;

    invoke-direct {v1, p1}, Lc8/qAq;-><init>(Lc8/Omq;)V

    invoke-direct {v0, p0, v1}, Lc8/Zpq;-><init>(Lc8/aqq;Lc8/Omq;)V

    .line 60
    .local v0, "result":Lc8/Zpq;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink;"
    invoke-virtual {v0}, Lc8/Zpq;->run()V

    .line 61
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 37
    .local p0, "this":Lc8/aqq;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/aqq;->call(Lc8/Omq;)V

    return-void
.end method
