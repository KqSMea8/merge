.class public Lcom/youku/service/download/v2/Errors$MalformedVideoInfo;
.super Lcom/youku/service/download/v2/Errors$UnableToFetchVideoInfo;
.source "Errors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Wfn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MalformedVideoInfo"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/youku/service/download/v2/Errors$UnableToFetchVideoInfo;-><init>(Ljava/lang/String;)V

    .line 143
    return-void
.end method
