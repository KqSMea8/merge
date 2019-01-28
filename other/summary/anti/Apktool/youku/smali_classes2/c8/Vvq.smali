.class public final Lc8/Vvq;
.super Ljava/lang/Object;
.source "OperatorWindowWithStartEndObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Yvq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SerializedSubject"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final consumer:Lc8/Wlq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Wlq",
            "<TT;>;"
        }
    .end annotation
.end field

.field final producer:Lc8/Vlq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/Wlq;Lc8/Vlq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Wlq",
            "<TT;>;",
            "Lc8/Vlq",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "this":Lc8/Vvq;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject<TT;>;"
    .local p1, "consumer":Lc8/Wlq;, "Lrx/Observer<TT;>;"
    .local p2, "producer":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Lc8/pAq;

    invoke-direct {v0, p1}, Lc8/pAq;-><init>(Lc8/Wlq;)V

    iput-object v0, p0, Lc8/Vvq;->consumer:Lc8/Wlq;

    .line 92
    iput-object p2, p0, Lc8/Vvq;->producer:Lc8/Vlq;

    .line 93
    return-void
.end method
