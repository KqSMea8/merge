.class public final Lc8/syq;
.super Ljava/lang/Object;
.source "ScalarSynchronousSingle.java"

# interfaces
.implements Lc8/Kmq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/vyq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DirectScheduledEmission"
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


# instance fields
.field private final es:Lc8/Ywq;

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lc8/Ywq;Ljava/lang/Object;)V
    .locals 0
    .param p1, "es"    # Lc8/Ywq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Ywq;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lc8/syq;, "Lrx/internal/util/ScalarSynchronousSingle$DirectScheduledEmission<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lc8/syq;->es:Lc8/Ywq;

    .line 75
    iput-object p2, p0, Lc8/syq;->value:Ljava/lang/Object;

    .line 76
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
    .line 80
    .local p0, "this":Lc8/syq;, "Lrx/internal/util/ScalarSynchronousSingle$DirectScheduledEmission<TT;>;"
    .local p1, "singleSubscriber":Lc8/Nmq;, "Lrx/SingleSubscriber<-TT;>;"
    iget-object v0, p0, Lc8/syq;->es:Lc8/Ywq;

    new-instance v1, Lc8/uyq;

    iget-object v2, p0, Lc8/syq;->value:Ljava/lang/Object;

    invoke-direct {v1, p1, v2}, Lc8/uyq;-><init>(Lc8/Nmq;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lc8/Ywq;->scheduleDirect(Lc8/hnq;)Lc8/Pmq;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc8/Nmq;->add(Lc8/Pmq;)V

    .line 81
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 69
    .local p0, "this":Lc8/syq;, "Lrx/internal/util/ScalarSynchronousSingle$DirectScheduledEmission<TT;>;"
    check-cast p1, Lc8/Nmq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/syq;->call(Lc8/Nmq;)V

    return-void
.end method
