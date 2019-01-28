.class public Lc8/Xnf;
.super Ljava/lang/Object;
.source "DeeplinkConfigFetchListner.java"

# interfaces
.implements Lc8/Lnf;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 0

    .prologue
    .line 23
    invoke-static {}, Lc8/Mnf;->removeListener()V

    .line 24
    return-void
.end method

.method public onSuccess()V
    .locals 0

    .prologue
    .line 16
    invoke-static {}, Lc8/Mnf;->removeListener()V

    .line 17
    return-void
.end method
