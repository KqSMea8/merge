.class public Lcom/youku/service/download/v2/Errors$FetchVideoInfoError;
.super Lcom/youku/service/download/v2/Errors$UnableToFetchVideoInfo;
.source "Errors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Wfn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FetchVideoInfoError"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/youku/service/download/v2/Errors$UnableToFetchVideoInfo;-><init>(Ljava/lang/Exception;)V

    .line 149
    return-void
.end method
