.class public Lc8/vJj;
.super Ljava/lang/Object;
.source "CallbackWrapper.java"

# interfaces
.implements Lc8/OIj;


# instance fields
.field private mCallback:Lc8/OIj;

.field private mLogger:Lc8/wJj;


# direct methods
.method public constructor <init>(Lc8/OIj;Lc8/wJj;)V
    .locals 0
    .param p1, "callback"    # Lc8/OIj;
    .param p2, "logger"    # Lc8/wJj;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lc8/vJj;->mCallback:Lc8/OIj;

    .line 17
    iput-object p2, p0, Lc8/vJj;->mLogger:Lc8/wJj;

    .line 18
    return-void
.end method

.method private onFinished(Lc8/eJj;)V
    .locals 1
    .param p1, "response"    # Lc8/eJj;

    .prologue
    .line 29
    iget-object v0, p0, Lc8/vJj;->mLogger:Lc8/wJj;

    invoke-interface {v0, p1}, Lc8/wJj;->afterCall(Lc8/eJj;)V

    .line 30
    return-void
.end method


# virtual methods
.method public onFinish(Lc8/eJj;)V
    .locals 1
    .param p1, "response"    # Lc8/eJj;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lc8/vJj;->onFinished(Lc8/eJj;)V

    .line 23
    iget-object v0, p0, Lc8/vJj;->mCallback:Lc8/OIj;

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lc8/vJj;->mCallback:Lc8/OIj;

    invoke-interface {v0, p1}, Lc8/OIj;->onFinish(Lc8/eJj;)V

    .line 26
    :cond_0
    return-void
.end method
