.class public final Lc8/hqq;
.super Ljava/lang/Object;
.source "OnSubscribeOnAssemblyCompletable.java"

# interfaces
.implements Lc8/Llq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/gqq;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Llq;"
    }
.end annotation


# static fields
.field public static volatile fullStackTrace:Z


# instance fields
.field final source:Lc8/Llq;

.field final stacktrace:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lc8/Llq;)V
    .locals 1
    .param p1, "source"    # Lc8/Llq;

    .prologue
    .line 41
    .local p0, "this":Lc8/hqq;, "Lrx/internal/operators/OnSubscribeOnAssemblyCompletable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lc8/hqq;->source:Lc8/Llq;

    .line 43
    invoke-static {}, Lc8/fqq;->createStacktrace()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/hqq;->stacktrace:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public call(Lc8/Nlq;)V
    .locals 3
    .param p1, "t"    # Lc8/Nlq;

    .prologue
    .line 48
    .local p0, "this":Lc8/hqq;, "Lrx/internal/operators/OnSubscribeOnAssemblyCompletable<TT;>;"
    iget-object v0, p0, Lc8/hqq;->source:Lc8/Llq;

    new-instance v1, Lc8/gqq;

    iget-object v2, p0, Lc8/hqq;->stacktrace:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Lc8/gqq;-><init>(Lc8/Nlq;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lc8/Llq;->call(Ljava/lang/Object;)V

    .line 49
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 29
    .local p0, "this":Lc8/hqq;, "Lrx/internal/operators/OnSubscribeOnAssemblyCompletable<TT;>;"
    check-cast p1, Lc8/Nlq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/hqq;->call(Lc8/Nlq;)V

    return-void
.end method
