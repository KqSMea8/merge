.class public final Lc8/Rsq;
.super Ljava/lang/Object;
.source "OperatorObserveOn.java"

# interfaces
.implements Lc8/Tlq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Qsq;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Tlq",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field private final bufferSize:I

.field private final delayError:Z

.field private final scheduler:Lc8/amq;


# direct methods
.method public constructor <init>(Lc8/amq;Z)V
    .locals 1
    .param p1, "scheduler"    # Lc8/amq;
    .param p2, "delayError"    # Z

    .prologue
    .line 51
    .local p0, "this":Lc8/Rsq;, "Lrx/internal/operators/OperatorObserveOn<TT;>;"
    sget v0, Lc8/fyq;->SIZE:I

    invoke-direct {p0, p1, p2, v0}, Lc8/Rsq;-><init>(Lc8/amq;ZI)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lc8/amq;ZI)V
    .locals 0
    .param p1, "scheduler"    # Lc8/amq;
    .param p2, "delayError"    # Z
    .param p3, "bufferSize"    # I

    .prologue
    .line 59
    .local p0, "this":Lc8/Rsq;, "Lrx/internal/operators/OperatorObserveOn<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lc8/Rsq;->scheduler:Lc8/amq;

    .line 61
    iput-boolean p2, p0, Lc8/Rsq;->delayError:Z

    .line 62
    if-lez p3, :cond_0

    .end local p3    # "bufferSize":I
    :goto_0
    iput p3, p0, Lc8/Rsq;->bufferSize:I

    .line 63
    return-void

    .line 62
    .restart local p3    # "bufferSize":I
    :cond_0
    sget p3, Lc8/fyq;->SIZE:I

    goto :goto_0
.end method

.method public static rebatch(I)Lc8/Tlq;
    .locals 1
    .param p0, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lc8/Tlq",
            "<TT;TT;>;"
        }
    .end annotation

    .prologue
    .line 81
    new-instance v0, Lc8/Osq;

    invoke-direct {v0, p0}, Lc8/Osq;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public call(Lc8/Omq;)Lc8/Omq;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TT;>;)",
            "Lc8/Omq",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lc8/Rsq;, "Lrx/internal/operators/OperatorObserveOn<TT;>;"
    .local p1, "child":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    iget-object v1, p0, Lc8/Rsq;->scheduler:Lc8/amq;

    instance-of v1, v1, Lc8/gxq;

    if-eqz v1, :cond_1

    .line 76
    .end local p1    # "child":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    :cond_0
    :goto_0
    return-object p1

    .line 70
    .restart local p1    # "child":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    :cond_1
    iget-object v1, p0, Lc8/Rsq;->scheduler:Lc8/amq;

    instance-of v1, v1, Lc8/vxq;

    if-nez v1, :cond_0

    .line 74
    new-instance v0, Lc8/Qsq;

    iget-object v1, p0, Lc8/Rsq;->scheduler:Lc8/amq;

    iget-boolean v2, p0, Lc8/Rsq;->delayError:Z

    iget v3, p0, Lc8/Rsq;->bufferSize:I

    invoke-direct {v0, v1, p1, v2, v3}, Lc8/Qsq;-><init>(Lc8/amq;Lc8/Omq;ZI)V

    .line 75
    .local v0, "parent":Lc8/Qsq;, "Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber<TT;>;"
    invoke-virtual {v0}, Lc8/Qsq;->init()V

    move-object p1, v0

    .line 76
    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 40
    .local p0, "this":Lc8/Rsq;, "Lrx/internal/operators/OperatorObserveOn<TT;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Rsq;->call(Lc8/Omq;)Lc8/Omq;

    move-result-object v0

    return-object v0
.end method
