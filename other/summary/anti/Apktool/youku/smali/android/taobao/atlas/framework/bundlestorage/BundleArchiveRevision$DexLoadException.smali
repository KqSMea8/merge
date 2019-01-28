.class public Landroid/taobao/atlas/framework/bundlestorage/BundleArchiveRevision$DexLoadException;
.super Ljava/lang/RuntimeException;
.source "BundleArchiveRevision.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/uy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DexLoadException"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/String;

    .prologue
    .line 660
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 661
    return-void
.end method
