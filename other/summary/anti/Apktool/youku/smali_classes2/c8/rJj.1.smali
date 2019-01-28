.class public Lc8/rJj;
.super Ljava/lang/Object;
.source "BaseCall.java"

# interfaces
.implements Lc8/sJj;


# static fields
.field protected static handler:Landroid/os/Handler;


# instance fields
.field protected converter:Lc8/TJj;

.field protected ykRequest:Lc8/dJj;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lc8/rJj;->handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asyncCall(Lc8/OIj;)V
    .locals 0
    .param p1, "callback"    # Lc8/OIj;

    .prologue
    .line 33
    return-void
.end method

.method public asyncUICall(Lc8/OIj;)V
    .locals 0
    .param p1, "callback"    # Lc8/OIj;

    .prologue
    .line 38
    return-void
.end method

.method public cancel()V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method protected construct(Lc8/dJj;)V
    .locals 0
    .param p1, "ykRequest"    # Lc8/dJj;

    .prologue
    .line 24
    return-void
.end method

.method public getYkRequest()Lc8/dJj;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lc8/rJj;->ykRequest:Lc8/dJj;

    return-object v0
.end method

.method public syncCall()Lc8/eJj;
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return-object v0
.end method
