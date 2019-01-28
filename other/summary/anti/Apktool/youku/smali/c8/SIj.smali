.class public abstract Lc8/SIj;
.super Ljava/lang/Object;
.source "IHttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/TIj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "IHttpRequestCallBack"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(ILjava/lang/String;)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "failReason"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-virtual {p0, p2}, Lc8/SIj;->onFailed(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public onFailed(Lc8/TIj;)V
    .locals 0
    .param p1, "request"    # Lc8/TIj;

    .prologue
    .line 90
    return-void
.end method

.method public onFailed(Ljava/lang/String;)V
    .locals 0
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 87
    return-void
.end method

.method public onLocalLoad(Lc8/TIj;)V
    .locals 0
    .param p1, "request"    # Lc8/TIj;

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lc8/SIj;->onSuccess(Lc8/TIj;)V

    .line 97
    return-void
.end method

.method public onNoAuthorized(Lc8/TIj;)V
    .locals 0
    .param p1, "request"    # Lc8/TIj;

    .prologue
    .line 101
    return-void
.end method

.method public abstract onSuccess(Lc8/TIj;)V
.end method

.method public onSuccessDoParse(Lc8/TIj;)Z
    .locals 1
    .param p1, "request"    # Lc8/TIj;

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lc8/SIj;->onSuccessDoParseInBackground(Lc8/TIj;)V

    .line 77
    const/4 v0, 0x1

    return v0
.end method

.method public onSuccessDoParseInBackground(Lc8/TIj;)V
    .locals 0
    .param p1, "request"    # Lc8/TIj;

    .prologue
    .line 68
    return-void
.end method
