.class public Lcom/youku/service/download/v2/Errors$Http404NotFound;
.super Lcom/youku/service/download/v2/Errors$UnacceptedResponseCode;
.source "Errors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Wfn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Http404NotFound"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 213
    const-string/jumbo v0, "404"

    invoke-direct {p0, v0}, Lcom/youku/service/download/v2/Errors$UnacceptedResponseCode;-><init>(Ljava/lang/String;)V

    .line 214
    return-void
.end method
