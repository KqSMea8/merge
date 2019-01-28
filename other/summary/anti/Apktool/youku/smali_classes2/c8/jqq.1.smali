.class public final Lc8/jqq;
.super Ljava/lang/Object;
.source "OnSubscribeOnAssemblySingle.java"

# interfaces
.implements Lc8/Kmq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/iqq;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Kmq",
        "<TT;>;"
    }
.end annotation


# static fields
.field public static volatile fullStackTrace:Z


# instance fields
.field final source:Lc8/Kmq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Kmq",
            "<TT;>;"
        }
    .end annotation
.end field

.field final stacktrace:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lc8/Kmq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Kmq",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lc8/jqq;, "Lrx/internal/operators/OnSubscribeOnAssemblySingle<TT;>;"
    .local p1, "source":Lc8/Kmq;, "Lrx/Single$OnSubscribe<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lc8/jqq;->source:Lc8/Kmq;

    .line 42
    invoke-static {}, Lc8/fqq;->createStacktrace()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/jqq;->stacktrace:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public call(Lc8/Nmq;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Nmq",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lc8/jqq;, "Lrx/internal/operators/OnSubscribeOnAssemblySingle<TT;>;"
    .local p1, "t":Lc8/Nmq;, "Lrx/SingleSubscriber<-TT;>;"
    iget-object v0, p0, Lc8/jqq;->source:Lc8/Kmq;

    new-instance v1, Lc8/iqq;

    iget-object v2, p0, Lc8/jqq;->stacktrace:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Lc8/iqq;-><init>(Lc8/Nmq;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lc8/Kmq;->call(Ljava/lang/Object;)V

    .line 48
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 28
    .local p0, "this":Lc8/jqq;, "Lrx/internal/operators/OnSubscribeOnAssemblySingle<TT;>;"
    check-cast p1, Lc8/Nmq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/jqq;->call(Lc8/Nmq;)V

    return-void
.end method
