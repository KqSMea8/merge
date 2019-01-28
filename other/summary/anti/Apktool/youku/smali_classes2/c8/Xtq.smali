.class public final Lc8/Xtq;
.super Ljava/lang/Object;
.source "OperatorSingle.java"

# interfaces
.implements Lc8/Tlq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Wtq;,
        Lc8/Vtq;
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
.field private final defaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final hasDefaultValue:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 53
    .local p0, "this":Lc8/Xtq;, "Lrx/internal/operators/OperatorSingle<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lc8/Xtq;-><init>(ZLjava/lang/Object;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lc8/Xtq;, "Lrx/internal/operators/OperatorSingle<TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lc8/Xtq;-><init>(ZLjava/lang/Object;)V

    .line 58
    return-void
.end method

.method private constructor <init>(ZLjava/lang/Object;)V
    .locals 0
    .param p1, "hasDefaultValue"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTT;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lc8/Xtq;, "Lrx/internal/operators/OperatorSingle<TT;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-boolean p1, p0, Lc8/Xtq;->hasDefaultValue:Z

    .line 62
    iput-object p2, p0, Lc8/Xtq;->defaultValue:Ljava/lang/Object;

    .line 63
    return-void
.end method

.method public static instance()Lc8/Xtq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lc8/Xtq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 49
    sget-object v0, Lc8/Vtq;->INSTANCE:Lc8/Xtq;

    return-object v0
.end method


# virtual methods
.method public call(Lc8/Omq;)Lc8/Omq;
    .locals 3
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
    .line 68
    .local p0, "this":Lc8/Xtq;, "Lrx/internal/operators/OperatorSingle<TT;>;"
    .local p1, "child":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lc8/Wtq;

    iget-boolean v1, p0, Lc8/Xtq;->hasDefaultValue:Z

    iget-object v2, p0, Lc8/Xtq;->defaultValue:Ljava/lang/Object;

    invoke-direct {v0, p1, v1, v2}, Lc8/Wtq;-><init>(Lc8/Omq;ZLjava/lang/Object;)V

    .line 70
    .local v0, "parent":Lc8/Wtq;, "Lrx/internal/operators/OperatorSingle$ParentSubscriber<TT;>;"
    invoke-virtual {p1, v0}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 71
    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 31
    .local p0, "this":Lc8/Xtq;, "Lrx/internal/operators/OperatorSingle<TT;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Xtq;->call(Lc8/Omq;)Lc8/Omq;

    move-result-object v0

    return-object v0
.end method
