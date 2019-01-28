.class public Lc8/bH;
.super Ljava/lang/Object;
.source "WVZipSecurityManager.java"


# instance fields
.field verifyError:I

.field verifyResTime:J

.field verifyTime:J


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    const/4 v0, 0x0

    iput v0, p0, Lc8/bH;->verifyError:I

    .line 220
    iput-wide v2, p0, Lc8/bH;->verifyResTime:J

    .line 221
    iput-wide v2, p0, Lc8/bH;->verifyTime:J

    return-void
.end method
