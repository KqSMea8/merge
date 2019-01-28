.class public final Lc8/gwq;
.super Ljava/lang/Object;
.source "OperatorWindowWithTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/hwq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final EMPTY:Lc8/gwq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/gwq",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final consumer:Lc8/Wlq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Wlq",
            "<TT;>;"
        }
    .end annotation
.end field

.field final count:I

.field final producer:Lc8/Vlq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 86
    new-instance v0, Lc8/gwq;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v2, v1}, Lc8/gwq;-><init>(Lc8/Wlq;Lc8/Vlq;I)V

    sput-object v0, Lc8/gwq;->EMPTY:Lc8/gwq;

    return-void
.end method

.method public constructor <init>(Lc8/Wlq;Lc8/Vlq;I)V
    .locals 0
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Wlq",
            "<TT;>;",
            "Lc8/Vlq",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Lc8/gwq;, "Lrx/internal/operators/OperatorWindowWithTime$State<TT;>;"
    .local p1, "consumer":Lc8/Wlq;, "Lrx/Observer<TT;>;"
    .local p2, "producer":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lc8/gwq;->consumer:Lc8/Wlq;

    .line 90
    iput-object p2, p0, Lc8/gwq;->producer:Lc8/Vlq;

    .line 91
    iput p3, p0, Lc8/gwq;->count:I

    .line 92
    return-void
.end method

.method public static empty()Lc8/gwq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lc8/gwq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 104
    sget-object v0, Lc8/gwq;->EMPTY:Lc8/gwq;

    return-object v0
.end method


# virtual methods
.method public clear()Lc8/gwq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/gwq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lc8/gwq;, "Lrx/internal/operators/OperatorWindowWithTime$State<TT;>;"
    invoke-static {}, Lc8/gwq;->empty()Lc8/gwq;

    move-result-object v0

    return-object v0
.end method

.method public create(Lc8/Wlq;Lc8/Vlq;)Lc8/gwq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Wlq",
            "<TT;>;",
            "Lc8/Vlq",
            "<TT;>;)",
            "Lc8/gwq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "this":Lc8/gwq;, "Lrx/internal/operators/OperatorWindowWithTime$State<TT;>;"
    .local p1, "consumer":Lc8/Wlq;, "Lrx/Observer<TT;>;"
    .local p2, "producer":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    new-instance v0, Lc8/gwq;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lc8/gwq;-><init>(Lc8/Wlq;Lc8/Vlq;I)V

    return-object v0
.end method

.method public next()Lc8/gwq;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/gwq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "this":Lc8/gwq;, "Lrx/internal/operators/OperatorWindowWithTime$State<TT;>;"
    new-instance v0, Lc8/gwq;

    iget-object v1, p0, Lc8/gwq;->consumer:Lc8/Wlq;

    iget-object v2, p0, Lc8/gwq;->producer:Lc8/Vlq;

    iget v3, p0, Lc8/gwq;->count:I

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lc8/gwq;-><init>(Lc8/Wlq;Lc8/Vlq;I)V

    return-object v0
.end method
