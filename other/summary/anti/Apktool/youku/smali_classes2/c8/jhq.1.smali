.class public abstract Lc8/jhq;
.super Ljava/lang/Object;
.source "ResponseCallback.java"

# interfaces
.implements Lc8/zgq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/zgq",
        "<",
        "Lc8/Whq;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract success(Lc8/Whq;)V
.end method

.method public success(Lc8/Whq;Lc8/Whq;)V
    .locals 0
    .param p1, "response"    # Lc8/Whq;
    .param p2, "response2"    # Lc8/Whq;

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lc8/jhq;->success(Lc8/Whq;)V

    .line 28
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lc8/Whq;)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, Lc8/Whq;

    invoke-virtual {p0, p1, p2}, Lc8/jhq;->success(Lc8/Whq;Lc8/Whq;)V

    return-void
.end method
