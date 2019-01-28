.class public final Lc8/uyq;
.super Ljava/lang/Object;
.source "ScalarSynchronousSingle.java"

# interfaces
.implements Lc8/hnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/vyq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScalarSynchronousSingleAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/hnq;"
    }
.end annotation


# instance fields
.field private final subscriber:Lc8/Nmq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Nmq",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lc8/Nmq;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Nmq",
            "<-TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "this":Lc8/uyq;, "Lrx/internal/util/ScalarSynchronousSingle$ScalarSynchronousSingleAction<TT;>;"
    .local p1, "subscriber":Lc8/Nmq;, "Lrx/SingleSubscriber<-TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lc8/uyq;->subscriber:Lc8/Nmq;

    .line 114
    iput-object p2, p0, Lc8/uyq;->value:Ljava/lang/Object;

    .line 115
    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    .prologue
    .line 120
    .local p0, "this":Lc8/uyq;, "Lrx/internal/util/ScalarSynchronousSingle$ScalarSynchronousSingleAction<TT;>;"
    :try_start_0
    iget-object v1, p0, Lc8/uyq;->subscriber:Lc8/Nmq;

    iget-object v2, p0, Lc8/uyq;->value:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lc8/Nmq;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lc8/uyq;->subscriber:Lc8/Nmq;

    invoke-virtual {v1, v0}, Lc8/Nmq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
