.class public final Lc8/yuq;
.super Ljava/lang/Object;
.source "OperatorSwitch.java"

# interfaces
.implements Lc8/Tlq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/uuq;,
        Lc8/xuq;,
        Lc8/tuq;,
        Lc8/suq;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Tlq",
        "<TT;",
        "Lc8/Vlq",
        "<+TT;>;>;"
    }
.end annotation


# instance fields
.field final delayError:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0
    .param p1, "delayError"    # Z

    .prologue
    .line 65
    .local p0, "this":Lc8/yuq;, "Lrx/internal/operators/OperatorSwitch<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-boolean p1, p0, Lc8/yuq;->delayError:Z

    .line 67
    return-void
.end method

.method public static instance(Z)Lc8/yuq;
    .locals 1
    .param p0, "delayError"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z)",
            "Lc8/yuq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 59
    if-eqz p0, :cond_0

    .line 60
    sget-object v0, Lc8/tuq;->INSTANCE:Lc8/yuq;

    .line 62
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lc8/suq;->INSTANCE:Lc8/yuq;

    goto :goto_0
.end method


# virtual methods
.method public call(Lc8/Omq;)Lc8/Omq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TT;>;)",
            "Lc8/Omq",
            "<-",
            "Lc8/Vlq",
            "<+TT;>;>;"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lc8/yuq;, "Lrx/internal/operators/OperatorSwitch<TT;>;"
    .local p1, "child":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lc8/xuq;

    iget-boolean v1, p0, Lc8/yuq;->delayError:Z

    invoke-direct {v0, p1, v1}, Lc8/xuq;-><init>(Lc8/Omq;Z)V

    .line 72
    .local v0, "sws":Lc8/xuq;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>;"
    invoke-virtual {p1, v0}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 73
    invoke-virtual {v0}, Lc8/xuq;->init()V

    .line 74
    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 39
    .local p0, "this":Lc8/yuq;, "Lrx/internal/operators/OperatorSwitch<TT;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/yuq;->call(Lc8/Omq;)Lc8/Omq;

    move-result-object v0

    return-object v0
.end method
