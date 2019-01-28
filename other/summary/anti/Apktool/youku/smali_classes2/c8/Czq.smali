.class public Lc8/Czq;
.super Ljava/lang/Object;
.source "AsyncOnSubscribe.java"

# interfaces
.implements Lc8/Inq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Jzq;->call(Lc8/Omq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/Inq",
        "<",
        "Lc8/Vlq",
        "<TT;>;",
        "Lc8/Vlq",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Jzq;


# direct methods
.method constructor <init>(Lc8/Jzq;)V
    .locals 0

    .prologue
    .line 348
    .local p0, "this":Lc8/Czq;, "Lrx/observables/AsyncOnSubscribe.7;"
    iput-object p1, p0, Lc8/Czq;->this$0:Lc8/Jzq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lc8/Vlq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Vlq",
            "<TT;>;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 351
    .local p0, "this":Lc8/Czq;, "Lrx/observables/AsyncOnSubscribe.7;"
    .local p1, "v":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    invoke-virtual {p1}, Lc8/Vlq;->onBackpressureBuffer()Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 348
    .local p0, "this":Lc8/Czq;, "Lrx/observables/AsyncOnSubscribe.7;"
    check-cast p1, Lc8/Vlq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Czq;->call(Lc8/Vlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method
