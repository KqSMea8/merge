.class public final Lc8/lyq;
.super Ljava/lang/Object;
.source "ScalarSynchronousObservable.java"

# interfaces
.implements Lc8/Rlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/oyq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JustOnSubscribe"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Rlq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p0, "this":Lc8/lyq;, "Lrx/internal/util/ScalarSynchronousObservable$JustOnSubscribe<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Lc8/lyq;->value:Ljava/lang/Object;

    .line 134
    return-void
.end method


# virtual methods
.method public call(Lc8/Omq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, "this":Lc8/lyq;, "Lrx/internal/util/ScalarSynchronousObservable$JustOnSubscribe<TT;>;"
    .local p1, "s":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    iget-object v0, p0, Lc8/lyq;->value:Ljava/lang/Object;

    invoke-static {p1, v0}, Lc8/oyq;->createProducer(Lc8/Omq;Ljava/lang/Object;)Lc8/Xlq;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc8/Omq;->setProducer(Lc8/Xlq;)V

    .line 139
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 129
    .local p0, "this":Lc8/lyq;, "Lrx/internal/util/ScalarSynchronousObservable$JustOnSubscribe<TT;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/lyq;->call(Lc8/Omq;)V

    return-void
.end method
