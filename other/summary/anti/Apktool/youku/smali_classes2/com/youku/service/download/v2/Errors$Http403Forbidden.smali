.class public Lcom/youku/service/download/v2/Errors$Http403Forbidden;
.super Lcom/youku/service/download/v2/Errors$UnacceptedResponseCode;
.source "Errors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Wfn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Http403Forbidden"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 219
    const-string/jumbo v0, "403"

    invoke-direct {p0, v0}, Lcom/youku/service/download/v2/Errors$UnacceptedResponseCode;-><init>(Ljava/lang/String;)V

    .line 220
    return-void
.end method
