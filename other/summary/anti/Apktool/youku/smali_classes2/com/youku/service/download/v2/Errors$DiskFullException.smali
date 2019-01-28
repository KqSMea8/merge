.class public Lcom/youku/service/download/v2/Errors$DiskFullException;
.super Lcom/youku/service/download/v2/Errors$UnableToWriteFile;
.source "Errors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Wfn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DiskFullException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 182
    invoke-direct {p0, p1}, Lcom/youku/service/download/v2/Errors$UnableToWriteFile;-><init>(Ljava/lang/String;)V

    .line 183
    return-void
.end method
