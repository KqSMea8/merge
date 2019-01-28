.class public Lcom/alibaba/aliweex/cache/PackageRepository$RequestRemotePackageFailedException;
.super Ljava/lang/RuntimeException;
.source "PackageRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Gwb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestRemotePackageFailedException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 341
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 342
    return-void
.end method
