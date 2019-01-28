.class public final Lc8/Osq;
.super Ljava/lang/Object;
.source "OperatorObserveOn.java"

# interfaces
.implements Lc8/Tlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Rsq;->rebatch(I)Lc8/Tlq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/Tlq",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$n:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 81
    iput p1, p0, Lc8/Osq;->val$n:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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
    .line 84
    .local p1, "child":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lc8/Qsq;

    invoke-static {}, Lc8/hBq;->immediate()Lc8/amq;

    move-result-object v1

    const/4 v2, 0x0

    iget v3, p0, Lc8/Osq;->val$n:I

    invoke-direct {v0, v1, p1, v2, v3}, Lc8/Qsq;-><init>(Lc8/amq;Lc8/Omq;ZI)V

    .line 85
    .local v0, "parent":Lc8/Qsq;, "Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber<TT;>;"
    invoke-virtual {v0}, Lc8/Qsq;->init()V

    .line 86
    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 81
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Osq;->call(Lc8/Omq;)Lc8/Omq;

    move-result-object v0

    return-object v0
.end method
