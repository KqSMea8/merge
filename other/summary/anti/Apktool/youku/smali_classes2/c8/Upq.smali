.class public final Lc8/Upq;
.super Ljava/lang/Object;
.source "OnSubscribeGroupJoin.java"

# interfaces
.implements Lc8/Rlq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Tpq;,
        Lc8/Rpq;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        "T2:",
        "Ljava/lang/Object;",
        "D1:",
        "Ljava/lang/Object;",
        "D2:",
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
            "<TT1;>;"
        }
    .end annotation
.end field

.field final leftDuration:Lc8/Inq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Inq",
            "<-TT1;+",
            "Lc8/Vlq",
            "<TD1;>;>;"
        }
    .end annotation
.end field

.field final resultSelector:Lc8/Jnq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Jnq",
            "<-TT1;-",
            "Lc8/Vlq",
            "<TT2;>;+TR;>;"
        }
    .end annotation
.end field

.field final right:Lc8/Vlq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Vlq",
            "<TT2;>;"
        }
    .end annotation
.end field

.field final rightDuration:Lc8/Inq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Inq",
            "<-TT2;+",
            "Lc8/Vlq",
            "<TD2;>;>;"
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
            "<TT1;>;",
            "Lc8/Vlq",
            "<TT2;>;",
            "Lc8/Inq",
            "<-TT1;+",
            "Lc8/Vlq",
            "<TD1;>;>;",
            "Lc8/Inq",
            "<-TT2;+",
            "Lc8/Vlq",
            "<TD2;>;>;",
            "Lc8/Jnq",
            "<-TT1;-",
            "Lc8/Vlq",
            "<TT2;>;+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lc8/Upq;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>;"
    .local p1, "left":Lc8/Vlq;, "Lrx/Observable<TT1;>;"
    .local p2, "right":Lc8/Vlq;, "Lrx/Observable<TT2;>;"
    .local p3, "leftDuration":Lc8/Inq;, "Lrx/functions/Func1<-TT1;+Lrx/Observable<TD1;>;>;"
    .local p4, "rightDuration":Lc8/Inq;, "Lrx/functions/Func1<-TT2;+Lrx/Observable<TD2;>;>;"
    .local p5, "resultSelector":Lc8/Jnq;, "Lrx/functions/Func2<-TT1;-Lrx/Observable<TT2;>;+TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lc8/Upq;->left:Lc8/Vlq;

    .line 54
    iput-object p2, p0, Lc8/Upq;->right:Lc8/Vlq;

    .line 55
    iput-object p3, p0, Lc8/Upq;->leftDuration:Lc8/Inq;

    .line 56
    iput-object p4, p0, Lc8/Upq;->rightDuration:Lc8/Inq;

    .line 57
    iput-object p5, p0, Lc8/Upq;->resultSelector:Lc8/Jnq;

    .line 58
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
    .line 62
    .local p0, "this":Lc8/Upq;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>;"
    .local p1, "child":Lc8/Omq;, "Lrx/Subscriber<-TR;>;"
    new-instance v0, Lc8/Rpq;

    new-instance v1, Lc8/qAq;

    invoke-direct {v1, p1}, Lc8/qAq;-><init>(Lc8/Omq;)V

    invoke-direct {v0, p0, v1}, Lc8/Rpq;-><init>(Lc8/Upq;Lc8/Omq;)V

    .line 63
    .local v0, "ro":Lc8/Rpq;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager;"
    invoke-virtual {p1, v0}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 64
    invoke-virtual {v0}, Lc8/Rpq;->init()V

    .line 65
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 40
    .local p0, "this":Lc8/Upq;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Upq;->call(Lc8/Omq;)V

    return-void
.end method
