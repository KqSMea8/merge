.class public Lcom/youku/service/download/v2/Errors$Http5xxServerError;
.super Lcom/youku/service/download/v2/Errors$UnacceptedResponseCode;
.source "Errors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Wfn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Http5xxServerError"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lcom/youku/service/download/v2/Errors$UnacceptedResponseCode;-><init>(Ljava/lang/String;)V

    .line 225
    return-void
.end method
