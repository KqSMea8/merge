.class public Lcom/youku/service/download/v2/Errors$UnableToRenameFile;
.super Ljava/io/IOException;
.source "Errors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Wfn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnableToRenameFile"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;

    .prologue
    .line 187
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 188
    return-void
.end method
